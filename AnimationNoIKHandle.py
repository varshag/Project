import maya.cmds as cmds
import operator
import win32pipe, win32file, time
##
mommyBrain = win32file.CreateFile( '\\\\.\\pipe\\MommyBrainPipe',
								win32file.GENERIC_READ | win32file.GENERIC_WRITE,
								win32file.FILE_SHARE_READ, None,
								win32file.OPEN_EXISTING,
								0, None )
babyBrain = win32file.CreateFile( '\\\\.\\pipe\\BabyBrainPipe',
								win32file.GENERIC_READ | win32file.GENERIC_WRITE,
								win32file.FILE_SHARE_READ, None,
								win32file.OPEN_EXISTING,
								0, None )
time = 0
simulationStatus = 'TO_START'
babySimulationStatus = 'TO_START'
mommySimulationStatus = 'TO_START'
##
while(simulationStatus != 'STOP'):
    ##
    cmds.currentTime(time, edit = True)
    cmds.select('mother_wrist')
    moWriCoord = cmds.xform(query = True, worldSpace = True, translation = True)
    cmds.select('mother_elbow')
    moElbCoord = cmds.xform(query = True, worldSpace = True, translation = True)
    cmds.select('mother_shoulder')
    moShoCoord = cmds.xform(query = True, worldSpace = True, translation = True)
    cmds.select('mother_head')
    moHeadCoord = cmds.xform(query = True, worldSpace = True, translation = True)
    messageToSend = ('MOTHER_COORDINATES' + ' ' + 'WRIST' + ' ' + str(moWriCoord[0]) + ' ' + str(moWriCoord[1]) + ' ' + str(moWriCoord[2]) + ' '
                    + 'ELBOW' + ' ' + str(moElbCoord[0]) + ' ' + str(moElbCoord[1]) + ' ' + str(moElbCoord[2]) + ' '
                    + 'SHOULDER' + ' ' + str(moShoCoord[0]) + ' ' + str(moShoCoord[1]) + ' ' + str(moShoCoord[2]) + ' '
                    + 'HEAD' + ' ' + str(moHeadCoord[0]) + ' ' + str(moHeadCoord[1]) + ' ' + str(moHeadCoord[2]))
    ##
    print "read mother coordinates"
    cmds.select('baby_wrist')
    babyWriCoord = cmds.xform(query = True, worldSpace = True, translation = True)
    cmds.select('baby_elbow')
    babyElbCoord = cmds.xform(query = True, worldSpace = True, translation = True)
    cmds.select('baby_shoulder')
    babyShoCoord = cmds.xform(query = True, worldSpace = True, translation = True)
    cmds.select('baby_head')
    babyHeadCoord = cmds.xform(query = True, worldSpace = True, translation = True)
    messageToSend = (messageToSend + ' ' + 'BABY_COORDINATES' + ' ' + 'WRIST' + ' ' + str(babyWriCoord[0]) + ' ' + str(babyWriCoord[1]) + ' ' + str(babyWriCoord[2]) + ' '
                    + 'ELBOW' + ' ' + str(babyElbCoord[0]) + ' ' + str(babyElbCoord[1]) + ' ' + str(babyElbCoord[2]) + ' '
                    + 'SHOULDER' + ' ' + str(babyShoCoord[0]) + ' ' + str(babyShoCoord[1]) + ' ' + str(babyShoCoord[2]) + ' '
                    + 'HEAD' + ' ' + str(babyHeadCoord[0]) + ' ' + str(babyHeadCoord[1]) + ' ' + str(babyHeadCoord[2]))
    print "read baby coordinates"
    ##
    if(babySimulationStatus != 'STOP'):
        win32file.WriteFile(babyBrain, bytearray(messageToSend, 'utf-8'))
        print "sent message to baby"
    if(mommySimulationStatus != 'STOP'):
        win32file.WriteFile(mommyBrain, bytearray(messageToSend, 'utf-8'))
        print "sent message to mommy"
    ##
    if(babySimulationStatus != 'STOP'):
        babyMessage = win32file.ReadFile(babyBrain, 16000)
        print "read message from baby ", babyMessage
    if(mommySimulationStatus != 'STOP'):
        motherMessage = win32file.ReadFile(mommyBrain, 16000)
        print "read message from mommy ", motherMessage
    bMessAsList = babyMessage[1].split(' ')
    mMessAsList = motherMessage[1].split(' ')
    print "mMessAsList: " + str(mMessAsList)
    ##
    bMessType = bMessAsList[0]
    mMessType = mMessAsList[0]
    ## Parse message from the baby Brain
    if(bMessType == 'START'):
        babySimulationStatus = 'RUNNING'
        print "starting baby simulation"
    elif(bMessType == 'INIT'):
        print "baby init"
    elif(bMessType == 'REACH'):
        x = float(bMessAsList[1])
        y = float(bMessAsList[2])
        z = float(bMessAsList[3])
        time = float(bMessAsList[4])
        cmds.currentTime(time, edit = True)
        cmds.select('baby_ikhandle')
        cmds.move(x,y,z,relative = True)
        cmds.setKeyframe(at = 'rz', t = time)
        print "baby reaching"
    elif(bMessType == 'RESET_ARM'):
        x = float(bMessAsList[1])
        y = float(bMessAsList[2])
        z = float(bMessAsList[3])
        time = float(bMessAsList[4])
        cmds.currentTime(time, edit = True)
        cmds.select('baby_ikhandle')
        cmds.move(x,y,z,relative = True)
        cmds.setKeyframe(at = 'rz', t = time)
        print " baby pulling"
        print "reset_MessageToSend"
    elif(bMessType == 'WALK'):
        x = float(bMessAsList[1])
        y = float(bMessAsList[2])
        z = float(bMessAsList[3])
        time = float(bMessAsList[4])
        cmds.currentTime(time, edit = True)
        cmds.select('baby_head')
        cmds.move(x,y,z,worldSpace = True)
        cmds.setKeyframe(at = 'tx', t = time)
        print "baby walking"
    elif(bMessType == 'STOP'):
        babySimulationStatus = 'STOP'
    ## Parse message from mommy Brain
    if(mMessType == 'START'):
         mommySimulationStatus = 'RUNNING'
         print "starting mommy simulation"
    elif(mMessType == 'INIT'):
        cmds.file('Test Script.mb',o=True,f=True)
        print "init scene"
    elif(mMessType == 'RESPOND'):
        x1 = float(mMessAsList[1])
        y1 = float(mMessAsList[2])
        z1 = float(mMessAsList[3])
        time = float(mMessAsList[4])
        cmds.currentTime(time, edit = True)
        cmds.select('mother_head')
        cmds.move(x1,y1,z1,relative = True)
        #
        x2 = float(mMessAsList[5])
        y2 = float(mMessAsList[6])
        z2 = float(mMessAsList[7])
        cmds.select('mother_ikhandle')
        cmds.move(x2,y2,z2,relative = True)
        #
        cmds.setKeyframe(at = 'tx', t = time)
        print "mother moving"
    elif(mMessType == 'STOP'):
         mommySimulationStatus = 'STOP'
    ##
    if(babySimulationStatus == 'START' or mommySimulationStatus == 'START'):
         simulationStatus = 'RUNNING'
    elif(babySimulationStatus == 'STOP' and mommySimulationStatus == 'STOP'):
         simulationStatus = 'STOP'
##
win32file.CloseHandle(mommyBrain)
win32file.CloseHandle(babyBrain)
