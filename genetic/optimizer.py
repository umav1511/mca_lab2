import os
import re
import subprocess
import numpy as np
from scipy.optimize import minimize

def objective(x):
        issue=x[0]
        alu=x[1]
        mul=x[2]
        mem=x[3]
        reg=x[4]
        breg=x[5]
        returnValue=subprocess.check_output(['./optimizer.sh',(str)(issue),(str)(alu),(str)(mul),(str)(mem),(str)(reg),(str)(breg)])
        lines=returnValue.split(b'\n')
        for line in lines:
                if re.search('Execution Cycles:',(str)(line)):
                        return [(int)(datalines) for datalines in line.split() if datalines.isdigit()][0]

def constraintArea(x):
	area=(x[1]*3273)+(x[2]*40614)+(x[3]*1500)+(412.3125*x[4]*(pow((x[0]/4),2)))+((8*258)/x[5])
	max_area=(4*3273)+(4*40614)+(4*1500)+(412.3125*32*(pow((4/4),2)))+((8*258)/8)
	return max_area-area

x0=[4,4,4,4,32,4] 

bound_issue=(2,4)
bound_alu=(2,4)
bound_mul=(2,4)
bound_mem=(2,4)
bound_reg=(25,32)
bound_breg=(2,4)
constraint1={'type':'ineq','fun':constraintArea}
cons=[constraint1]
bnds=(bound_issue,bound_alu,bound_mul,bound_mem,bound_reg,bound_breg)
sol = minimize(objective,x0,method='SLSQP',bounds=bnds,constraints=cons)
print (sol)


