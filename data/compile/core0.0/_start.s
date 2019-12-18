# 1 "/home/user/workspace/assignment2/utils/_start.S"
# 1 "/home/user/workspace/rvex-rewrite/examples/src/rvex.h" 1
 




 
 
 

 
 




 













 
 
 















 
 
 


                                                                                                      



 
 
 






 
 
 






 
 
 





                                                                                                      
 
 
 









 
 
 














                                                                                                      





























                                                                                                      





























                                                                                                      





























                                                                                                      















 
 
 











                                                                                                      





























                                                                                                      





























                                                                                                      





























                                                                                                      






 
 
 



 
 
 














                                                                                                      









 
 
 



 
 
 











                                                                                                      















 
 
 



 
 
 



 
 
 
























 
 
 


                                                                                                      












 
 
 














                                                                                                      






 
 
 















 
 
 


                                                                                                      


















 
 
 








                                                                                                      






 
 
 




















                                                                                                      









 
 
 

















                                                                                                      






 
 
 






 
 
 






 
 
 


                                                                                                      



 
 
 






 
 
 






 
 
 





                                                                                                      
 
 
 
























 
 
 





























                                                                                                      












 
 
 














                                                                                                      















 
 
 






 
 
 


                                                                                                      



 
 
 









 
 
 











                                                                                                      












 
 
 






 
 
 





                                                                                                      
 
 
 


























                                                                                                      















 
 
 











                                                                                                      





























                                                                                                      
 
 
 


























                                                                                                      



 
 
 























                                                                                                      






 
 
 




















                                                                                                      









 
 
 

















                                                                                                      












 
 
 














                                                                                                      















 
 
 











                                                                                                      


















 
 
 








                                                                                                      





















 
 
 





                                                                                                      
























 
 
 


                                                                                                      



























 
 
 





























                                                                                                      
 
 
 


























                                                                                                      



 
 
 























                                                                                                      






 
 
 




















                                                                                                      









                                                                                                      
 
 
 

 

 


                                                                                                      
 



 



 



 



 







 




                        
 
 




















 
 




















# 1 "/home/user/workspace/assignment2/utils/_start.S" 2













 
 
 
  .section .init
  .proc 
_start::

   
  c0  add     $r0.21      = $r0.0, __BSS_START
   
  c0  add     $r0.22      = $r0.0, __BSS_END
   
  
   
  c0  add     $r0.23      = $r0.0, _panic_handler
   
  
   
   
   
 
  c0  add     $r0.11      = $r0.0, $r0.0
 


;;
   
  c0  cmpleu  $r0.25      = $r0.22, $r0.21
   
  

   
  c0  stw     (0xFFFFFC00  + 0x214) [$r0.0] = $r0.23


   

   
  c0  add     $r0.24      = $r0.0, _trap_handler
;;
   
  c0  orl     $b0.0       = $r0.25, $r0.11
   
  
   
   
  c0  mpyl    $r0.12      = $r0.11, 0x1000
   
  

   
  c0  stw     (0xFFFFFC00  + 0x210) [$r0.0] = $r0.24

;;
   
  c0  br                    $b0.0, 2f
;;
1:
   
  c0  stw     0x0[$r0.21] = $r0.0
  
   
  c0  cmpge   $b0.0       = $r0.21, $r0.22
;;
   
  c0  add     $r0.21      = $r0.21, 0x4
  
   
  c0  brf                   $b0.0, 1b
;;
2:
   
  c0  sub     $r0.1       = __STACK_START, $r0.12
   

   
  c0  call    $l0.0       = main
;;

  c0  sxtb    $r0.3       = $r0.3
;;
   
  c0  stb     (0xFFFFFC00  + 0x234) [$r0.0] = $r0.3
;;
   
  c0  ldw $r0.63 = (0xFFFFFC00  + 0x010) [$r0.0]
;;

	.global _stop
_stop::
   
  c0  stop
;;
  c0  nop
;;
  c0  nop
;;
  .endp


 
 
 
  .section .text
  .proc 
_panic_handler::

   
  c0  stop
;;
  c0  nop
;;
  c0  nop
