import numpy as np
from pybrain.tools.shortcuts import buildNetwork
from pybrain.supervised.trainers import BackpropTrainer
from pybrain.structure.networks import RecurrentNetwork
from pybrain.datasets import SequentialDataSet
from pybrain.structure.modules import LSTMLayer
from pybrain.datasets.sequential import SequentialDataSet
import pickle

#######
#
# NOTE: FEATURE-BASED RNN
# additional inputs + distributed output
#
#######


def rnnFilter(rawData):
    import numpy as np

    raw1 = rawData[0] # first 'block' of raw data
    correction1 = raw1[0] # first 'row' of first block of raw data
    filterIn = raw1 - correction1 # correction applied across all of first block of raw data

    raw2 = rawData[1]
    correction2 = raw2[0]
    tmp1 = raw2 - correction2
    filterIn = np.row_stack([filterIn,tmp1])


    raw3 = rawData[2]
    correction3 = raw3[0]
    tmp2 = raw3 - correction3
    filterIn = np.row_stack([filterIn,tmp2])

    return filterIn

###
#
# NOTE: extend beyond 'localist' output, consider distributed
#
###
def rnnTrain(data):

    ds = SequentialDataSet(3,3)
    s = np.size(input) / 9

    ds.newSequence()
    for idx1 in range(s):
        ds.appendLinked(data[idx1],(1,0,0))

    ds.newSequence()
    for idx2 in range(s):
        ds.appendLinked(data[idx2+s],(0,1,0))

    ds.newSequence()
    for idx3 in range(s):
        ds.appendLinked(data[idx3+s+s],(0,0,1))

    net = buildNetwork(3, 8, 3, bias=True, recurrent=True, hiddenclass=LSTMLayer)
    trainer = BackpropTrainer(net,ds)
    trainer.trainEpochs(1000)

    return net

# Real action
###
#
# NOTE: extend beyond 'baby_wrist', consider hand-object relation
#
###
arr = np.array([0.0,0.0,0.0])
with open("trainer_babyTrajectory.txt") as fileObj:
    for line in fileObj:
            lineParse = line.split()
            if(lineParse[1] == "MOTHER_WRIST"):
                # saves mother_wrist coord
                tmpMW = np.asarray([0.0,0.0,0.0])
                tmpMW[0] = float(lineParse[2])
                tmpMW[1] = float(lineParse[3])
                tmpMW[2] = float(lineParse[4])
                #arr = np.row_stack([arr,tmpMW])

            elif(lineParse[1] == "BABY_WRIST"):
                tmp = np.asarray([0.0,0.0,0.0])
                tmp[0] = float(lineParse[2])
                tmp[1] = float(lineParse[3])
                tmp[2] = float(lineParse[4])
                #tmp[3] = float(tmp[0] - tmpMW[0])
                #tmp[4] = float(tmp[0] - tmpMW[0])
                #tmp[5] = float(tmp[0] - tmpMW[0])
                arr = np.row_stack([arr,tmp])
                ##
                #
                # ABOVE GIVES BABY_WRIST
                #
                ##
realAct = arr[3:]

# Dummy action 1
arr2 = np.array([0.0,0.0,0.0])
with open("trainer_babyTrajectory_Dummy.txt") as fileObj2:
    for line2 in fileObj2:
            lineParse2 = line2.split()
            if(lineParse2[1] == "BABY_WRIST"):
                tmp2 = np.asarray([0.0,0.0,0.0])
                tmp2[0] = float(lineParse2[2])
                tmp2[1] = float(lineParse2[3])
                tmp2[2] = float(lineParse2[4])
                arr2 = np.row_stack([arr2,tmp2])
                ##
                #
                # ABOVE GIVES BABY_WRIST
                #
                ##
dummy1 = arr2[3:]

# Dummy action 2
arr3 = np.array([0.0,0.0,0.0])
with open("trainer_babyTrajectory_Dummy2.txt") as fileObj3:
    for line3 in fileObj3:
            lineParse3 = line3.split()
            if(lineParse3[1] == "BABY_WRIST"):
                tmp3 = np.asarray([0.0,0.0,0.0])
                tmp3[0] = float(lineParse3[2])
                tmp3[1] = float(lineParse3[3])
                tmp3[2] = float(lineParse3[4])
                arr3 = np.row_stack([arr3,tmp3])
                ##
                #
                # ABOVE GIVES BABY_WRIST
                #
                ##
dummy2 = arr3[3:]
######

data = np.array([realAct,dummy1,dummy2])

input = rnnFilter(data)

net  = rnnTrain(input)

fileObject = open('netFile.txt','w')
pickle.dump(net,fileObject)
fileObject.close()