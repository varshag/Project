def rnnTrainAUX(data):
    from pybrain.tools.shortcuts import buildNetwork
    from pybrain.supervised.trainers import BackpropTrainer
    from pybrain.structure.networks import RecurrentNetwork
    from pybrain.datasets import SequentialDataSet
    from pybrain.structure.modules import LSTMLayer
    from pybrain.datasets.sequential import SequentialDataSet
    import numpy as np
    
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