;;
  .endp


 
 
 
  .section .text
  .proc 
_trap_handler::
  
   
   
   
  c0  add     $r0.1       = $r0.1, -0x120
;;
  c0  stw     0xF0[$r0.1] = $r0.56
;;
  c0  stw     0xEC[$r0.1] = $r0.55
;;
  c0  stw     0x114[$r0.1]= $l0.0
;;
  c0  stbr    0x110[$r0.1]
;;
   
  c0  ldbu    $r0.56      = (0xFFFFFC00  + 0x200) [$r0.0]
;;
  c0  ldw     $r0.55      = (0xFFFFFC00  + 0x21C) [$r0.0]
;;
   
   
  c0  cmpeq   $b0.0       = $r0.56, 0x07 
;;
  c0  br                    $b0.0, 3f
  
   
   
  c0  cmpeq   $b0.1       = $r0.56, $r0.0
;;
  c0  br                    $b0.1, 4f
;;
   
   


  c0  goto                  _panic_handler
;;
3:
   
  c0  stw     0x10C[$r0.1]= $r0.63
;;
  c0  stw     0x108[$r0.1]= $r0.62
;;
  c0  stw     0x104[$r0.1]= $r0.61
;;
  c0  stw     0x100[$r0.1]= $r0.60
;;
  c0  stw     0xFC[$r0.1] = $r0.59
;;
  c0  stw     0xF8[$r0.1] = $r0.58
;;
  c0  stw     0xF4[$r0.1] = $r0.57
;;
   
   
  c0  stw     0xE8[$r0.1] = $r0.54
;;
  c0  stw     0xE4[$r0.1] = $r0.53
;;
  c0  stw     0xE0[$r0.1] = $r0.52
;;
  c0  stw     0xDC[$r0.1] = $r0.51
;;
  c0  stw     0xD8[$r0.1] = $r0.50
;;
  c0  stw     0xD4[$r0.1] = $r0.49
;;
  c0  stw     0xD0[$r0.1] = $r0.48
;;
  c0  stw     0xCC[$r0.1] = $r0.47
;;
  c0  stw     0xC8[$r0.1] = $r0.46
;;
  c0  stw     0xC4[$r0.1] = $r0.45
;;
  c0  stw     0xC0[$r0.1] = $r0.44
;;
  c0  stw     0xBC[$r0.1] = $r0.43
;;
  c0  stw     0xB8[$r0.1] = $r0.42
;;
  c0  stw     0xB4[$r0.1] = $r0.41
;;
  c0  stw     0xB0[$r0.1] = $r0.40
;;
  c0  stw     0xAC[$r0.1] = $r0.39
;;
  c0  stw     0xA8[$r0.1] = $r0.38
;;
  c0  stw     0xA4[$r0.1] = $r0.37
;;
  c0  stw     0xA0[$r0.1] = $r0.36
;;
  c0  stw     0x9C[$r0.1] = $r0.35
;;
  c0  stw     0x98[$r0.1] = $r0.34
;;
  c0  stw     0x94[$r0.1] = $r0.33
;;
  c0  stw     0x90[$r0.1] = $r0.32
;;
  c0  stw     0x8C[$r0.1] = $r0.31
;;
  c0  stw     0x88[$r0.1] = $r0.30
;;
  c0  stw     0x84[$r0.1] = $r0.29
;;
  c0  stw     0x80[$r0.1] = $r0.28
;;
  c0  stw     0x7C[$r0.1] = $r0.27
;;
  c0  stw     0x78[$r0.1] = $r0.26
;;
  c0  stw     0x74[$r0.1] = $r0.25
;;
  c0  stw     0x70[$r0.1] = $r0.24
;;
  c0  stw     0x6C[$r0.1] = $r0.23
;;
  c0  stw     0x68[$r0.1] = $r0.22
;;
  c0  stw     0x64[$r0.1] = $r0.21
;;
  c0  stw     0x60[$r0.1] = $r0.20
;;
  c0  stw     0x5C[$r0.1] = $r0.19
;;
  c0  stw     0x58[$r0.1] = $r0.18
;;
  c0  stw     0x54[$r0.1] = $r0.17
