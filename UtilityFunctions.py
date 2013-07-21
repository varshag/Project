def parseMessage(animMessage, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead):
    animMessageAsList = animMessage.split(' ')
    print "got message ", animMessageAsList
    i = 0
    momCoordsSet = 0
    babyCoordsSet = 0
    while(momCoordsSet != 1 and babyCoordsSet != 1):
        if(i < len(animMessageAsList) and animMessageAsList[i] == 'MOTHER_COORDINATES'):
            print "setting mother coordinates at index ", i
            i = i + 1
            coordsSet = 0;
            wristSet = 0;
            shoulderSet = 0;
            elbowSet = 0;
            headSet = 0;
            while(coordsSet != 1):
                    print "Setting Mother Coordinates at index ", i
                    print animMessageAsList[i]
                    if(i < len(animMessageAsList) and animMessageAsList[i] == 'WRIST'):
                        i = i + 1
                        for k in range(1,4):
                            motherWrist.append(float(animMessageAsList[i]))
                            i = i + 1
                        wristSet = 1
                    if(i < len(animMessageAsList) and animMessageAsList[i] == 'SHOULDER'):
                        i = i + 1
                        for k in range(1,4):
                            motherShoulder.append(float(animMessageAsList[i]))
                            i = i + 1
                        shoulderSet = 1
                    if(i < len(animMessageAsList) and animMessageAsList[i] == 'ELBOW'):
                        i = i + 1
                        for k in range(1,4):
                            motherElbow.append(float(animMessageAsList[i]))
                            i = i + 1
                        elbowSet = 1
                    if(i < len(animMessageAsList) and animMessageAsList[i] == 'HEAD'):
                        i = i + 1
                        for k in range(1,4):
                            motherHead.append(float(animMessageAsList[i]))
                            i = i + 1
                        headSet = 1
                    if(wristSet and elbowSet and shoulderSet and headSet):
                        coordsSet = 1
                        momCoordsSet = 1
        if(i < len(animMessageAsList) and animMessageAsList[i] == 'BABY_COORDINATES'):
            i = i + 1
            coordsSet = 0;
            wristSet = 0;
            shoulderSet = 0;
            elbowSet = 0;
            headSet = 0;
            while(coordsSet != 1):
                print "Setting baby Coordinates at index ", i
                if(i < len(animMessageAsList) and animMessageAsList[i] == 'WRIST'):
                    i = i + 1
                    for k in range(1,4):
                        babyWrist.append(float(animMessageAsList[i]))
                        i = i + 1
                    wristSet = 1
                if(i < len(animMessageAsList) and animMessageAsList[i] == 'SHOULDER'):
                    i = i + 1
                    for k in range(1,4):
                        babyShoulder.append(float(animMessageAsList[i]))
                        i = i + 1
                    shoulderSet = 1
                if(i < len(animMessageAsList) and animMessageAsList[i] == 'ELBOW'):
                    i = i + 1
                    for k in range(1,4):
                        babyElbow.append(float(animMessageAsList[i]))
                        i = i + 1
                    elbowSet = 1
                if(i < len(animMessageAsList) and animMessageAsList[i] == 'HEAD'):
                    i = i + 1
                    for k in range(1,4):
                        babyHead.append(float(animMessageAsList[i]))
                        i = i + 1
                    headSet = 1
                if(wristSet and elbowSet and shoulderSet and headSet):
                    coordsSet = 1
                    babyCoordsSet = 1
    return

def writeReceivedCoordinatesToFile(file, motherWrist, motherShoulder, motherElbow, motherHead, babyWrist, babyShoulder, babyElbow, babyHead, time):

    file.write(str(time) + ' ' + 'MOTHER_WRIST' + ' ' + str(motherWrist[0]) + ' ' + str(motherWrist[1]) + ' ' + str(motherWrist[2]) + "\n")
    file.write(str(time) + ' ' + 'MOTHER_SHOULDER' + ' ' + str(motherShoulder[0]) + ' ' + str(motherShoulder[1]) + ' ' + str(motherShoulder[2]) + "\n")
    file.write(str(time) + ' ' + 'MOTHER_ELBOW' + ' ' + str(motherElbow[0]) + ' ' + str(motherElbow[1]) + ' ' + str(motherElbow[2]) + "\n")
    file.write(str(time) + ' ' + 'MOTHER_HEAD' + ' ' + str(motherHead[0]) + ' ' + str(motherHead[1]) + ' ' + str(motherHead[2]) + "\n")


    file.write(str(time) + ' ' + 'BABY_WRIST' + ' ' + str(babyWrist[0]) + ' ' + str(babyWrist[1]) + ' ' + str(babyWrist[2]) + "\n")
    file.write(str(time) + ' ' + 'BABY_SHOULDER' + ' ' + str(babyShoulder[0]) + ' ' + str(babyShoulder[1]) + ' ' + str(babyShoulder[2]) + "\n")
    file.write(str(time) + ' ' + 'BABY_ELBOW' + ' ' + str(babyElbow[0]) + ' ' + str(babyElbow[1]) + ' ' + str(babyElbow[2]) + "\n")
    file.write(str(time) + ' ' + 'BABY_HEAD' + ' ' + str(babyHead[0]) + ' ' + str(babyHead[1]) + ' ' + str(babyHead[2]) + "\n")

    return

#filters rnn input by correcting all to 0 at begining of sequence
def rnnFilter(rawIn,correction):
    filterIn = correction + rawIn
    return filterIn

## IMPROVE
def motherLearnWeights(motherWeights):
    motherWeights[0] = motherWeights[0] + 1
    return motherWeights

## REPLACE WITH COMPETITION
def compInt(input):
    import numpy as np
    s = float(input.sum())
    idx = input < input.max()
    input[idx] = 0
    input = np.divide(input,s+1)
    return input
