#!/bin/bash                                                                                                                                                                                               
for a in '1100:1100' '1111:1111' '1000:1000'                                                                                                                                                                         
do                                                                                                                                                                                                        
for b in '1000' '1100'                                                                                                                                                                                    
do                                                                                                                                                                                                        
for c in 2 4 8                                                                                                                                                                                            
do                                                                                                                                                                                                        
for d in 2 4 8                                                                                                                                                                                            
do                                                                                                                                                                                                        
temp='results.'$a'.'$c'.'$d'k'                                                                                                                                                                       
temp_t='results.'$a'.'$c'.'$d'k.'$d'k'                                                                                                                                                               
if [[ -d $temp ]];then                                                                                                                                                                                    
mv $temp $temp_t                                                                                                                                                                                         
#echo $temp_t                                                                                                                                                                                              
fi                                                                                                                                                                                                        
done                                                                                                                                                                                                      
done                                                                                                                                                                                                      
done                                                                                                                                                                                                      
done             