;;
  c0  stw     0x50[$r0.1] = $r0.16
;;
  c0  stw     0x4C[$r0.1] = $r0.15
;;
  c0  stw     0x48[$r0.1] = $r0.14
;;
  c0  stw     0x44[$r0.1] = $r0.13
;;
  c0  stw     0x40[$r0.1] = $r0.12
;;
  c0  stw     0x3C[$r0.1] = $r0.11
;;
  c0  stw     0x38[$r0.1] = $r0.10
;;
  c0  stw     0x34[$r0.1] = $r0.9
;;
  c0  stw     0x30[$r0.1] = $r0.8
;;
  c0  stw     0x2C[$r0.1] = $r0.7
;;
  c0  stw     0x28[$r0.1] = $r0.6
;;
  c0  stw     0x24[$r0.1] = $r0.5
;;
  c0  stw     0x20[$r0.1] = $r0.4
;;
  c0  stw     0x1C[$r0.1] = $r0.3
;;
  c0  stw     0x18[$r0.1] = $r0.2
;;
   
  c0  ldw     $r0.54      = (0xFFFFFC00  + 0x218) [$r0.0]
;;
  c0  ldw     $r0.53      = (0xFFFFFC00  + 0x204) [$r0.0]
;;
  c0  stw     0x14[$r0.1] = $r0.54
;;
  c0  stw     0x10[$r0.1] = $r0.53
  
   
   
  c0  add     $r0.3       = $r0.0, $r0.55
   
  c0  call    $l0.0       = interrupt
;;
   
   
  c0  add     $r0.3       = $r0.0, (2 << 0 )  | (2 << 2 ) 
;;
  c0  stw     (0xFFFFFC00  + 0x200) [$r0.0] = $r0.3
;;
   
  c0  ldw     $r0.53      = 0x10[$r0.1]
;;
  c0  ldw     $r0.54      = 0x14[$r0.1]
;;
  c0  stw     (0xFFFFFC00  + 0x204) [$r0.0] = $r0.53
;;
  c0  stw     (0xFFFFFC00  + 0x218) [$r0.0] = $r0.54
;;
   
  c0  ldw     $r0.2       = 0x18[$r0.1]
;;
  c0  ldw     $r0.3       = 0x1C[$r0.1]
;;
  c0  ldw     $r0.4       = 0x20[$r0.1]
;;
  c0  ldw     $r0.5       = 0x24[$r0.1]
;;
  c0  ldw     $r0.6       = 0x28[$r0.1]
;;
  c0  ldw     $r0.7       = 0x2C[$r0.1]
;;
  c0  ldw     $r0.8       = 0x30[$r0.1]
;;
  c0  ldw     $r0.9       = 0x34[$r0.1]
;;
  c0  ldw     $r0.10      = 0x38[$r0.1]
;;
  c0  ldw     $r0.11      = 0x3C[$r0.1]
;;
  c0  ldw     $r0.12      = 0x40[$r0.1]
;;
  c0  ldw     $r0.13      = 0x44[$r0.1]
;;
  c0  ldw     $r0.14      = 0x48[$r0.1]
;;
  c0  ldw     $r0.15      = 0x4C[$r0.1]
;;
  c0  ldw     $r0.16      = 0x50[$r0.1]
;;
  c0  ldw     $r0.17      = 0x54[$r0.1]
;;
  c0  ldw     $r0.18      = 0x58[$r0.1]
;;
  c0  ldw     $r0.19      = 0x5C[$r0.1]
;;
  c0  ldw     $r0.20      = 0x60[$r0.1]
;;
  c0  ldw     $r0.21      = 0x64[$r0.1]
;;
  c0  ldw     $r0.22      = 0x68[$r0.1]
;;
  c0  ldw     $r0.23      = 0x6C[$r0.1]
;;
  c0  ldw     $r0.24      = 0x70[$r0.1]
;;
  c0  ldw     $r0.25      = 0x74[$r0.1]
;;
  c0  ldw     $r0.26      = 0x78[$r0.1]
;;
  c0  ldw     $r0.27      = 0x7C[$r0.1]
