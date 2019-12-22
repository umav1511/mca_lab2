import os
import re
import math
import subprocess
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
print ("configuration,cyc,stall,bun,syl,nop,iacc,imiss,dracc,drmiss,dwacc,dwmiss")
for i in dir:
	headings=i.split('.')
	if re.search('results',i):
		headings.remove('results')
	if len(headings) > 1:
		os.system('touch script_result/'+i+'/temp')
		os.system('cat script_result/'+i+'/*.log > script_result/'+i+'/temp')
		headings=i.split('.')
		if re.search('results',i):
			headings.remove('results')
		if len(headings) > 1:
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
			print (':'.join(headings),end=',')
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
