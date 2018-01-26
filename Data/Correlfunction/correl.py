#!/usr/bin/python
# -*- coding: utf-8 -*-

import math

thetas = [0.2,0.01]

print 'VARIABLES= "x" "y" "z"'
print 'ZONE T="f1"'
print 'I=40, J=20, K=1, F=POINT'

for i in range(-10,10):
  for j in range(-20,20):
    summe = 0.0
    summe = summe + thetas[0]*(i*i)
    summe = summe + thetas[1]*(j*j)
    erg = math.exp(-0.5*summe)
    print j," ",i," ",erg
    
    
#print 'VARIABLES= "x" "y" '
#print 'ZONE T="f1"'
#print 'I=40, J=1, K=1, F=POINT'

#for i in range(-20,20):
  ##for j in range(-20,20):
    #summe = 0.0
    #summe = summe + thetas[0]*(i*i)
    ##summe = summe + thetas[1]*(j*j)
    #erg = math.exp(-0.5*summe)
    ##print j," ",i," ",erg
    #print i," ",erg