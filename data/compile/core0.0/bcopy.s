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
.equ _?1TEMPLATEPACKET.11, 0x0
 ## Begin _bcopy
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:u32,$r0.4:u32,$r0.5:s32)
_bcopy::
.trace 3
	      ## auto_size == 0
	c0    mov $r0.2 = $r0.3   ## bblock 0, line 1,  t79,  t25
	c0    sub $r0.5 = 7, $r0.5   ## bblock 0, line 0,  t81,  7(I32),  t27
;;								## 0
	c0    mov $r0.4 = $r0.5   ## bblock 0, line 0,  t80,  t81
	c0    mov $r0.3 = $r0.4   ## t26
;;								## 1
	c0    mov $r0.5 = $r0.3   ## bblock 0, line 1,  t78,  t26
;;								## 2
.trace 1
L0?3:
	c0    cmplt $b0.0 = $r0.4, 7   ## bblock 1, line 4,  t169(I1),  t80,  7(SI32)
	c0    ldb.d $r0.3 = 0[$r0.2]   ## [spec] bblock 3, line 5, t30(SI8), t79
	c0    cmplt $b0.1 = $r0.4, 6   ## [spec] bblock 3, line 4-1,  t170(I1),  t80,  6(SI32)
	c0    cmplt $b0.2 = $r0.4, 5   ## [spec] bblock 23, line 4-2,  t176(I1),  t80,  5(SI32)
	c0    cmplt $b0.3 = $r0.4, 4   ## [spec] bblock 20, line 4-3,  t175(I1),  t80,  4(SI32)
	c0    cmplt $b0.4 = $r0.4, 3   ## [spec] bblock 17, line 4-4,  t174(I1),  t80,  3(SI32)
	c0    cmplt $b0.5 = $r0.4, 2   ## [spec] bblock 14, line 4-5,  t173(I1),  t80,  2(SI32)
	c0    cmplt $b0.6 = $r0.4, 1   ## [spec] bblock 11, line 4-6,  t172(I1),  t80,  1(SI32)
;;								## 0
	c0    cmplt $b0.0 = $r0.4, $r0.0   ## [spec] bblock 8, line 4-7,  t171(I1),  t80,  0(SI32)
	c0    add $r0.4 = $r0.4, 8   ## [spec] bblock 5, line 0,  t80,  t80,  8(I32)
	c0    brf $b0.0, L1?3   ## bblock 1, line 4,  t169(I1)
;;								## 1
	c0    stb 0[$r0.5] = $r0.3   ## bblock 3, line 5, t78, t30(SI8)
	c0    brf $b0.1, L1?3   ## bblock 3, line 4-1,  t170(I1)
;;								## 2
	c0    ldb $r0.3 = 1[$r0.2]   ## bblock 23, line 5-1, t54(SI8), t79
;;								## 3
;;								## 4
	c0    stb 1[$r0.5] = $r0.3   ## bblock 23, line 5-1, t78, t54(SI8)
	c0    brf $b0.2, L1?3   ## bblock 23, line 4-2,  t176(I1)
;;								## 5
	c0    ldb $r0.3 = 2[$r0.2]   ## bblock 20, line 5-2, t50(SI8), t79
;;								## 6
;;								## 7
	c0    stb 2[$r0.5] = $r0.3   ## bblock 20, line 5-2, t78, t50(SI8)
	c0    brf $b0.3, L1?3   ## bblock 20, line 4-3,  t175(I1)
;;								## 8
	c0    ldb $r0.3 = 3[$r0.2]   ## bblock 17, line 5-3, t46(SI8), t79
;;								## 9
;;								## 10
	c0    stb 3[$r0.5] = $r0.3   ## bblock 17, line 5-3, t78, t46(SI8)
	c0    brf $b0.4, L1?3   ## bblock 17, line 4-4,  t174(I1)
;;								## 11
	c0    ldb $r0.3 = 4[$r0.2]   ## bblock 14, line 5-4, t42(SI8), t79
;;								## 12
;;								## 13
	c0    stb 4[$r0.5] = $r0.3   ## bblock 14, line 5-4, t78, t42(SI8)
	c0    brf $b0.5, L1?3   ## bblock 14, line 4-5,  t173(I1)
;;								## 14
	c0    ldb $r0.3 = 5[$r0.2]   ## bblock 11, line 5-5, t38(SI8), t79
;;								## 15
;;								## 16
	c0    stb 5[$r0.5] = $r0.3   ## bblock 11, line 5-5, t78, t38(SI8)
	c0    brf $b0.6, L1?3   ## bblock 11, line 4-6,  t172(I1)
;;								## 17
	c0    ldb $r0.3 = 6[$r0.2]   ## bblock 8, line 5-6, t31(SI8), t79
;;								## 18
;;								## 19
	c0    stb 6[$r0.5] = $r0.3   ## bblock 8, line 5-6, t78, t31(SI8)
	c0    brf $b0.0, L1?3   ## bblock 8, line 4-7,  t171(I1)
;;								## 20
	c0    ldb $r0.3 = 7[$r0.2]   ## bblock 5, line 5-7, t7(SI8), t79
	c0    add $r0.2 = $r0.2, 8   ## bblock 5, line 0,  t79,  t79,  8(I32)
;;								## 21
;;								## 22
	c0    stb 7[$r0.5] = $r0.3   ## bblock 5, line 5-7, t78, t7(SI8)
	c0    add $r0.5 = $r0.5, 8   ## bblock 5, line 0,  t78,  t78,  8(I32)
	c0    goto L0?3 ## goto
;;								## 23
.trace 4
L1?3:
.return ret()
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 6,  t12,  ?2.1?2auto_size(I32),  t11
;;								## 0
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.1?2auto_size, 0x0
 ## End _bcopy
.section .bss
.section .data
.section .data
.section .text