;;
  c0  ldw     $r0.28      = 0x80[$r0.1]
;;
  c0  ldw     $r0.29      = 0x84[$r0.1]
;;
  c0  ldw     $r0.30      = 0x88[$r0.1]
;;
  c0  ldw     $r0.31      = 0x8C[$r0.1]
;;
  c0  ldw     $r0.32      = 0x90[$r0.1]
;;
  c0  ldw     $r0.33      = 0x94[$r0.1]
;;
  c0  ldw     $r0.34      = 0x98[$r0.1]
;;
  c0  ldw     $r0.35      = 0x9C[$r0.1]
;;
  c0  ldw     $r0.36      = 0xA0[$r0.1]
;;
  c0  ldw     $r0.37      = 0xA4[$r0.1]
;;
  c0  ldw     $r0.38      = 0xA8[$r0.1]
;;
  c0  ldw     $r0.39      = 0xAC[$r0.1]
;;
  c0  ldw     $r0.40      = 0xB0[$r0.1]
;;
  c0  ldw     $r0.41      = 0xB4[$r0.1]
;;
  c0  ldw     $r0.42      = 0xB8[$r0.1]
;;
  c0  ldw     $r0.43      = 0xBC[$r0.1]
;;
  c0  ldw     $r0.44      = 0xC0[$r0.1]
;;
  c0  ldw     $r0.45      = 0xC4[$r0.1]
;;
  c0  ldw     $r0.46      = 0xC8[$r0.1]
;;
  c0  ldw     $r0.47      = 0xCC[$r0.1]
;;
  c0  ldw     $r0.48      = 0xD0[$r0.1]
;;
  c0  ldw     $r0.49      = 0xD4[$r0.1]
;;
  c0  ldw     $r0.50      = 0xD8[$r0.1]
;;
  c0  ldw     $r0.51      = 0xDC[$r0.1]
;;
  c0  ldw     $r0.52      = 0xE0[$r0.1]
;;
  c0  ldw     $r0.53      = 0xE4[$r0.1]
;;
  c0  ldw     $r0.54      = 0xE8[$r0.1]
;;
   
   
  c0  ldw     $r0.57      = 0xF4[$r0.1]
;;
  c0  ldw     $r0.58      = 0xF8[$r0.1]
;;
  c0  ldw     $r0.59      = 0xFC[$r0.1]
;;
  c0  ldw     $r0.60      = 0x100[$r0.1]
;;
  c0  ldw     $r0.61      = 0x104[$r0.1]
;;
  c0  ldw     $r0.62      = 0x108[$r0.1]
;;
  c0  ldw     $r0.63      = 0x10C[$r0.1]
;;
4:
   
  c0  ldbr                  0x110[$r0.1]
;;
  c0  ldw     $l0.0       = 0x114[$r0.1]
;;
  c0  ldw     $r0.55      = 0xEC[$r0.1]
;;
  c0  ldw     $r0.56      = 0xF0[$r0.1]
;;
  c0  add     $r0.1       = $r0.1, 0x120
;;
  c0  rfi
;;
  .endp

 
 
 
  .section .text
  .proc 
  .global _wakeup_trap_handler
_wakeup_trap_handler::

   
  c0  add     $r0.1       = $r0.0, __STACK_START
   
  
   
  c0  ldbu    $r0.56      = (0xFFFFFC00  + 0x200) [$r0.0]
;;
   
  c0  ldw     $r0.3       = (0xFFFFFC00  + 0x21C) [$r0.0]
;;
   

  c0  cmpeq   $b0.0       = $r0.56, 0x07 
;;
  c0  br                    $b0.0, wake_interrupt
;;
   
   
  c0  goto    _panic_handler
;;
  c0  stop
;;
  .endp

 
 
 
 
 

  .weak putchar, interrupt, wake_interrupt
  .section .text
  .proc
putchar::
interrupt::
wake_interrupt::
  
   
  c0  return  $r0.1       = $r0.1, 0, $l0.0
;;
  .endp
  
  
.section .data
.size strbuf, 12
.weak strbuf
strbuf:
.data4 0
.data4 0
.data4 0

