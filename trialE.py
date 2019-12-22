import os
import re
import math
import subprocess
performance=0
energy =0.0
area=0.0
timing=False
nSlices=0
nDram=0
nSram=0
nDsp=0
dir=os.listdir('script_result/')
print ("configuration,area,energy,executionCycles,timing")
for i in dir:
	filename='script_result/'+i+'/energy.txt'
	#print ("accessing\t"+ filename)
	with open(filename) as fp:
		line=fp.readline()
		while line:
			if re.search('Average:',(str)(line)):
				energy=line.split()[1]
			line=fp.readline()