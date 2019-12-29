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
cyc=0.0
stall= 0.0
bun= 0.0
syl= 0.0
nop= 0.0
iacc=0.0
imiss= 0.0
dracc= 0.0
drmiss= 0.0
dwacc=0.0
dwmiss=0.0
dir=os.listdir('script_result/')
print ("configuration,area,executionCycles,energy,timing,cyc,stall,bun,syl,nop,iacc,imiss,dracc,drmiss,dwacc,dwmiss")
for i in dir:
	headings=i.split('.')
	if re.search('results',i):
		headings.remove('results')
	if len(headings) > 1:
		os.system('touch script_result/'+i+'/temp')
		os.system('cat script_result/'+i+'/*.log > script_result/'+i+'/temp')
		filename='script_result/'+i+'/performance.txt'
		#print ("accessing\t"+ filename)
		with open(filename) as fp:
			line=fp.readline()
			while line:
				if re.search('Average:',(str)(line)):
					performance=[(int)(datalines) for datalines in line.split() if datalines.isdigit()]
		#			print(performance)
				line=fp.readline()
		filename='script_result/'+i+'/energy.txt'
		#print ("accessing\t"+ filename)
		with open(filename) as fp:
			line=fp.readline()
			while line:
				if re.search('Average:',(str)(line)):
					energy=line.split()[1]
		#			print(energy)
				line=fp.readline()
		filename='script_result/'+i+'/area.txt'
		#print ("accessing\t"+ filename)
		with open(filename) as fp:
			line=fp.readline()
			while line:
				if re.search('Number of occupied Slices:',(str)(line)):
					nSlices=[(int)(datalines.replace(',','')) for datalines in line.split() if datalines.replace(',','').isdigit()]
					if len(nSlices) > 1:
						nSlices=nSlices[0]
				if re.search('Number of RAMB36E1/FIFO36E1s:',(str)(line)):
					nDram=[(int)(datalines.replace(',','')) for datalines in line.split() if datalines.replace(',','').isdigit()]
					if len(nDram) > 1:
						nDram=nDram[0]
				if re.search('Number of RAMB18E1/FIFO18E1s',(str)(line)):
					nSram=[(int)(datalines.replace(',','')) for datalines in line.split() if datalines.replace(',','').isdigit()]
					if len(nSram) > 1:
						nSram=nSram[0]
				if re.search('Number of DSP48E1s:',(str)(line)):
					nDsp=[(int)(datalines.replace(',','')) for datalines in line.split() if datalines.replace(',','').isdigit()]
					if len(nDsp) > 1:
						nDsp=nDsp[0]
				line=fp.readline()
		area=(0.5*nSlices) + (2.4*nDram) + (1.2*nSram) + (0.7*nDsp)
		filename='script_result/'+i+'/timing.txt'
		with open(filename) as fp:
			line=fp.readline()
			while line:
				if re.search('All timing constraints were met.',(str)(line)):
					timing=True
					break
				line=fp.readline()
		filename='script_result/'+i+'/temp'
		with open(filename) as fp:
			line=fp.readline()
			while line:
				if re.search('CYC:',(str)(line)):
					cyc+=[(int)(datalines) for datalines in line.split() if datalines.isdigit()][0]
				if re.search('STALL:',(str)(line)):
					stall+=[(int)(datalines) for datalines in line.split() if datalines.isdigit()][0]
				if re.search('BUN:',(str)(line)):
					bun+=[(int)(datalines) for datalines in line.split() if datalines.isdigit()][0]
				if re.search('SYL:',(str)(line)):
					syl+=[(int)(datalines) for datalines in line.split() if datalines.isdigit()][0]
				if re.search('NOP:',(str)(line)):
					nop+=[(int)(datalines) for datalines in line.split() if datalines.isdigit()][0]
				if re.search('IACC:',(str)(line)):
					iacc+=[(int)(datalines) for datalines in line.split() if datalines.isdigit()][0]
				if re.search('IMISS:',(str)(line)):
					imiss+=[(int)(datalines) for datalines in line.split() if datalines.isdigit()][0]
				if re.search('DRACC:',(str)(line)):
					dracc+=[(int)(datalines) for datalines in line.split() if datalines.isdigit()][0]
				if re.search('DWACC:',(str)(line)):
					dwacc+=[(int)(datalines) for datalines in line.split() if datalines.isdigit()][0]
				if re.search('DWMISS:',(str)(line)):
					dwmiss+=[(int)(datalines) for datalines in line.split() if datalines.isdigit()][0]
				if re.search('DRMISS:',(str)(line)):
					drmiss+=[(int)(datalines) for datalines in line.split() if datalines.isdigit()][0]
				line=fp.readline()
		print (':'.join(headings)+','),
		print ((str)(area)+','+(str)(performance[0])+','+(str)(energy)+','+(str)(timing)+','),
		print ((str)((int)(math.floor(cyc/15.0)))+','+(str)((int)(math.floor(stall/15.0)))+','+(str)((int)(math.floor(bun/15.0)))+','+(str)((int)(math.floor(syl/15.0)))+','+(str)((int)(math.floor(nop/15.0)))+','+(str)((int)(math.floor(iacc/15.0)))+','+(str)((int)(math.floor(imiss/15.0)))+','+(str)((int)(dracc/15.0))+','+(str)((int)(math.floor(drmiss/15.0)))+','+(str)((int)(math.floor(dwacc/15.0)))+','+(str)((int)(math.floor(dwmiss/15.0))))		
		os.system('rm script_result/'+i+'/temp')
		cyc=0.0
		stall= 0.0
		bun= 0.0
		syl= 0.0
		nop= 0.0
		iacc=0.0
		imiss= 0.0
		dracc= 0.0
		drmiss= 0.0
		dwacc=0.0
		dwmiss=0.0				