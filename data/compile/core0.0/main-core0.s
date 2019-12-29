 ## Target: VEX 1 cluster (big endian)
.comment ""
.comment "Copyright (C) 1990-2010 Hewlett-Packard Company"
.comment "VEX C compiler version 3.43 (20110131 release)"
.comment ""
.comment "-dir /home/user/workspace/rvex-rewrite/tools/vex-3.43 -I../../../src -I/home/user/workspace/assignment2/utils -I/home/user/workspace/rvex-rewrite/examples/src -I/home/user/workspace/assignment2/mca_lab2/data/compile/core0.0 -fno-xnop -fexpand-div -c99inline -fmm=config.mm -O3 -DISSUE=8 -S"
.sversion 3.43
.rta 2
.section .bss
.align 32
.section .data
.align 32
 ## Begin main
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg()
main::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    mov $r0.3 = (_?1STRINGPACKET.1 + 0)   ## addr(_?1STRINGVAR.1)(P32)
;;								## 0
.call log_perfcount, caller, arg($r0.3:u32), ret()
	c0    call $l0.0 = log_perfcount   ## bblock 0, line 26,  raddr(log_perfcount)(P32),  addr(_?1STRINGVAR.1)(P32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t5
;;								## 1
.call convolution_7x7_main, caller, arg(), ret($r0.3:s32)
	c0    call $l0.0 = convolution_7x7_main   ## bblock 1, line 29,  raddr(convolution_7x7_main)(P32)
;;								## 2
.call log_perfcount, caller, arg($r0.3:u32), ret()
	c0    call $l0.0 = log_perfcount   ## bblock 2, line 30,  raddr(log_perfcount)(P32),  addr(_?1STRINGVAR.2)(P32)
	c0    mov $r0.3 = (_?1STRINGPACKET.2 + 0)   ## addr(_?1STRINGVAR.2)(P32)
;;								## 3
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t5
;;								## 4
;;								## 5
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 3, line 32,  t6,  ?2.1?2auto_size(I32),  t5
;;								## 6
.endp
.section .bss
.section .data
_?1STRINGPACKET.1:
    .data1 105
    .data1 110
    .data1 105
    .data1 116
    .data1 0
.skip 3
_?1STRINGPACKET.2:
    .data1 99
    .data1 111
    .data1 110
    .data1 118
    .data1 111
    .data1 108
    .data1 117
    .data1 116
    .data1 105
    .data1 111
    .data1 110
    .data1 95
    .data1 55
    .data1 120
    .data1 55
    .data1 0
.equ ?2.1?2scratch.0, 0x0
.equ ?2.1?2ras_p, 0x10
.section .data
.section .text
.equ ?2.1?2auto_size, 0x20
 ## End main
.section .bss
.section .data
record_ptr::
    .data4 1056964608
.section .data
.section .text
.import convolution_7x7_main
.type convolution_7x7_main,@function
.import log_perfcount
.type log_perfcount,@function
