import win32pipe, win32file, time, operator
import UtilityFunctions as uf
import pybrain
import numpy as np
import matplotlib.pyplot as pyp
import time
import pickle

print "Starting Mommy Brain Simulation"

## Set global variables for initialization and checking
MOTHER_INITIAL_POSITION = [6.272, 12.511, 8.828]
BABY_INITIAL_POSITION = [-8.595, 7.843, 7.813]
REACH_THRESHOLD = 8
GESTURE_THRESHOLD = 10

p = win32pipe.CreateNamedPipe( r'\\.\pipe\MommyBrainPipe',
	win32pipe.PIPE_ACCESS_DUPLEX,
	win32pipe.PIPE_TYPE_MESSAGE | win32pipe.PIPE_WAIT,
	1, 65536, 65536, 30000000, None )

win32pipe.ConnectNamedPipe(p, None)
simulationTime = 0
numEpisodes = 0

fileObj = open('netFile.txt','r')
net = pickle.load(fileObj)
print "Network Loaded"
motherWeights = np.array([1,1,1])

while(numEpisodes < 9):
    numEpisodes = numEpisodes + 1
    motherEpisodeStatus = 'TO_START'
    runEpisode = 1
    episodeTime = 0
    motherRNNFlag = 1
    motherIntFlag = 0
    motherFile = open('motherTrajectory_Episode' + str(numEpisodes) + '.txt', 'w')
    ##########
    timer2 = 0
    timer3 = 0
    rnnActivity = np.array([0,0,0])
    rnnActivityAUX = np.array([0,0,0])
    correction = np.array([0,0,0])
    net.reset()
    intActivity = np.array([0,0,0])
    prevHead = [0,0,0]
    ##########
    while(runEpisode == 1):
        ## Reset / Update
        episodeTime = episodeTime + 1
        simulationTime = simulationTime + 1
        motherWrist = []
        motherShoulder = []
        motherElbow = []
        motherHead = []
        babyWrist = []
        babyShoulder = []
        babyElbow = []
        babyHead = []
        ## Receive / Parse message
        animMessage = win32file.ReadFile(p, 4096)[1]
        uf.parseMessage(animMessage, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead)
        uf.writeReceivedCoordinatesToFile(motherFile, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead, simulationTime)

        # Manages decision
        if(motherEpisodeStatus == 'TO_START'):
            messageToSend = 'INIT ' + str(MOTHER_INITIAL_POSITION[0]) + ' ' + str(MOTHER_INITIAL_POSITION[1]) + ' ' + str(MOTHER_INITIAL_POSITION[2]) + ' ' + str(simulationTime)
            motherEpisodeStatus = 'INITIALIZED'
            print "Mother TO_START"
        elif(motherEpisodeStatus == 'INITIALIZED'):
            messageToSend = 'DO_NOTHING'
            motherEpisodeStatus = 'WATCHING'
            babyReachTarget = motherWrist
            print "Mother INITIALIZED"
        elif(motherEpisodeStatus == 'WATCHING'):
            diffHead = map(operator.sub, babyHead, prevHead)
            if(diffHead[0] != 0 or diffHead[1] != 0 or diffHead[2] != 0):
                prevHead = babyHead
            elif(motherHead[0] - babyHead[0] <= GESTURE_THRESHOLD):
                if(motherRNNFlag == 1):
                    motherRNNFlag = 0
                    correction = np.array([0,0,0]) - babyWrist
                    baWristInit = np.array([babyWrist[0],babyWrist[1],babyWrist[2]])
                else:
                    filteredInput = uf.rnnFilter(babyWrist,correction)
                    rnnActivity = net.activate(filteredInput)
                    tanhRNN = np.tanh(rnnActivity)
                    rnnActivityAUX = np.row_stack((rnnActivityAUX,tanhRNN))
                    rawIntInput = tanhRNN * motherWeights
                    compInput = uf.compInt(rawIntInput)
                    intActivity = compInput + intActivity
                    #if(numEpisodes == 9):
                        #pyp.plot(rnnActivityAUX)
                        #pyp.show()
            # To tell mother when to respond
            if(intActivity[0] < 10) and (babyReachTarget[0] - babyWrist[0] > 0.5):
                messageToSend = 'DO_NOTHING'
            else:
                messageToSend = 'DO_NOTHING'
                motherEpisodeStatus = 'RESPOND'
                #pyp.plot(intActivity)
                #pyp.show()
                if(intActivity[0] >= 10):
                    motherIntFlag = 1
                    baShoulderInit = np.array([babyShoulder[0],babyShoulder[1],babyShoulder[2]])
        elif(motherEpisodeStatus == 'RESPOND'):
            timer2 = timer2 + 1
            print "MOTHER RESPOND"
            if(timer2 < 25):
                motherWalkResponse = np.array((babyHead[0] + 4) - motherHead[0])
                if(motherIntFlag == 1):
                    motherRecResponse = np.array(baShoulderInit - motherWrist)
                    messageToSend = 'RESPOND' + ' ' + str(motherWalkResponse /10) + ' ' + str(0) + ' ' + str(0) + ' ' + str(simulationTime) + ' ' + str(motherRecResponse[0] /5) + ' ' + str(motherRecResponse[1] /5) + ' ' + str(motherRecResponse[2] /5)
                else:
                    motherPullResponse = np.array(baWristInit - motherWrist)
                    messageToSend = 'RESPOND' + ' ' + str(motherWalkResponse /10) + ' ' + str(0) + ' ' + str(0) + ' ' + str(simulationTime) + ' ' + str(motherPullResponse[0] /10) + ' ' + str(motherPullResponse[1] /10) + ' ' + str(motherPullResponse[2] /10)
                    if(timer2 == 10 and numEpisodes == 2):
                        motherIntFlag = 1
                        baShoulderInit = np.array([babyShoulder[0],babyShoulder[1],babyShoulder[2]])
                    elif(timer2 == 5 and numEpisodes == 3):
                        motherIntFlag = 1
                        baShoulderInit = np.array([babyShoulder[0],babyShoulder[1],babyShoulder[2]])
            else:
                messageToSend = 'DO_NOTHING'
                motherEpisodeStatus = 'END'
        elif(motherEpisodeStatus == 'END'):
            print "MOTHER END"
            messageToSend = 'DO_NOTHING'
            timer3 = timer3 +1
            if(timer3 > 30):
                runEpisode = 0
                motherFile.close()
        win32file.WriteFile(p, bytearray(messageToSend, 'utf-8'))
    if(numEpisodes < 9):
            #pyp.plot(rnnActivityAUX)
            #pyp.show()
            motherWeights = uf.motherLearnWeights(motherWeights)
            #motherFile.close()

## End program / pipes
animMessage = win32file.ReadFile(p, 4096)[1]
print("last co-ordinates received")
#uf.parseMessage(animMessage, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead)
#uf.writeReceivedCoordinatesToFile(motherFile, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead, simulationTime)
win32file.WriteFile(p, bytearray('STOP', 'utf-8'))
#motherFile.close()

#pyp.plot(rnnActivityAUX)
#pyp.show()

win32file.CloseHandle(p)
