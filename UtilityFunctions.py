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

## FOR ALT, VARIABLE FILENAME 
def tmpWriteFile(f,babyWrist,filteredInput,correction,rnnActivity,intActivity,motherWeights,time):

##    f.write(str(time) + ' ' + 'BABY_WRIST' + ' ' + str(babyWrist[0]) + ' ' + str(babyWrist[1]) + ' ' + str(babyWrist[2]) + "\n")
##    f.write(str(time) + ' ' + 'filteredInput' + ' ' + str(filteredInput[0]) + ' ' + str(filteredInput[1]) + ' ' + str(filteredInput[2]) + "\n")
##    f.write(str(time) + ' ' + 'correction' + ' ' + str(correction[0]) + ' ' + str(correction[1]) + ' ' + str(correction[2]) + "\n")
##    f.write(str(time) + ' ' + 'rnnActivity' + ' ' + str(rnnActivity[0]) + ' ' + str(rnnActivity[1]) + ' ' + str(rnnActivity[2]) + "\n")
##    f.write(str(time) + ' ' + 'intActivity' + ' ' + str(intActivity[0]) + ' ' + str(intActivity[1]) + ' ' + str(intAcctivity[2]) + "\n")
##    f.write(str(time) + ' ' + 'motherWeights' + ' ' + str(motherWeights[0]) + ' ' + str(motherWeights[1]) + ' ' + str(motherWeights[2]) + "\n")

    return

## IMPROVE
def rnnTrain():
    #Training routine for the RNN
    from pybrain.tools.shortcuts import buildNetwork
    from pybrain.supervised.trainers import BackpropTrainer
    from pybrain.structure.networks import RecurrentNetwork
    from pybrain.datasets import SequentialDataSet
    from pybrain.structure.modules import LSTMLayer
    from pybrain.datasets.sequential import SequentialDataSet

    ds = SequentialDataSet(3,3)
    #Sequence 1 (Real)
    ds.newSequence()
    ds.appendLinked([0, 0, 0],(1,0,0))
    ds.appendLinked([0.1, 0.05, 0],(1,0,0))
    ds.appendLinked([0.2, 0.1, 0],(1,0,0))
    ds.appendLinked([0.28, 0.15, 0],(1,0,0))
    ds.appendLinked([0.37, 0.2, 0],(1,0,0))
    ds.appendLinked([0.46, 0.25, 0],(1,0,0))
    ds.appendLinked([0.55, 0.3, 0],(1,0,0))
    ds.appendLinked([0.64, 0.35, 0],(1,0,0))
    ds.appendLinked([0.73, 0.4, 0],(1,0,0))
    ds.appendLinked([0.82, 0.46, 0],(1,0,0))
    ds.appendLinked([0.91, 0.52, 0],(1,0,0))
    ds.appendLinked([1.00, 0.58, 0],(1,0,0))
    ds.appendLinked([1.08, 0.65, 0],(1,0,0))
    ds.appendLinked([1.16, 0.72, 0],(1,0,0))
    ds.appendLinked([1.22, 0.80, 0],(1,0,0))
    ds.appendLinked([1.28, 0.88, 0],(1,0,0))
    ds.appendLinked([1.33, 0.96, 0],(1,0,0))
    ds.appendLinked([1.38, 1.04, 0],(1,0,0))
    ds.appendLinked([1.43, 1.12, 0],(1,0,0))
    
    #Sequence 2 (Dummy)
    ds.newSequence()
    ds.appendLinked([0, 0, 0],(0,1,0))
    ds.appendLinked([0, 0.03, 0.1],(0,1,0))
    ds.appendLinked([0, 0.06, 0.2],(0,1,0))
    ds.appendLinked([0, 0.09, 0.3],(0,1,0))
    ds.appendLinked([0, 0.12, 0.4],(0,1,0))
    ds.appendLinked([0, 0.15, 0.5],(0,1,0))
    ds.appendLinked([0, 0.18, 0.6],(0,1,0))
    ds.appendLinked([0, 0.21, 0.7],(0,1,0))
    ds.appendLinked([0, 0.24, 0.8],(0,1,0))
    ds.appendLinked([0, 0.27, 0.9],(0,1,0))

    #Sequence 3 (Dummy)
    ds.newSequence()
    ds.appendLinked([0, 0, 0],(0,0,1))
    ds.appendLinked([0.1, 0, 0.03],(0,0,1))
    ds.appendLinked([0.2, 0, 0.06],(0,0,1))
    ds.appendLinked([0.3, 0, 0.09],(0,0,1))
    ds.appendLinked([0.4, 0, 0.12],(0,0,1))
    ds.appendLinked([0.5, 0, 0.15],(0,0,1))
    ds.appendLinked([0.6, 0, 0.18],(0,0,1))
    ds.appendLinked([0.7, 0, 0.21],(0,0,1))
    ds.appendLinked([0.8, 0, 0.24],(0,0,1))
    ds.appendLinked([0.9, 0, 0.27],(0,0,1))

    net = buildNetwork(3, 8, 3, bias=True, recurrent=True, hiddenclass=LSTMLayer)
    trainer = BackpropTrainer(net,ds)
    trainer.trainEpochs(1000)
    
    return net
                        
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
    idx = input < input.max()
    input[idx] = 0
    return input

def rnnTrainAUX(data):
    import numpy as np
    from pybrain.tools.shortcuts import buildNetwork
    from pybrain.supervised.trainers import BackpropTrainer
    from pybrain.structure.networks import RecurrentNetwork
    from pybrain.datasets import SequentialDataSet
    from pybrain.structure.modules import LSTMLayer
    from pybrain.datasets.sequential import SequentialDataSet

    ds = SequentialDataSet(3,3)
    s = np.size(input) / 9
    
    ds.newSequence()
    for idx1 in range(s):
        ds.appendLinked(data[idx1],(1,0,0))

    ds.newSequence()
    for idx2 in range(s):
        ds.appendLinked(data[idx2+29],(0,1,0))

    ds.newSequence()
    for idx3 in range(s):
        ds.appendLinked(data[idx3+29+29],(0,0,1))

    net = buildNetwork(3, 8, 3, bias=True, recurrent=True, hiddenclass=LSTMLayer)
    trainer = BackpropTrainer(net,ds)
    trainer.trainEpochs(1000)
    
    return net

                        
def rnnFilterAUX(rawData):
    import numpy as np
    
    raw1 = rawData[0]
    correction1 = raw1[0]
    filterIn = raw1 - correction1
                        
    raw2 = rawData[1]
    correction2 = raw2[0]
    tmp1 = raw2 - correction2
    filterIn = np.row_stack([filterIn,tmp1])

                        
    raw3 = rawData[2]
    correction3 = raw3[0]
    tmp2 = raw3 - correction3        
    filterIn = np.row_stack([filterIn,tmp2])
                        
    return filterIn

