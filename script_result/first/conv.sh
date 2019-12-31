#!/bin/bash                                                                                                                                                                                               
for a in '11000000' '11111111'                                                                                                                                                                          
do                                                                                                                                                                                                        
for b in '1000' '1100'                                                                                                                                                                                    
do                                                                                                                                                                                                        
for c in 2 4 8                                                                                                                                                                                            
do                                                                                                                                                                                                        
for d in 2 4 8                                                                                                                                                                                            
do                                                                                                                                                                                                        
temp='results.'$a'.'$b'.'$c'.'$d'k'                                                                                                                                                                       
temp_t='results.'$a'.'$b'.'$c'.'$d'k.'$d'k'                                                                                                                                                               
if [[ -d $temp ]];then                                                                                                                                                                                    
mv $temp $temp_t                                                                                                                                                                                         
#echo $temp_t                                                                                                                                                                                              
fi                                                                                                                                                                                                        
done                                                                                                                                                                                                      
done                                                                                                                                                                                                      
done                                                                                                                                                                                                      
done             
