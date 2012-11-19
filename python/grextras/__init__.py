# Copyright (C) by Josh Blum. See LICENSE.txt for licensing information.

from GrExtras_Misc import *
from GrExtras_Ops import *
from GrExtras_Sources import *

import gras

class VectorSource(gras.Block):
    def __init__(self, out_sig, vec):
        gras.Block.__init__(self, name='VectorSource', out_sig=[out_sig])
        self._vec = vec

    def work(self, ins, outs):
        num = min(len(outs[0]), len(self._vec))
        outs[0][:num] = self._vec[:num]
        self.produce(0, num)
        self._vec = self._vec[num:]
        if not self._vec:
            self.mark_done()

class VectorSink(gras.Block):
    def __init__(self, in_sig):
        gras.Block.__init__(self, name='VectorSink', in_sig=[in_sig])
        self._vec = list()

    def data(self):
        return tuple(self._vec)

    def work(self, ins, outs):
        self._vec.extend(ins[0].copy())
        self.consume(0, len(ins[0]))