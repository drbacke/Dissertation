#!/usr/bin/env python

fileRows = open("kriging0_1_global_convergence_ultrarestart.dat").read().split("\n")

for i,f in enumerate(fileRows):
    print str(i) +"\t "+f
    
    