import win32pipe, win32file, time, operator
import UtilityFunctions as uf

print "Starting Training -- Dummy Action 2"
MOTHER_INITIAL_POSITION = [6.271829, 12.511145, 8.82793]
BABY_INITIAL_POSITION = [-8.654732, 7.842551, 7.813142]
REACH_THRESHOLD = 5

p = win32pipe.CreateNamedPipe( r'\\.\pipe\MommyBrainPipe', 
	win32pipe.PIPE_ACCESS_DUPLEX,
	win32pipe.PIPE_TYPE_MESSAGE | win32pipe.PIPE_WAIT,
	1, 65536, 65536, 30000000, None )

win32pipe.ConnectNamedPipe(p, None)

simulationStatus = 'TRAIN'
runSimulation = 1
episodeTime = 0

motherFile = open('trainer_motherTrajectory_Dummy2.txt', 'w')

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
    uf.writeReceivedCoordinatesToFile(motherFile, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead, episodeTime)

    episodeTime = episodeTime + 1

    if(simulationStatus == 'TRAIN'):
        messageToSend = 'MOVE_HEAD ' + str(MOTHER_INITIAL_POSITION[0]) + ' ' + str(MOTHER_INITIAL_POSITION[1]) + ' ' + str(MOTHER_INITIAL_POSITION[2]) + ' ' + str(episodeTime)
        simulationStatus = 'INITIALIZED'
        print "Initialized mother at initial position"
    elif (simulationStatus == 'INITIALIZED'):
        babyReachTarget = motherWrist
        messageToSend = 'DO_NOTHING'
        simulationStatus = 'WATCHING'
    elif(simulationStatus == 'WATCHING'):
        if episodeTime < 30:
            messageToSend = 'DO_NOTHING'
        else:
            messageToSend = 'DO_NOTHING'
            simulationStatus = 'TO_START'
            runSimulation = 0    

    win32file.WriteFile(p, bytearray(messageToSend, 'utf-8'))

uf.parseMessage(animMessage, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead)
uf.writeReceivedCoordinatesToFile(motherFile, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead, episodeTime)
win32file.WriteFile(p, bytearray('STOP', 'utf-8'))

motherFile.close()
print "End Training"        
win32file.CloseHandle(p)
