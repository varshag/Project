import win32pipe, win32file, time, operator
import UtilityFunctions as uf
import pybrain
import numpy as np
import matplotlib.pyplot as pyp
import time
import pickle

print "Starting Baby Brain Simulation"

## Set global variables for initialization and checking
MOTHER_INITIAL_POSITION = [6.272, 12.511, 8.828]
BABY_INITIAL_POSITION = [-8.595, 7.843, 7.813]
GESTURE_THRESHOLD = 10
REACH_THRESHOLD = 8

p = win32pipe.CreateNamedPipe( r'\\.\pipe\BabyBrainPipe',
	win32pipe.PIPE_ACCESS_DUPLEX,
	win32pipe.PIPE_TYPE_MESSAGE | win32pipe.PIPE_WAIT,
	1, 65536, 65536, 30000000, None )

win32pipe.ConnectNamedPipe(p, None)
simulationTime = 0
numEpisodes = 0
babyReachWeight = np.array([0.5,0.5])
#
babyShoulderBias = np.array([0,0,0])
babyVirtualTarget = np.array([0,0,0])
targetCoords1 = np.array([0,0,0])
targetCoords2 = np.array([0,0,0])
gestureFlag = False
#

while(numEpisodes < 9):
    numEpisodes = numEpisodes + 1
    babyEpisodeStatus = 'TO_START'
    runEpisode = 1
    flag = True
    episodeTime = 0
    babyFile = open('babyTrajectory_Episode' + str(numEpisodes) + '.txt', 'w')
    ##########
    timer2 = 0
    timer3 = 0
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
        babyReachCoords = np.array([0,0,0])
        babyPullCoords = np.array([0,0,0])
        ## Receive / Parse message
        animMessage = win32file.ReadFile(p, 4096)[1]
        uf.parseMessage(animMessage, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead)
        uf.writeReceivedCoordinatesToFile(babyFile, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead, simulationTime)

        ## Manages decisions
        if(babyEpisodeStatus == 'TO_START'):
            messageToSend = 'INIT ' + str(BABY_INITIAL_POSITION[0]) + ' ' + str(BABY_INITIAL_POSITION[1]) + ' ' + str(BABY_INITIAL_POSITION[2]) + ' ' + str(simulationTime)
            babyEpisodeStatus = 'INITIALIZED'
            print "BABY TO_START"

        elif(babyEpisodeStatus == 'INITIALIZED'):
            print "BABY INITIALIZED"
            #makes so baby always must walk at least a little
            if(motherHead[0] - babyHead[0] > GESTURE_THRESHOLD):
                babyEpisodeStatus = 'WALK'
                messageToSend = 'DO_NOTHING'
                moWristInit = np.array([motherWrist[0],motherWrist[1],motherWrist[2]])
        elif(babyEpisodeStatus == 'WALK'):
            print "BABY WALK"
            # indicates max distance can reach from
            if(gestureFlag == True):
                #can gesture, so impose gesture_threshold, not reach_threshold
                if(motherHead[0] - babyHead[0] > GESTURE_THRESHOLD):
                    messageToSend = 'WALK ' + str(babyHead[0] + 0.2) + ' ' + str(babyHead[1]) + ' ' + str(babyHead[2]) + ' ' + str(simulationTime)
                else:
                    messageToSend = 'DO_NOTHING'
                    babyEpisodeStatus = 'REACH'
                    babyReachTarget = motherWrist
                    baWristInit = np.array([babyWrist[0],babyWrist[1],babyWrist[2]])
            elif(motherHead[0] - babyHead[0] > REACH_THRESHOLD):
                messageToSend = 'WALK ' + str(babyHead[0] + 0.2) + ' ' + str(babyHead[1]) + ' ' + str(babyHead[2]) + ' ' + str(simulationTime)
            else:
                messageToSend = 'DO_NOTHING'
                babyEpisodeStatus = 'REACH'
                babyReachTarget = motherWrist
                baWristInit = np.array([babyWrist[0],babyWrist[1],babyWrist[2]])
        elif(babyEpisodeStatus == 'REACH'):
            print "BABY REACH"
            if(flag == True) and (babyReachTarget[0] - babyWrist[0] > 0.5):
                babyWrist = np.array(babyWrist)
                babyReachTarget = np.array(babyReachTarget)
                babyReachCoords = np.array(babyReachTarget - babyWrist) * babyReachWeight[0]
                if(numEpisodes == 1):
                    #babyVirtualTarget = babyReachTarget
                    #learnedVirtualTarget = babyVirtualTarget
                    #
                    babyShoulderBias = uf.setShoulderBias(babyShoulderBias,babyReachTarget,babyShoulder,babyWrist,numEpisodes,gestureFlag)
                    #
                #else:
                    #babyVirtualTarget = learnedVirtualTarget
                #babyVirtualTarget = np.array(babyVirtualTarget)
                #babyGestCoords = np.array(babyVirtualTarget - babyWrist) * babyReachWeight[1]
                #babyMotorError = (babyReachCoords + babyGestCoords)
                #
                babyVirtualTarget = uf.virtualMotorCorrection(babyShoulder,babyShoulderBias)
                babyGestCoords = np.array(babyVirtualTarget - babyWrist) * babyReachWeight[1]
                babyMotorError = (babyReachCoords + babyGestCoords)
                #
                messageToSend = 'REACH' + ' ' + str(babyMotorError[0] / 10) + ' ' + str(babyMotorError[1] /10) + ' ' + str(babyMotorError[2] /10) + ' ' + str(simulationTime)
                # child knows when mother starts to respond / move arm
                if(abs(sum(motherWrist) - sum(moWristInit)) > 0.2):
                    flag = False
                    babyReachWeight[1] = babyReachWeight[1] + 0.5
                    babyReachWeight = babyReachWeight / np.sum(babyReachWeight)
                    #learnedVirtualTarget = babyWrist
                    #
                    babyShoulderBias = uf.setShoulderBias(babyShoulderBias,babyReachTarget,babyShoulder,babyWrist,numEpisodes,gestureFlag)
                    #
                    if(babyReachWeight[1] > 0.8):
                        gestureFlag = True
            else:
                babyEpisodeStatus = 'RESET_ARM'
                messageToSend = 'DO_NOTHING'
        elif(babyEpisodeStatus == 'RESET_ARM'):
            print "BABY RESET_ARM"
            timer2 = timer2 + 1
            if(timer2 < 25):
                babyPullCoords = np.array(baWristInit - babyWrist)
                messageToSend = 'RESET_ARM' + ' ' + str(babyPullCoords[0] / 10) + ' ' + str(babyPullCoords[1] /10) + ' ' + str(babyPullCoords[2] /10) + ' ' + str(simulationTime)
            else:
                babyEpisodeStatus = 'END'
                messageToSend = 'DO_NOTHING'
        elif(babyEpisodeStatus == 'END'):
            print "BABY END"
            # wait until both stop moving, then end episode
            messageToSend = 'DO_NOTHING'
            timer3 = timer3 + 1
            if(timer3 > 30):
                runEpisode = 0
                babyFile.close()

        win32file.WriteFile(p, bytearray(messageToSend, 'utf-8'))

##
animMessage = win32file.ReadFile(p, 4096)[1]
win32file.WriteFile(p, bytearray('STOP', 'utf-8'))
print("Last message received")
win32file.CloseHandle(p)

