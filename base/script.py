import re
result=[]
resultcsv={}
areacsv={}
for a in range(1,5):
	for b in range(1,5):
		for c in range(1,5):
			for d in range(1,5):
				for e in range(5,66,10):
					for f in range(2,8,2):
						s="ta.log.000."
						append_it=(str)(a)+'.'+(str)(b)+'.'+(str)(c)+'.'+(str)(d)+'.'+(str)(e)+'.'+(str)(f)
						s+=append_it
						try:
							with open(s,"r") as myfile:
								data=myfile.readlines()
								for dataline in data:
									if re.search('Execution Cycles:',dataline):
										resultcsv[append_it]=[int(datalines) for datalines in dataline.split() if datalines.isdigit()]
										areacsv[append_it]=(str)(format((b*3273)+(c*40614)+(d*1500)+(412.3125*e*(pow((a/4),2)))+((8*258)/f),'0.3f'))
										#area=			   (x[1]*3273)+(x[2]*40614)+(x[3]*1500)+(412.3125*x[4]*(pow((x[0]/4),2)))+((8*258)/x[5])
						except:
							continue
print("ISSUE,ALU,MUL,MEM,REG,BREG,execution_cycles,Area")
for i in resultcsv.keys():
	for j in i.split("."):
		print(j,end=",")
	print(resultcsv[i][0],end=',')
	print(areacsv[i])

	