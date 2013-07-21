import win32pipe, win32file, time, operator
import UtilityFunctions as uf
import numpy as np

# ALT trainer_babyBrain

print "Starting Training -- Real Action"
MOTHER_INITIAL_POSITION = [6.271829, 12.511145, 8.82793]
BABY_INITIAL_POSITION = [-8.654732, 7.842551, 7.813142]
REACH_THRESHOLD = 5

p = win32pipe.CreateNamedPipe( r'\\.\pipe\BabyBrainPipe',
	win32pipe.PIPE_ACCESS_DUPLEX,
	win32pipe.PIPE_TYPE_MESSAGE | win32pipe.PIPE_WAIT,
	1, 65536, 65536, 30000000, None )

win32pipe.ConnectNamedPipe(p, None)

simulationStatus = 'TRAIN'
runSimulation = 1
episodeTime = 0

babyFile = open('trainer_babyTrajectory.txt', 'w')

while(runSimulation == 1):
    motherWrist = []
    motherShoulder = []
    motherElbow = []
    motherHead = []
    babyWrist = []
    babyShoulder = []
    babyElbow = []
    babyHead = []

    animMessage = win32file.ReadFile(p, 4096)[1]
    uf.parseMessage(animMessage, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead)
    uf.writeReceivedCoordinatesToFile(babyFile, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead, episodeTime)

    episodeTime = episodeTime + 1

    if (simulationStatus == 'TRAIN'):
        messageToSend = 'MOVE_HEAD ' + str(BABY_INITIAL_POSITION[0]) + ' ' + str(BABY_INITIAL_POSITION[1]) + ' ' + str(BABY_INITIAL_POSITION[2]) + ' ' + str(episodeTime)
        simulationStatus = 'INITIALIZED'
        print "Initialized baby to initial position"
    elif (simulationStatus == 'INITIALIZED'):
        babyReachTarget = motherWrist
        messageToSend = 'DO_NOTHING'
        simulationStatus = 'REACH'
    elif(simulationStatus == 'REACH'):
        if episodeTime < 30:
            babyWrist = np.array(babyWrist)
            babyReachTarget = np.array(babyReachTarget)
            babyReachCoords = np.array(babyReachTarget - babyWrist)
            messageToSend = 'MOVE' + ' ' + str(babyReachCoords[0] /10) + ' ' + str(babyReachCoords[1] /10) + ' ' + str(babyReachCoords[2] /10) + ' ' + str(episodeTime)
        else:
            simulationStatus = 'TO_START'
            messageToSend = 'DO_NOTHING'
            runSimulation = 0

    win32file.WriteFile(p, bytearray(messageToSend, 'utf-8'))

animMessage = win32file.ReadFile(p, 4096)[1]
uf.parseMessage(animMessage, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead)
uf.writeReceivedCoordinatesToFile(babyFile, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead, episodeTime)
win32file.WriteFile(p, bytearray('STOP', 'utf-8'))

babyFile.close()
print "End Training"
win32file.CloseHandle(p)
