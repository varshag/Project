import win32pipe, win32file, time, operator
import UtilityFunctions as uf
import pybrain
import numpy as np
import matplotlib.pyplot as pyp
import time
import pickle
#import trainRNN as tn
#NOTE: new/improved parsing/training not working embedded here, only stand-alone...
print "Starting Mommy Brain Simulation"
#net = uf.rnnTrain()
#net = tn.trainNet()
fileObj = open('netFile.txt','r')
net = pickle.load(fileObj)
print "Network Loaded"

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
##
simulationTime = 0
##
motherWeights = np.array([1,1,1])
##
numEpisodes = 0
while(numEpisodes < 2):
    numEpisodes = numEpisodes + 1
    motherEpisodeStatus = 'TO_START'
    runEpisode = 1
    flag = 1
    timer1 = 0
    timer2 = 0
    timer3 = 0
    episodeTime = 0
    ##
    rnnActivity = np.array([0,0,0])
    rnnActivityAUX = np.array([0,0,0])
    correction = np.array([0,0,0])
    net.reset()
    intActivity = np.array([0,0,0])
    ###tmpStr = 'motherTrajectory_Episode'+str(tmp)+'.txt'
    ###motherFile = open(tmpStr, 'w')
    motherFile = open('motherTrajectory_Episode1.txt', 'w')

    ##
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

        ## Manages decision
        if(motherEpisodeStatus == 'TO_START'):
            messageToSend = 'INIT ' + str(MOTHER_INITIAL_POSITION[0]) + ' ' + str(MOTHER_INITIAL_POSITION[1]) + ' ' + str(MOTHER_INITIAL_POSITION[2]) + ' ' + str(simulationTime)
            motherEpisodeStatus = 'INITIALIZED'

        elif(motherEpisodeStatus == 'INITIALIZED'):
            messageToSend = 'DO_NOTHING'
            motherEpisodeStatus = 'WATCHING'
            #
            babyReachTarget = motherWrist
            #

        elif(motherEpisodeStatus == 'WATCHING'):
            if(motherHead[0] - babyHead[0] > REACH_THRESHOLD): ###FIX
                print "mother watching"
            else:
                timer1 = timer1 + 1
                if(flag == 1):
                    correction = np.array([0,0,0]) - babyWrist
                    print "JUST ONCE"
                    flag = 0
                    baWristInit = np.array([babyWrist[0],babyWrist[1],babyWrist[2]])
                else:
                    filteredInput = uf.rnnFilter(babyWrist,correction)
                    rnnActivity = net.activate(filteredInput)
                    tanhRNN = np.tanh(rnnActivity)
                    rnnActivityAUX = np.row_stack((rnnActivityAUX,tanhRNN))
                    tmp = tanhRNN * motherWeights
                    tmp = uf.compInt(tmp)
                    intActivity = tmp + intActivity
                    #pyp.plot(rnnActivityAUX)
                    #pyp.show()
                    print "intActivity"

            ## To tell mother when to respond
            #if(timer1 < 40 and intActivity[0] < 40)
            if(timer1 < 50 and intActivity[0] < 50) and (babyReachTarget[0] - babyWrist[0] > 0.5):
                messageToSend = 'DO_NOTHING'
                print "DO_NOTHING -- if"
            else:
                messageToSend = 'DO_NOTHING'
                motherEpisodeStatus = 'RESPOND'
                #pyp.plot(intActivity)
                #pyp.show()
                print "DO_NOTHING -- else"

        # imposes a reach 'response' for 20 ts, then waits to end
        elif(motherEpisodeStatus == 'RESPOND'):
            timer2 = timer2 + 1
            print "respond"
            if(timer2 < 20):
                #
                motherPullResponse = np.array(baWristInit - motherWrist)
                messageToSend = 'RESPOND' + ' ' + str(motherHead[0] - 0.2) + ' ' + str(motherHead[1]) + ' ' + str(motherHead[2]) + ' ' + str(simulationTime) + ' ' + str(motherPullResponse[0] /10) + ' ' + str(motherPullResponse[1] /10) + ' ' + str(motherPullResponse[2] /10)
                #
            else:
                messageToSend = 'DO_NOTHING'
                motherEpisodeStatus = 'END'
        elif(motherEpisodeStatus == 'END'):
            # wait until both stop moving, then end episode
            messageToSend = 'DO_NOTHING'
            timer3 = timer3 +1
            if(timer3 > 30):
                runEpisode = 0
        win32file.WriteFile(p, bytearray(messageToSend, 'utf-8'))
    if(numEpisodes < 5):
            #pyp.plot(rnnActivityAUX)
            #pyp.show()
            motherWeights = uf.motherLearnWeights(motherWeights)
            motherFile.close()
            #tmpMotherFile.close()

## End program / pipes
uf.parseMessage(animMessage, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead)
uf.writeReceivedCoordinatesToFile(motherFile, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead, simulationTime)
win32file.WriteFile(p, bytearray('STOP', 'utf-8'))
motherFile.close()
#tmpMotherFile.close()

#pyp.plot(rnnActivityAUX)
#pyp.show()

win32file.CloseHandle(p)
