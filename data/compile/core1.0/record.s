 ## Target: VEX 1 cluster (big endian)
.comment ""
.comment "Copyright (C) 1990-2010 Hewlett-Packard Company"
.comment "VEX C compiler version 3.43 (20110131 release)"
.comment ""
.comment "-dir /home/user/workspace/rvex-rewrite/tools/vex-3.43 -I../../../src -I/home/user/workspace/assignment2/utils -I/home/user/workspace/rvex-rewrite/examples/src -I/home/user/workspace/assignment2/mca_lab2/data/compile/core1.0 -fno-xnop -fexpand-div -c99inline -fmm=config.mm -O3 -DISSUE=4 -S"
.sversion 3.43
.rta 2
.section .bss
.align 32
.section .data
.align 32
.equ _?1TEMPLATEPACKET.13, 0x0
.equ _?1TEMPLATEPACKET.12, 0x0
 ## Begin putchar
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:s32)
putchar::
.trace 1
	      ## auto_size == 0
	c0    ldw $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 0, line 16, t2, 0(I32)
;;								## 0
	c0    sxtb $r0.4 = $r0.3   ## bblock 0, line 16,  t1(SI8),  t4
	c0    zxtb $r0.3 = $r0.3   ## bblock 0, line 17,  t5(I8),  t4
;;								## 1
	c0    add $r0.5 = $r0.2, 1   ## bblock 0, line 16,  t3,  t2,  1(SI32)
;;								## 2
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.5   ## bblock 0, line 16, 0(I32), t3
;;								## 3
	c0    stb 0[$r0.2] = $r0.4   ## bblock 0, line 16, t2, t1(SI8)
;;								## 4
	c0    stb 0xd1000000[$r0.0] = $r0.3   ## bblock 0, line 17, 0(I32), t5(I8)
;;								## 5
	c0    ldw $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 0, line 18, t6, 0(I32)
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 6
;;								## 7
.return ret($r0.3:s32)
	c0    stb 0[$r0.2] = $r0.0   ## bblock 0, line 18, t6, 0(SI32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 19,  t8,  ?2.1?2auto_size(I32),  t7
;;								## 8
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.1?2auto_size, 0x0
 ## End putchar
 ## Begin putc
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:s32)
putc::
.trace 1
	      ## auto_size == 0
	c0    ldw $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 0, line 23, t2, 0(I32)
;;								## 0
	c0    sxtb $r0.4 = $r0.3   ## bblock 0, line 23,  t1(SI8),  t4
	c0    zxtb $r0.3 = $r0.3   ## bblock 0, line 24,  t5(I8),  t4
;;								## 1
	c0    add $r0.5 = $r0.2, 1   ## bblock 0, line 23,  t3,  t2,  1(SI32)
;;								## 2
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.5   ## bblock 0, line 23, 0(I32), t3
;;								## 3
	c0    stb 0[$r0.2] = $r0.4   ## bblock 0, line 23, t2, t1(SI8)
;;								## 4
	c0    stb 0xd1000000[$r0.0] = $r0.3   ## bblock 0, line 24, 0(I32), t5(I8)
;;								## 5
	c0    ldw $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 0, line 25, t6, 0(I32)
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 6
;;								## 7
.return ret($r0.3:s32)
	c0    stb 0[$r0.2] = $r0.0   ## bblock 0, line 25, t6, 0(SI32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 26,  t8,  ?2.2?2auto_size(I32),  t7
;;								## 8
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.2?2auto_size, 0x0
 ## End putc
.equ _?1TEMPLATEPACKET.14, 0x0
 ## Begin puts
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:u32)
puts::
.trace 3
	      ## auto_size == 0
	c0    mov $r0.2 = $r0.3   ## t29
;;								## 0
.trace 1
L0?3:
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 1, line 30, t1(SI8), t29
;;								## 0
	c0    ldw.d $r0.4 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 3, line 31, t27, 0(I32)
;;								## 1
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 1, line 30,  t74(I1),  t1(SI8),  0(SI32)
;;								## 2
	c0    add $r0.5 = $r0.4, 1   ## [spec] bblock 3, line 31,  t26,  t27,  1(SI32)
	c0    brf $b0.0, L1?3   ## bblock 1, line 30,  t74(I1)
;;								## 3
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.5   ## bblock 3, line 31, 0(I32), t26
;;								## 4
	c0    stb 0[$r0.4] = $r0.3   ## bblock 3, line 31, t27, t1(SI8)
;;								## 5
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 3, line 32, t8(SI8), t29
;;								## 6
;;								## 7
	c0    zxtb $r0.3 = $r0.3   ## bblock 3, line 32,  t9(I8),  t8(SI8)
;;								## 8
	c0    stb 0xd1000000[$r0.0] = $r0.3   ## bblock 3, line 32, 0(I32), t9(I8)
;;								## 9
	c0    ldb $r0.3 = 1[$r0.2]   ## bblock 3, line 30-1, t48(SI8), t29
;;								## 10
	c0    ldw.d $r0.4 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 17, line 31-1, t49, 0(I32)
;;								## 11
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 3, line 30-1,  t75(I1),  t48(SI8),  0(SI32)
;;								## 12
	c0    add $r0.5 = $r0.4, 1   ## [spec] bblock 17, line 31-1,  t50,  t49,  1(SI32)
	c0    brf $b0.0, L1?3   ## bblock 3, line 30-1,  t75(I1)
;;								## 13
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.5   ## bblock 17, line 31-1, 0(I32), t50
;;								## 14
	c0    stb 0[$r0.4] = $r0.3   ## bblock 17, line 31-1, t49, t48(SI8)
;;								## 15
	c0    ldb $r0.3 = 1[$r0.2]   ## bblock 17, line 32-1, t51(SI8), t29
;;								## 16
;;								## 17
	c0    zxtb $r0.3 = $r0.3   ## bblock 17, line 32-1,  t52(I8),  t51(SI8)
;;								## 18
	c0    stb 0xd1000000[$r0.0] = $r0.3   ## bblock 17, line 32-1, 0(I32), t52(I8)
;;								## 19
	c0    ldb $r0.3 = 2[$r0.2]   ## bblock 17, line 30-2, t42(SI8), t29
;;								## 20
	c0    ldw.d $r0.4 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 14, line 31-2, t43, 0(I32)
;;								## 21
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 17, line 30-2,  t79(I1),  t42(SI8),  0(SI32)
;;								## 22
	c0    add $r0.5 = $r0.4, 1   ## [spec] bblock 14, line 31-2,  t44,  t43,  1(SI32)
	c0    brf $b0.0, L1?3   ## bblock 17, line 30-2,  t79(I1)
;;								## 23
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.5   ## bblock 14, line 31-2, 0(I32), t44
;;								## 24
	c0    stb 0[$r0.4] = $r0.3   ## bblock 14, line 31-2, t43, t42(SI8)
;;								## 25
	c0    ldb $r0.3 = 2[$r0.2]   ## bblock 14, line 32-2, t45(SI8), t29
;;								## 26
;;								## 27
	c0    zxtb $r0.3 = $r0.3   ## bblock 14, line 32-2,  t46(I8),  t45(SI8)
;;								## 28
	c0    stb 0xd1000000[$r0.0] = $r0.3   ## bblock 14, line 32-2, 0(I32), t46(I8)
;;								## 29
	c0    ldb $r0.3 = 3[$r0.2]   ## bblock 14, line 30-3, t36(SI8), t29
;;								## 30
	c0    ldw.d $r0.4 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 11, line 31-3, t37, 0(I32)
;;								## 31
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 14, line 30-3,  t78(I1),  t36(SI8),  0(SI32)
;;								## 32
	c0    add $r0.5 = $r0.4, 1   ## [spec] bblock 11, line 31-3,  t38,  t37,  1(SI32)
	c0    brf $b0.0, L1?3   ## bblock 14, line 30-3,  t78(I1)
;;								## 33
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.5   ## bblock 11, line 31-3, 0(I32), t38
;;								## 34
	c0    stb 0[$r0.4] = $r0.3   ## bblock 11, line 31-3, t37, t36(SI8)
;;								## 35
	c0    ldb $r0.3 = 3[$r0.2]   ## bblock 11, line 32-3, t39(SI8), t29
;;								## 36
;;								## 37
	c0    zxtb $r0.3 = $r0.3   ## bblock 11, line 32-3,  t40(I8),  t39(SI8)
;;								## 38
	c0    stb 0xd1000000[$r0.0] = $r0.3   ## bblock 11, line 32-3, 0(I32), t40(I8)
;;								## 39
	c0    ldb $r0.3 = 4[$r0.2]   ## bblock 11, line 30-4, t30(SI8), t29
;;								## 40
	c0    ldw.d $r0.4 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 8, line 31-4, t31, 0(I32)
;;								## 41
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 11, line 30-4,  t77(I1),  t30(SI8),  0(SI32)
;;								## 42
	c0    add $r0.5 = $r0.4, 1   ## [spec] bblock 8, line 31-4,  t32,  t31,  1(SI32)
	c0    brf $b0.0, L1?3   ## bblock 11, line 30-4,  t77(I1)
;;								## 43
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.5   ## bblock 8, line 31-4, 0(I32), t32
;;								## 44
	c0    stb 0[$r0.4] = $r0.3   ## bblock 8, line 31-4, t31, t30(SI8)
;;								## 45
	c0    ldb $r0.3 = 4[$r0.2]   ## bblock 8, line 32-4, t33(SI8), t29
;;								## 46
;;								## 47
	c0    zxtb $r0.3 = $r0.3   ## bblock 8, line 32-4,  t34(I8),  t33(SI8)
;;								## 48
	c0    stb 0xd1000000[$r0.0] = $r0.3   ## bblock 8, line 32-4, 0(I32), t34(I8)
;;								## 49
	c0    ldb $r0.3 = 5[$r0.2]   ## bblock 8, line 30-5, t24(SI8), t29
;;								## 50
	c0    ldw.d $r0.4 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 5, line 31-5, t4, 0(I32)
;;								## 51
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 8, line 30-5,  t76(I1),  t24(SI8),  0(SI32)
;;								## 52
	c0    add $r0.5 = $r0.4, 1   ## [spec] bblock 5, line 31-5,  t5,  t4,  1(SI32)
	c0    brf $b0.0, L1?3   ## bblock 8, line 30-5,  t76(I1)
;;								## 53
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.5   ## bblock 5, line 31-5, 0(I32), t5
;;								## 54
	c0    stb 0[$r0.4] = $r0.3   ## bblock 5, line 31-5, t4, t24(SI8)
;;								## 55
	c0    ldb $r0.3 = 5[$r0.2]   ## bblock 5, line 32-5, t28(SI8), t29
	c0    add $r0.2 = $r0.2, 6   ## bblock 5, line 32-5,  t29,  t29,  6(SI32)
;;								## 56
;;								## 57
	c0    zxtb $r0.3 = $r0.3   ## bblock 5, line 32-5,  t25(I8),  t28(SI8)
;;								## 58
	c0    stb 0xd1000000[$r0.0] = $r0.3   ## bblock 5, line 32-5, 0(I32), t25(I8)
	c0    goto L0?3 ## goto
;;								## 59
.trace 4
L1?3:
	c0    ldw $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 2, line 34, t10, 0(I32)
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
;;								## 1
.return ret($r0.3:s32)
	c0    stb 0[$r0.2] = $r0.0   ## bblock 2, line 34, t10, 0(SI32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 35,  t12,  ?2.3?2auto_size(I32),  t11
;;								## 2
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.3?2auto_size, 0x0
 ## End puts
 ## Begin putd
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:s32)
putd::
.trace 5
	      ## auto_size == 0
	c0    ldw.d $r0.6 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 18, line 57, t2, 0(I32)
;;								## 0
	c0    cmplt $b0.0 = $r0.3, $r0.0   ## bblock 0, line 56,  t194(I1),  t80,  0(SI32)
	c0    mov $r0.5 = $r0.0   ## [spec] bblock 1, line 65,  t117,  0(SI32)
	c0    mov $r0.8 = 45   ## 45(I32)
	c0    mov $r0.7 = 45   ## 45(SI32)
;;								## 1
	c0    add $r0.9 = $r0.6, 1   ## [spec] bblock 18, line 57,  t3,  t2,  1(SI32)
	c0    mov $r0.2 = (_?1PACKET.4 + 0)   ## [spec] bblock 1, line 0,  t163,  addr(decades?1.40)(P32)
	c0    brf $b0.0, L2?3   ## bblock 0, line 56,  t194(I1)
;;								## 2
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.9   ## bblock 18, line 57, 0(I32), t3
	c0    sub $r0.3 = $r0.0, $r0.3   ## bblock 18, line 59,  t80,  0(I32),  t80
;;								## 3
	c0    stb 0[$r0.6] = $r0.7   ## bblock 18, line 57, t2, 45(SI32)
	c0    mov $r0.16 = $r0.3   ## bblock 1, line 61,  t85,  t80
	c0    mov $r0.4 = $r0.3   ## t80
;;								## 4
	c0    stb 0xd1000000[$r0.0] = $r0.8   ## bblock 18, line 58, 0(I32), 45(I32)
;;								## 5
.trace 1
L3?3:
	c0    cmpge $r0.6 = $r0.5, 10   ## bblock 2, line 65,  t123(I1),  t117,  10(SI32)
	c0    ldw.d $r0.3 = 0[$r0.2]   ## [spec] bblock 2, line 66, t124, t163
	c0    cmpge $r0.7 = $r0.5, 9   ## [spec] bblock 17, line 65-1,  t90(I1),  t117,  9(SI32)
	c0    cmpge $r0.8 = $r0.5, 8   ## [spec] bblock 31, line 65-2,  t122(I1),  t117,  8(SI32)
;;								## 0
	c0    ldw.d $r0.9 = 4[$r0.2]   ## [spec] bblock 17, line 66-1, t13, t163
	c0    cmpge $r0.10 = $r0.5, 7   ## [spec] bblock 28, line 65-3,  t118(I1),  t117,  7(SI32)
	c0    cmpge $r0.11 = $r0.5, 6   ## [spec] bblock 25, line 65-4,  t130(I1),  t117,  6(SI32)
	c0    cmpge $r0.12 = $r0.5, 5   ## [spec] bblock 19, line 65-5,  t135(I1),  t117,  5(SI32)
;;								## 1
	c0    cmpgeu $r0.3 = $r0.4, $r0.3   ## bblock 2, line 67,  t91(I1),  t80,  t124
	c0    ldw.d $r0.13 = 8[$r0.2]   ## [spec] bblock 31, line 66-2, t131, t163
	c0    cmpge $r0.14 = $r0.5, 4   ## [spec] bblock 16, line 65-6,  t140(I1),  t117,  4(SI32)
	c0    cmpge $r0.15 = $r0.5, 3   ## [spec] bblock 12, line 65-7,  t143(I1),  t117,  3(SI32)
;;								## 2
	c0    norl $b0.0 = $r0.6, $r0.3   ## bblock 2, line 65,  t195(I1),  t123(I1),  t91(I1)
	c0    cmpgeu $r0.9 = $r0.4, $r0.9   ## [spec] bblock 17, line 67-1,  t145(I1),  t80,  t13
	c0    ldw.d $r0.3 = 12[$r0.2]   ## [spec] bblock 28, line 66-3, t127, t163
;;								## 3
	c0    norl $b0.0 = $r0.7, $r0.9   ## [spec] bblock 17, line 65-1,  t200(I1),  t90(I1),  t145(I1)
	c0    cmpgeu $r0.13 = $r0.4, $r0.13   ## [spec] bblock 31, line 67-2,  t120(I1),  t80,  t131
	c0    ldw.d $r0.6 = 16[$r0.2]   ## [spec] bblock 25, line 66-4, t136, t163
	c0    brf $b0.0, L4?3   ## bblock 2, line 65,  t195(I1)
;;								## 4
	c0    norl $b0.0 = $r0.8, $r0.13   ## [spec] bblock 31, line 65-2,  t204(I1),  t122(I1),  t120(I1)
	c0    cmpgeu $r0.3 = $r0.4, $r0.3   ## [spec] bblock 28, line 67-3,  t126(I1),  t80,  t127
	c0    ldw.d $r0.7 = 20[$r0.2]   ## [spec] bblock 19, line 66-5, t134, t163
	c0    brf $b0.0, L5?3   ## bblock 17, line 65-1,  t200(I1)
;;								## 5
	c0    norl $b0.0 = $r0.10, $r0.3   ## [spec] bblock 28, line 65-3,  t203(I1),  t118(I1),  t126(I1)
	c0    cmpgeu $r0.6 = $r0.4, $r0.6   ## [spec] bblock 25, line 67-4,  t129(I1),  t80,  t136
	c0    ldw.d $r0.3 = 24[$r0.2]   ## [spec] bblock 16, line 66-6, t139, t163
	c0    brf $b0.0, L6?3   ## bblock 31, line 65-2,  t204(I1)
;;								## 6
	c0    norl $b0.0 = $r0.11, $r0.6   ## [spec] bblock 25, line 65-4,  t202(I1),  t130(I1),  t129(I1)
	c0    cmpgeu $r0.7 = $r0.4, $r0.7   ## [spec] bblock 19, line 67-5,  t133(I1),  t80,  t134
	c0    ldw.d $r0.6 = 28[$r0.2]   ## [spec] bblock 12, line 66-7, t142, t163
	c0    brf $b0.0, L7?3   ## bblock 28, line 65-3,  t203(I1)
;;								## 7
	c0    norl $b0.0 = $r0.12, $r0.7   ## [spec] bblock 19, line 65-5,  t201(I1),  t135(I1),  t133(I1)
	c0    cmpgeu $r0.3 = $r0.4, $r0.3   ## [spec] bblock 16, line 67-6,  t138(I1),  t80,  t139
	c0    add $r0.2 = $r0.2, 32   ## [spec] bblock 7, line 0,  t163,  t163,  32(I32)
	c0    brf $b0.0, L8?3   ## bblock 25, line 65-4,  t202(I1)
;;								## 8
	c0    norl $b0.0 = $r0.14, $r0.3   ## [spec] bblock 16, line 65-6,  t199(I1),  t140(I1),  t138(I1)
	c0    cmpgeu $r0.6 = $r0.4, $r0.6   ## [spec] bblock 12, line 67-7,  t141(I1),  t80,  t142
	c0    brf $b0.0, L9?3   ## bblock 19, line 65-5,  t201(I1)
;;								## 9
	c0    norl $b0.0 = $r0.15, $r0.6   ## [spec] bblock 12, line 65-7,  t198(I1),  t143(I1),  t141(I1)
	c0    brf $b0.0, L10?3   ## bblock 16, line 65-6,  t199(I1)
;;								## 10
	c0    brf $b0.0, L11?3   ## bblock 12, line 65-7,  t198(I1)
;;								## 11
	c0    add $r0.5 = $r0.5, 8   ## bblock 7, line 65-7,  t117,  t117,  8(SI32)
	c0    goto L3?3 ## goto
;;								## 12
.trace 16
L11?3:
	c0    add $r0.5 = $r0.5, 7   ## bblock 22, line 0,  t84,  t117,  7(I32)
	c0    mov $r0.7 = 48   ## 48(SI32)
	c0    ldw.d $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 15, line 72, t15, 0(I32)
	      ## goto
;;
	c0    goto L12?3 ## goto
;;								## 0
.trace 8
L13?3:
	c0    sh2add $r0.2 = $r0.5, (_?1PACKET.4 + 0)   ## bblock 27, line 0,  t146,  t84,  addr(decades?1.40)(P32)
	c0    add $r0.6 = $r0.5, (~0x9)   ## bblock 27, line 0,  t147,  t84,  (~0x9)(I32)
	c0    mov $r0.4 = $r0.16   ## t85
;;								## 0
.trace 3
L14?3:
	c0    cmplt $b0.0 = $r0.6, $r0.0   ## bblock 4, line 75,  t197(I1),  t147,  0(SI32)
	c0    ldw.d $r0.3 = 0[$r0.2]   ## [spec] bblock 6, line 76, t81, t146
	c0    add $r0.2 = $r0.2, 4   ## [spec] bblock 6, line 0,  t146,  t146,  4(I32)
	c0    mov $r0.5 = 56   ## 56(SI32)
;;								## 0
	c0    ldw.d $r0.7 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 6, line 82, t63, 0(I32)
	c0    add $r0.6 = $r0.6, 1   ## [spec] bblock 6, line 0,  t147,  t147,  1(I32)
	c0    brf $b0.0, L15?3   ## bblock 4, line 75,  t197(I1)
;;								## 1
	c0    shl $r0.10 = $r0.3, 1   ## bblock 6, line 80,  t44,  t81,  1(SI32)
	c0    shl $r0.8 = $r0.3, 3   ## bblock 6, line 78,  t24,  t81,  3(SI32)
	c0    shl $r0.9 = $r0.3, 2   ## bblock 6, line 79,  t34,  t81,  2(SI32)
;;								## 2
	c0    cmpgeu $b0.0 = $r0.4, $r0.8   ## bblock 6, line 78,  t92(I1),  t85,  t24
	c0    sub $r0.8 = $r0.4, $r0.8   ## bblock 6, line 78,  t93,  t85,  t24
	c0    add $r0.11 = $r0.7, 1   ## bblock 6, line 82,  t64,  t63,  1(SI32)
;;								## 3
	c0    slct $r0.8 = $b0.0, $r0.8, $r0.4   ## bblock 6, line 78,  t113,  t92(I1),  t93,  t85
	c0    slct $r0.12 = $b0.0, $r0.5, 48   ## bblock 6, line 78,  t116(SI8),  t92(I1),  56(SI32),  48(SI32)
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.11   ## bblock 6, line 82, 0(I32), t64
;;								## 4
	c0    cmpgeu $b0.0 = $r0.8, $r0.9   ## bblock 6, line 79,  t95(I1),  t113,  t34
	c0    sub $r0.9 = $r0.8, $r0.9   ## bblock 6, line 79,  t96,  t113,  t34
	c0    add $r0.5 = $r0.12, 4   ## bblock 6, line 79,  t97,  t116(SI8),  4(SI32)
;;								## 5
	c0    slct $r0.9 = $b0.0, $r0.9, $r0.8   ## bblock 6, line 79,  t112,  t95(I1),  t96,  t113
	c0    sxtb $r0.5 = $r0.5   ## bblock 6, line 79,  t98(SI8),  t97
;;								## 6
	c0    cmpgeu $b0.0 = $r0.9, $r0.10   ## bblock 6, line 80,  t99(I1),  t112,  t44
	c0    sub $r0.10 = $r0.9, $r0.10   ## bblock 6, line 80,  t100,  t112,  t44
	c0    slct $r0.5 = $b0.0, $r0.5, $r0.12   ## bblock 6, line 79,  t115(SI8),  t95(I1),  t98(SI8),  t116(SI8)
;;								## 7
	c0    slct $r0.10 = $b0.0, $r0.10, $r0.9   ## bblock 6, line 80,  t111,  t99(I1),  t100,  t112
	c0    add $r0.8 = $r0.5, 2   ## bblock 6, line 80,  t101,  t115(SI8),  2(SI32)
;;								## 8
	c0    cmpgeu $b0.1 = $r0.10, $r0.3   ## bblock 6, line 81,  t103(I1),  t111,  t81
	c0    sub $r0.3 = $r0.10, $r0.3   ## bblock 6, line 81,  t104,  t111,  t81
	c0    sxtb $r0.8 = $r0.8   ## bblock 6, line 80,  t102(SI8),  t101
;;								## 9
	c0    slct $r0.4 = $b0.1, $r0.3, $r0.10   ## bblock 6, line 81,  t85,  t103(I1),  t104,  t111
	c0    slct $r0.8 = $b0.0, $r0.8, $r0.5   ## bblock 6, line 80,  t114(SI8),  t99(I1),  t102(SI8),  t115(SI8)
;;								## 10
	c0    add $r0.3 = $r0.8, 1   ## bblock 6, line 81,  t105,  t114(SI8),  1(SI32)
;;								## 11
	c0    sxtb $r0.3 = $r0.3   ## bblock 6, line 81,  t106(SI8),  t105
;;								## 12
	c0    slct $r0.3 = $b0.1, $r0.3, $r0.8   ## bblock 6, line 81,  t83(SI8),  t103(I1),  t106(SI8),  t114(SI8)
;;								## 13
	c0    zxtb $r0.5 = $r0.3   ## bblock 6, line 83,  t66(I8),  t83(SI8)
	c0    stb 0[$r0.7] = $r0.3   ## bblock 6, line 82, t63, t83(SI8)
;;								## 14
	c0    stb 0xd1000000[$r0.0] = $r0.5   ## bblock 6, line 83, 0(I32), t66(I8)
	c0    goto L14?3 ## goto
;;								## 15
.trace 9
L15?3:
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    goto L16?3 ## goto
;;								## 0
.trace 15
L10?3:
	c0    add $r0.5 = $r0.5, 6   ## bblock 13, line 0,  t84,  t117,  6(I32)
	c0    mov $r0.7 = 48   ## 48(SI32)
	c0    ldw.d $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 15, line 72, t15, 0(I32)
	      ## goto
;;
	c0    goto L12?3 ## goto
;;								## 0
.trace 14
L9?3:
	c0    add $r0.5 = $r0.5, 5   ## bblock 21, line 0,  t84,  t117,  5(I32)
	c0    mov $r0.7 = 48   ## 48(SI32)
	c0    ldw.d $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 15, line 72, t15, 0(I32)
	      ## goto
;;
	c0    goto L12?3 ## goto
;;								## 0
.trace 13
L8?3:
	c0    add $r0.5 = $r0.5, 4   ## bblock 23, line 0,  t84,  t117,  4(I32)
	c0    mov $r0.7 = 48   ## 48(SI32)
	c0    ldw.d $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 15, line 72, t15, 0(I32)
	      ## goto
;;
	c0    goto L12?3 ## goto
;;								## 0
.trace 12
L7?3:
	c0    add $r0.5 = $r0.5, 3   ## bblock 26, line 0,  t84,  t117,  3(I32)
	c0    mov $r0.7 = 48   ## 48(SI32)
	c0    ldw.d $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 15, line 72, t15, 0(I32)
	      ## goto
;;
	c0    goto L12?3 ## goto
;;								## 0
.trace 11
L6?3:
	c0    add $r0.5 = $r0.5, 2   ## bblock 29, line 0,  t84,  t117,  2(I32)
	c0    mov $r0.7 = 48   ## 48(SI32)
	c0    ldw.d $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 15, line 72, t15, 0(I32)
	      ## goto
;;
	c0    goto L12?3 ## goto
;;								## 0
.trace 10
L5?3:
	c0    add $r0.5 = $r0.5, 1   ## bblock 32, line 0,  t84,  t117,  1(I32)
;;								## 0
	c0    mov $r0.7 = 48   ## 48(SI32)
	c0    ldw.d $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 15, line 72, t15, 0(I32)
	c0    goto L12?3 ## goto
;;								## 1
.trace 6
L4?3:
	   ## bblock 33, line 0,  t84,  t117## $r0.5(skipped)
	c0    ldw.d $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 15, line 72, t15, 0(I32)
	c0    mov $r0.7 = 48   ## 48(SI32)
;;								## 0
L12?3:
	c0    cmpeq $b0.0 = $r0.5, 10   ## bblock 3, line 71,  t196(I1),  t84,  10(SI32)
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    mov $r0.6 = 48   ## 48(I32)
;;								## 1
	c0    add $r0.8 = $r0.2, 1   ## [spec] bblock 15, line 72,  t16,  t15,  1(SI32)
	c0    brf $b0.0, L13?3   ## bblock 3, line 71,  t196(I1)
;;								## 2
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.8   ## bblock 15, line 72, 0(I32), t16
;;								## 3
	c0    stb 0[$r0.2] = $r0.7   ## bblock 15, line 72, t15, 48(SI32)
;;								## 4
	c0    stb 0xd1000000[$r0.0] = $r0.6   ## bblock 15, line 73, 0(I32), 48(I32)
;;								## 5
L16?3:
	c0    ldw $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 5, line 86, t67, 0(I32)
;;								## 6
;;								## 7
.return ret($r0.3:s32)
	c0    stb 0[$r0.2] = $r0.0   ## bblock 5, line 86, t67, 0(SI32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 5, line 87,  t69,  ?2.4?2auto_size(I32),  t68
;;								## 8
.trace 7
L2?3:
	c0    mov $r0.16 = $r0.3   ## bblock 1, line 61,  t85,  t80
	c0    mov $r0.4 = $r0.3   ## t80
	c0    goto L3?3 ## goto
;;								## 0
.endp
.section .bss
.section .data
_?1PACKET.4:
    .data4 1000000000
    .data4 100000000
    .data4 10000000
    .data4 1000000
    .data4 100000
    .data4 10000
    .data4 1000
    .data4 100
    .data4 10
    .data4 1
.section .data
.section .text
.equ ?2.4?2auto_size, 0x0
 ## End putd
 ## Begin putx
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:s32)
putx::
.trace 3
	      ## auto_size == 0
	c0    ldw $r0.4 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 0, line 95, t1, 0(I32)
;;								## 0
	c0    mov $r0.9 = 120   ## 120(I32)
	c0    mov $r0.8 = 120   ## 120(SI32)
	c0    mov $r0.7 = 48   ## 48(I32)
	c0    mov $r0.6 = 48   ## 48(SI32)
;;								## 1
	c0    add $r0.10 = $r0.4, 1   ## bblock 0, line 95,  t2,  t1,  1(SI32)
	c0    mov $r0.5 = (~0x7)   ## bblock 0, line 0,  t78,  (~0x7)(I32)
	c0    mov $r0.2 = $r0.3   ## t41
;;								## 2
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.10   ## bblock 0, line 95, 0(I32), t2
;;								## 3
	c0    stb 0[$r0.4] = $r0.6   ## bblock 0, line 95, t1, 48(SI32)
;;								## 4
	c0    stb 0xd1000000[$r0.0] = $r0.7   ## bblock 0, line 96, 0(I32), 48(I32)
;;								## 5
	c0    ldw $r0.3 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 0, line 97, t3, 0(I32)
;;								## 6
;;								## 7
	c0    add $r0.4 = $r0.3, 1   ## bblock 0, line 97,  t4,  t3,  1(SI32)
;;								## 8
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.4   ## bblock 0, line 97, 0(I32), t4
;;								## 9
	c0    stb 0[$r0.3] = $r0.8   ## bblock 0, line 97, t3, 120(SI32)
;;								## 10
	c0    stb 0xd1000000[$r0.0] = $r0.9   ## bblock 0, line 98, 0(I32), 120(I32)
;;								## 11
.trace 1
L17?3:
	c0    cmplt $b0.0 = $r0.5, $r0.0   ## bblock 1, line 99,  t91(I1),  t78,  0(SI32)
	c0    shru $r0.3 = $r0.2, 28   ## [spec] bblock 3, line 100,  t51(I4),  t41,  28(SI32)
	c0    ldw.d $r0.4 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 3, line 102, t47, 0(I32)
;;								## 0
	c0    sxtb $r0.3 = $r0.3   ## [spec] bblock 3, line 100,  t14(SI8),  t51(I4)
	c0    shl $r0.2 = $r0.2, 4   ## [spec] bblock 3, line 104,  t45,  t41,  4(SI32)
	c0    add $r0.5 = $r0.5, 4   ## [spec] bblock 3, line 0,  t78,  t78,  4(I32)
	c0    brf $b0.0, L18?3   ## bblock 1, line 99,  t91(I1)
;;								## 1
	c0    add $r0.6 = $r0.3, 48   ## bblock 3, line 101,  t13,  t14(SI8),  48(SI32)
	c0    add $r0.3 = $r0.3, 55   ## bblock 3, line 101,  t44,  t14(SI8),  55(SI32)
	c0    cmplt $b0.0 = $r0.3, 10   ## bblock 3, line 101,  t92(I1),  t14(SI8),  10(SI32)
	c0    add $r0.7 = $r0.4, 1   ## bblock 3, line 102,  t46,  t47,  1(SI32)
;;								## 2
	c0    slct $r0.6 = $b0.0, $r0.6, $r0.3   ## bblock 3, line 101,  t50,  t92(I1),  t13,  t44
	c0    shru $r0.3 = $r0.2, 28   ## bblock 3, line 100-1,  t64(I4),  t45,  28(SI32)
	c0    shl $r0.2 = $r0.2, 4   ## bblock 3, line 104-1,  t73,  t45,  4(SI32)
;;								## 3
	c0    sxtb $r0.8 = $r0.6   ## bblock 3, line 101,  t49(SI8),  t50
	c0    zxtb $r0.6 = $r0.6   ## bblock 3, line 103,  t48(I8),  t50
	c0    sxtb $r0.3 = $r0.3   ## bblock 3, line 100-1,  t65(SI8),  t64(I4)
	c0    shru $r0.9 = $r0.2, 28   ## bblock 3, line 100-2,  t53(I4),  t73,  28(SI32)
;;								## 4
	c0    add $r0.10 = $r0.3, 48   ## bblock 3, line 101-1,  t66,  t65(SI8),  48(SI32)
	c0    add $r0.3 = $r0.3, 55   ## bblock 3, line 101-1,  t67,  t65(SI8),  55(SI32)
	c0    cmplt $b0.0 = $r0.3, 10   ## bblock 3, line 101-1,  t93(I1),  t65(SI8),  10(SI32)
	c0    sxtb $r0.9 = $r0.9   ## bblock 3, line 100-2,  t54(SI8),  t53(I4)
;;								## 5
	c0    slct $r0.10 = $b0.0, $r0.10, $r0.3   ## bblock 3, line 101-1,  t68,  t93(I1),  t66,  t67
	c0    add $r0.3 = $r0.9, 48   ## bblock 3, line 101-2,  t55,  t54(SI8),  48(SI32)
	c0    add $r0.9 = $r0.9, 55   ## bblock 3, line 101-2,  t56,  t54(SI8),  55(SI32)
	c0    cmplt $b0.0 = $r0.9, 10   ## bblock 3, line 101-2,  t94(I1),  t54(SI8),  10(SI32)
;;								## 6
	c0    sxtb $r0.11 = $r0.10   ## bblock 3, line 101-1,  t69(SI8),  t68
	c0    zxtb $r0.10 = $r0.10   ## bblock 3, line 103-1,  t70(I8),  t68
	c0    slct $r0.3 = $b0.0, $r0.3, $r0.9   ## bblock 3, line 101-2,  t57,  t94(I1),  t55,  t56
	c0    shl $r0.2 = $r0.2, 4   ## bblock 3, line 104-2,  t62,  t73,  4(SI32)
;;								## 7
	c0    sxtb $r0.9 = $r0.3   ## bblock 3, line 101-2,  t58(SI8),  t57
	c0    zxtb $r0.3 = $r0.3   ## bblock 3, line 103-2,  t59(I8),  t57
	c0    shru $r0.12 = $r0.2, 28   ## bblock 3, line 100-3,  t9(I4),  t62,  28(SI32)
	c0    shl $r0.2 = $r0.2, 4   ## bblock 3, line 104-3,  t41,  t62,  4(SI32)
;;								## 8
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.7   ## bblock 3, line 102, 0(I32), t46
	c0    sxtb $r0.12 = $r0.12   ## bblock 3, line 100-3,  t43(SI8),  t9(I4)
;;								## 9
	c0    stb 0[$r0.4] = $r0.8   ## bblock 3, line 102, t47, t49(SI8)
	c0    add $r0.7 = $r0.12, 48   ## bblock 3, line 101-3,  t42,  t43(SI8),  48(SI32)
	c0    add $r0.12 = $r0.12, 55   ## bblock 3, line 101-3,  t15,  t43(SI8),  55(SI32)
	c0    cmplt $b0.0 = $r0.12, 10   ## bblock 3, line 101-3,  t95(I1),  t43(SI8),  10(SI32)
;;								## 10
	c0    stb 0xd1000000[$r0.0] = $r0.6   ## bblock 3, line 103, 0(I32), t48(I8)
	c0    slct $r0.7 = $b0.0, $r0.7, $r0.12   ## bblock 3, line 101-3,  t16,  t95(I1),  t42,  t15
;;								## 11
	c0    ldw $r0.4 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 3, line 102-1, t71, 0(I32)
	c0    sxtb $r0.6 = $r0.7   ## bblock 3, line 101-3,  t21(SI8),  t16
	c0    zxtb $r0.7 = $r0.7   ## bblock 3, line 103-3,  t22(I8),  t16
;;								## 12
;;								## 13
	c0    add $r0.8 = $r0.4, 1   ## bblock 3, line 102-1,  t72,  t71,  1(SI32)
;;								## 14
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.8   ## bblock 3, line 102-1, 0(I32), t72
;;								## 15
	c0    stb 0[$r0.4] = $r0.11   ## bblock 3, line 102-1, t71, t69(SI8)
;;								## 16
	c0    stb 0xd1000000[$r0.0] = $r0.10   ## bblock 3, line 103-1, 0(I32), t70(I8)
;;								## 17
	c0    ldw $r0.4 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 3, line 102-2, t60, 0(I32)
;;								## 18
;;								## 19
	c0    add $r0.8 = $r0.4, 1   ## bblock 3, line 102-2,  t61,  t60,  1(SI32)
;;								## 20
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.8   ## bblock 3, line 102-2, 0(I32), t61
;;								## 21
	c0    stb 0[$r0.4] = $r0.9   ## bblock 3, line 102-2, t60, t58(SI8)
;;								## 22
	c0    stb 0xd1000000[$r0.0] = $r0.3   ## bblock 3, line 103-2, 0(I32), t59(I8)
;;								## 23
	c0    ldw $r0.3 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 3, line 102-3, t19, 0(I32)
;;								## 24
;;								## 25
	c0    add $r0.4 = $r0.3, 1   ## bblock 3, line 102-3,  t20,  t19,  1(SI32)
;;								## 26
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.4   ## bblock 3, line 102-3, 0(I32), t20
;;								## 27
	c0    stb 0[$r0.3] = $r0.6   ## bblock 3, line 102-3, t19, t21(SI8)
;;								## 28
	c0    stb 0xd1000000[$r0.0] = $r0.7   ## bblock 3, line 103-3, 0(I32), t22(I8)
	c0    goto L17?3 ## goto
;;								## 29
.trace 4
L18?3:
	c0    ldw $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 2, line 106, t25, 0(I32)
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
;;								## 1
.return ret($r0.3:s32)
	c0    stb 0[$r0.2] = $r0.0   ## bblock 2, line 106, t25, 0(SI32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 107,  t27,  ?2.5?2auto_size(I32),  t26
;;								## 2
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.5?2auto_size, 0x0
 ## End putx
 ## Begin rvex_succeed
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32)
rvex_succeed::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
;;								## 0
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 0, line 111,  raddr(puts)(P32),  t1
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t2
;;								## 1
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t2
;;								## 2
;;								## 3
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 112,  t3,  ?2.6?2auto_size(I32),  t2
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.6?2scratch.0, 0x0
.equ ?2.6?2ras_p, 0x10
.section .data
.section .text
.equ ?2.6?2auto_size, 0x20
 ## End rvex_succeed
 ## Begin rvex_fail
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32)
rvex_fail::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
;;								## 0
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 0, line 116,  raddr(puts)(P32),  t1
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t2
;;								## 1
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t2
;;								## 2
;;								## 3
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 117,  t3,  ?2.7?2auto_size(I32),  t2
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.7?2scratch.0, 0x0
.equ ?2.7?2ras_p, 0x10
.section .data
.section .text
.equ ?2.7?2auto_size, 0x20
 ## End rvex_fail
 ## Begin log_value
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:s32)
log_value::
.trace 3
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    mov $r0.2 = $r0.3   ## t38
	c0    mov $r0.6 = $r0.4   ## t33
;;								## 0
	c0    mov $r0.7 = $l0.0   ## t19
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t19
;;								## 1
.trace 1
L19?3:
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 1, line 121, t1(SI8), t38
;;								## 0
	c0    ldw.d $r0.4 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 4, line 122, t36, 0(I32)
;;								## 1
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 1, line 121,  t84(I1),  t1(SI8),  0(SI32)
;;								## 2
	c0    add $r0.5 = $r0.4, 1   ## [spec] bblock 4, line 122,  t35,  t36,  1(SI32)
	c0    brf $b0.0, L20?3   ## bblock 1, line 121,  t84(I1)
;;								## 3
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.5   ## bblock 4, line 122, 0(I32), t35
;;								## 4
	c0    stb 0[$r0.4] = $r0.3   ## bblock 4, line 122, t36, t1(SI8)
;;								## 5
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 4, line 123, t8(SI8), t38
;;								## 6
;;								## 7
	c0    zxtb $r0.3 = $r0.3   ## bblock 4, line 123,  t9(I8),  t8(SI8)
;;								## 8
	c0    stb 0xd1000000[$r0.0] = $r0.3   ## bblock 4, line 123, 0(I32), t9(I8)
;;								## 9
	c0    ldb $r0.3 = 1[$r0.2]   ## bblock 4, line 121-1, t58(SI8), t38
;;								## 10
	c0    ldw.d $r0.4 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 18, line 122-1, t59, 0(I32)
;;								## 11
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 4, line 121-1,  t85(I1),  t58(SI8),  0(SI32)
;;								## 12
	c0    add $r0.5 = $r0.4, 1   ## [spec] bblock 18, line 122-1,  t60,  t59,  1(SI32)
	c0    brf $b0.0, L20?3   ## bblock 4, line 121-1,  t85(I1)
;;								## 13
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.5   ## bblock 18, line 122-1, 0(I32), t60
;;								## 14
	c0    stb 0[$r0.4] = $r0.3   ## bblock 18, line 122-1, t59, t58(SI8)
;;								## 15
	c0    ldb $r0.3 = 1[$r0.2]   ## bblock 18, line 123-1, t61(SI8), t38
;;								## 16
;;								## 17
	c0    zxtb $r0.3 = $r0.3   ## bblock 18, line 123-1,  t62(I8),  t61(SI8)
;;								## 18
	c0    stb 0xd1000000[$r0.0] = $r0.3   ## bblock 18, line 123-1, 0(I32), t62(I8)
;;								## 19
	c0    ldb $r0.3 = 2[$r0.2]   ## bblock 18, line 121-2, t52(SI8), t38
;;								## 20
	c0    ldw.d $r0.4 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 15, line 122-2, t53, 0(I32)
;;								## 21
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 18, line 121-2,  t89(I1),  t52(SI8),  0(SI32)
;;								## 22
	c0    add $r0.5 = $r0.4, 1   ## [spec] bblock 15, line 122-2,  t54,  t53,  1(SI32)
	c0    brf $b0.0, L20?3   ## bblock 18, line 121-2,  t89(I1)
;;								## 23
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.5   ## bblock 15, line 122-2, 0(I32), t54
;;								## 24
	c0    stb 0[$r0.4] = $r0.3   ## bblock 15, line 122-2, t53, t52(SI8)
;;								## 25
	c0    ldb $r0.3 = 2[$r0.2]   ## bblock 15, line 123-2, t55(SI8), t38
;;								## 26
;;								## 27
	c0    zxtb $r0.3 = $r0.3   ## bblock 15, line 123-2,  t56(I8),  t55(SI8)
;;								## 28
	c0    stb 0xd1000000[$r0.0] = $r0.3   ## bblock 15, line 123-2, 0(I32), t56(I8)
;;								## 29
	c0    ldb $r0.3 = 3[$r0.2]   ## bblock 15, line 121-3, t46(SI8), t38
;;								## 30
	c0    ldw.d $r0.4 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 12, line 122-3, t47, 0(I32)
;;								## 31
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 15, line 121-3,  t88(I1),  t46(SI8),  0(SI32)
;;								## 32
	c0    add $r0.5 = $r0.4, 1   ## [spec] bblock 12, line 122-3,  t48,  t47,  1(SI32)
	c0    brf $b0.0, L20?3   ## bblock 15, line 121-3,  t88(I1)
;;								## 33
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.5   ## bblock 12, line 122-3, 0(I32), t48
;;								## 34
	c0    stb 0[$r0.4] = $r0.3   ## bblock 12, line 122-3, t47, t46(SI8)
;;								## 35
	c0    ldb $r0.3 = 3[$r0.2]   ## bblock 12, line 123-3, t49(SI8), t38
;;								## 36
;;								## 37
	c0    zxtb $r0.3 = $r0.3   ## bblock 12, line 123-3,  t50(I8),  t49(SI8)
;;								## 38
	c0    stb 0xd1000000[$r0.0] = $r0.3   ## bblock 12, line 123-3, 0(I32), t50(I8)
;;								## 39
	c0    ldb $r0.3 = 4[$r0.2]   ## bblock 12, line 121-4, t34(SI8), t38
;;								## 40
	c0    ldw.d $r0.4 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 9, line 122-4, t41, 0(I32)
;;								## 41
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 12, line 121-4,  t87(I1),  t34(SI8),  0(SI32)
;;								## 42
	c0    add $r0.5 = $r0.4, 1   ## [spec] bblock 9, line 122-4,  t42,  t41,  1(SI32)
	c0    brf $b0.0, L20?3   ## bblock 12, line 121-4,  t87(I1)
;;								## 43
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.5   ## bblock 9, line 122-4, 0(I32), t42
;;								## 44
	c0    stb 0[$r0.4] = $r0.3   ## bblock 9, line 122-4, t41, t34(SI8)
;;								## 45
	c0    ldb $r0.3 = 4[$r0.2]   ## bblock 9, line 123-4, t43(SI8), t38
;;								## 46
;;								## 47
	c0    zxtb $r0.3 = $r0.3   ## bblock 9, line 123-4,  t44(I8),  t43(SI8)
;;								## 48
	c0    stb 0xd1000000[$r0.0] = $r0.3   ## bblock 9, line 123-4, 0(I32), t44(I8)
;;								## 49
	c0    ldb $r0.3 = 5[$r0.2]   ## bblock 9, line 121-5, t37(SI8), t38
;;								## 50
	c0    ldw.d $r0.4 = ((record_ptr + 0) + 0)[$r0.0]   ## [spec] bblock 6, line 122-5, t4, 0(I32)
;;								## 51
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 9, line 121-5,  t86(I1),  t37(SI8),  0(SI32)
;;								## 52
	c0    add $r0.5 = $r0.4, 1   ## [spec] bblock 6, line 122-5,  t5,  t4,  1(SI32)
	c0    brf $b0.0, L20?3   ## bblock 9, line 121-5,  t86(I1)
;;								## 53
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.5   ## bblock 6, line 122-5, 0(I32), t5
;;								## 54
	c0    stb 0[$r0.4] = $r0.3   ## bblock 6, line 122-5, t4, t37(SI8)
;;								## 55
	c0    ldb $r0.3 = 5[$r0.2]   ## bblock 6, line 123-5, t40(SI8), t38
	c0    add $r0.2 = $r0.2, 6   ## bblock 6, line 123-5,  t38,  t38,  6(SI32)
;;								## 56
;;								## 57
	c0    zxtb $r0.3 = $r0.3   ## bblock 6, line 123-5,  t39(I8),  t40(SI8)
;;								## 58
	c0    stb 0xd1000000[$r0.0] = $r0.3   ## bblock 6, line 123-5, 0(I32), t39(I8)
	c0    goto L19?3 ## goto
;;								## 59
.trace 4
L20?3:
	c0    stw 0x10[$r0.1] = $r0.7  ## spill ## t19
	c0    mov $r0.5 = 32   ## 32(SI32)
	c0    mov $r0.4 = 58   ## 58(I32)
	c0    mov $r0.2 = 58   ## 58(SI32)
;;								## 0
	c0    ldw $r0.7 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 2, line 125, t10, 0(I32)
	c0    mov $r0.3 = $r0.6   ## t33
	c0    mov $r0.8 = 32   ## 32(I32)
;;								## 1
;;								## 2
	c0    add $r0.6 = $r0.7, 1   ## bblock 2, line 125,  t11,  t10,  1(SI32)
;;								## 3
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.6   ## bblock 2, line 125, 0(I32), t11
;;								## 4
	c0    stb 0[$r0.7] = $r0.2   ## bblock 2, line 125, t10, 58(SI32)
;;								## 5
	c0    stb 0xd1000000[$r0.0] = $r0.4   ## bblock 2, line 126, 0(I32), 58(I32)
;;								## 6
	c0    ldw $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 2, line 127, t12, 0(I32)
;;								## 7
;;								## 8
	c0    add $r0.4 = $r0.2, 1   ## bblock 2, line 127,  t13,  t12,  1(SI32)
;;								## 9
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.4   ## bblock 2, line 127, 0(I32), t13
;;								## 10
	c0    stb 0[$r0.2] = $r0.5   ## bblock 2, line 127, t12, 32(SI32)
;;								## 11
.call putd, caller, arg($r0.3:s32), ret($r0.3:s32)
	c0    stb 0xd1000000[$r0.0] = $r0.8   ## bblock 2, line 128, 0(I32), 32(I32)
	c0    call $l0.0 = putd   ## bblock 2, line 129,  raddr(putd)(P32),  t33
;;								## 12
	c0    ldw $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 3, line 130, t16, 0(I32)
	c0    mov $r0.4 = 10   ## 10(I32)
	c0    mov $r0.3 = 10   ## 10(SI32)
;;								## 13
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t19
;;								## 14
	c0    add $r0.5 = $r0.2, 1   ## bblock 3, line 130,  t17,  t16,  1(SI32)
;;								## 15
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.5   ## bblock 3, line 130, 0(I32), t17
;;								## 16
	c0    stb 0[$r0.2] = $r0.3   ## bblock 3, line 130, t16, 10(SI32)
;;								## 17
	c0    stb 0xd1000000[$r0.0] = $r0.4   ## bblock 3, line 131, 0(I32), 10(I32)
;;								## 18
	c0    ldw $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 3, line 132, t18, 0(I32)
;;								## 19
;;								## 20
.return ret()
	c0    stb 0[$r0.2] = $r0.0   ## bblock 3, line 132, t18, 0(SI32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 3, line 133,  t20,  ?2.8?2auto_size(I32),  t19
;;								## 21
.endp
.section .bss
.section .data
.equ ?2.8?2scratch.0, 0x0
.equ ?2.8?2ras_p, 0x10
.section .data
.section .text
.equ ?2.8?2auto_size, 0x20
 ## End log_value
.equ _?1TEMPLATEPACKET.15, 0x0
 ## Begin log_perfcount
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32)
log_perfcount::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    ldw $r0.2 = 0xffffff00[$r0.0]   ## bblock 0, line 140, t75, 0(I32)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t52
;;								## 1
	c0    stw 0x14[$r0.1] = $r0.2  ## spill ## t75
;;								## 2
	c0    ldw $r0.2 = 0xffffff08[$r0.0]   ## bblock 0, line 141, t74, 0(I32)
;;								## 3
	c0    ldw $r0.4 = 0xffffff10[$r0.0]   ## bblock 0, line 142, t73, 0(I32)
;;								## 4
	c0    stw 0x18[$r0.1] = $r0.2  ## spill ## t74
;;								## 5
	c0    stw 0x1c[$r0.1] = $r0.4  ## spill ## t73
;;								## 6
	c0    ldw $r0.2 = 0xffffff18[$r0.0]   ## bblock 0, line 143, t72, 0(I32)
;;								## 7
	c0    ldw $r0.4 = 0xffffff20[$r0.0]   ## bblock 0, line 144, t71, 0(I32)
;;								## 8
	c0    stw 0x20[$r0.1] = $r0.2  ## spill ## t72
;;								## 9
	c0    stw 0x24[$r0.1] = $r0.4  ## spill ## t71
;;								## 10
	c0    ldw $r0.2 = 0xffffff28[$r0.0]   ## bblock 0, line 145, t70, 0(I32)
;;								## 11
	c0    ldw $r0.4 = 0xffffff30[$r0.0]   ## bblock 0, line 146, t69, 0(I32)
;;								## 12
	c0    stw 0x28[$r0.1] = $r0.2  ## spill ## t70
;;								## 13
	c0    stw 0x2c[$r0.1] = $r0.4  ## spill ## t69
;;								## 14
	c0    ldw $r0.2 = 0xffffff38[$r0.0]   ## bblock 0, line 147, t68, 0(I32)
;;								## 15
	c0    ldw $r0.4 = 0xffffff40[$r0.0]   ## bblock 0, line 148, t67, 0(I32)
;;								## 16
	c0    stw 0x30[$r0.1] = $r0.2  ## spill ## t68
;;								## 17
	c0    stw 0x34[$r0.1] = $r0.4  ## spill ## t67
;;								## 18
	c0    ldw $r0.2 = 0xffffff48[$r0.0]   ## bblock 0, line 149, t66, 0(I32)
;;								## 19
	c0    ldw $r0.4 = 0xffffff50[$r0.0]   ## bblock 0, line 150, t65, 0(I32)
;;								## 20
	c0    stw 0x38[$r0.1] = $r0.2  ## spill ## t66
;;								## 21
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 0, line 153,  raddr(puts)(P32),  t12
	c0    stw 0x3c[$r0.1] = $r0.4  ## spill ## t65
;;								## 22
	c0    ldw $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 1, line 154, t13, 0(I32)
	c0    mov $r0.6 = 10   ## 10(I32)
	c0    mov $r0.5 = 10   ## 10(SI32)
;;								## 23
	c0    mov $r0.3 = (_?1STRINGPACKET.1 + 0)   ## addr(_?1STRINGVAR.1)(P32)
	c0    ldw $r0.4 = 0x14[$r0.1]  ## restore ## t75
;;								## 24
	c0    add $r0.7 = $r0.2, 1   ## bblock 1, line 154,  t14,  t13,  1(SI32)
;;								## 25
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.7   ## bblock 1, line 154, 0(I32), t14
;;								## 26
	c0    stb 0[$r0.2] = $r0.5   ## bblock 1, line 154, t13, 10(SI32)
;;								## 27
	c0    stb 0xd1000000[$r0.0] = $r0.6   ## bblock 1, line 155, 0(I32), 10(I32)
;;								## 28
	c0    ldw $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 1, line 156, t15, 0(I32)
;;								## 29
;;								## 30
.call log_value, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    stb 0[$r0.2] = $r0.0   ## bblock 1, line 156, t15, 0(SI32)
	c0    call $l0.0 = log_value   ## bblock 1, line 159,  raddr(log_value)(P32),  addr(_?1STRINGVAR.1)(P32),  t75
;;								## 31
	c0    mov $r0.3 = (_?1STRINGPACKET.2 + 0)   ## addr(_?1STRINGVAR.2)(P32)
	c0    ldw $r0.4 = 0x18[$r0.1]  ## restore ## t74
;;								## 32
.call log_value, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = log_value   ## bblock 2, line 160,  raddr(log_value)(P32),  addr(_?1STRINGVAR.2)(P32),  t74
;;								## 33
	c0    mov $r0.3 = (_?1STRINGPACKET.3 + 0)   ## addr(_?1STRINGVAR.3)(P32)
	c0    ldw $r0.4 = 0x1c[$r0.1]  ## restore ## t73
;;								## 34
.call log_value, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = log_value   ## bblock 3, line 161,  raddr(log_value)(P32),  addr(_?1STRINGVAR.3)(P32),  t73
;;								## 35
	c0    mov $r0.3 = (_?1STRINGPACKET.4 + 0)   ## addr(_?1STRINGVAR.4)(P32)
	c0    ldw $r0.4 = 0x20[$r0.1]  ## restore ## t72
;;								## 36
.call log_value, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = log_value   ## bblock 4, line 162,  raddr(log_value)(P32),  addr(_?1STRINGVAR.4)(P32),  t72
;;								## 37
	c0    mov $r0.3 = (_?1STRINGPACKET.5 + 0)   ## addr(_?1STRINGVAR.5)(P32)
	c0    ldw $r0.4 = 0x24[$r0.1]  ## restore ## t71
;;								## 38
.call log_value, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = log_value   ## bblock 5, line 163,  raddr(log_value)(P32),  addr(_?1STRINGVAR.5)(P32),  t71
;;								## 39
	c0    mov $r0.3 = (_?1STRINGPACKET.6 + 0)   ## addr(_?1STRINGVAR.6)(P32)
	c0    ldw $r0.4 = 0x28[$r0.1]  ## restore ## t70
;;								## 40
.call log_value, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = log_value   ## bblock 6, line 164,  raddr(log_value)(P32),  addr(_?1STRINGVAR.6)(P32),  t70
;;								## 41
	c0    mov $r0.3 = (_?1STRINGPACKET.7 + 0)   ## addr(_?1STRINGVAR.7)(P32)
	c0    ldw $r0.4 = 0x2c[$r0.1]  ## restore ## t69
;;								## 42
.call log_value, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = log_value   ## bblock 7, line 165,  raddr(log_value)(P32),  addr(_?1STRINGVAR.7)(P32),  t69
;;								## 43
	c0    mov $r0.3 = (_?1STRINGPACKET.8 + 0)   ## addr(_?1STRINGVAR.8)(P32)
	c0    ldw $r0.4 = 0x30[$r0.1]  ## restore ## t68
;;								## 44
.call log_value, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = log_value   ## bblock 8, line 166,  raddr(log_value)(P32),  addr(_?1STRINGVAR.8)(P32),  t68
;;								## 45
	c0    mov $r0.3 = (_?1STRINGPACKET.9 + 0)   ## addr(_?1STRINGVAR.9)(P32)
	c0    ldw $r0.4 = 0x34[$r0.1]  ## restore ## t67
;;								## 46
.call log_value, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = log_value   ## bblock 9, line 167,  raddr(log_value)(P32),  addr(_?1STRINGVAR.9)(P32),  t67
;;								## 47
	c0    mov $r0.3 = (_?1STRINGPACKET.10 + 0)   ## addr(_?1STRINGVAR.10)(P32)
	c0    ldw $r0.4 = 0x38[$r0.1]  ## restore ## t66
;;								## 48
.call log_value, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = log_value   ## bblock 10, line 168,  raddr(log_value)(P32),  addr(_?1STRINGVAR.10)(P32),  t66
;;								## 49
	c0    mov $r0.3 = (_?1STRINGPACKET.11 + 0)   ## addr(_?1STRINGVAR.11)(P32)
	c0    ldw $r0.4 = 0x3c[$r0.1]  ## restore ## t65
;;								## 50
.call log_value, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = log_value   ## bblock 11, line 169,  raddr(log_value)(P32),  addr(_?1STRINGVAR.11)(P32),  t65
;;								## 51
	c0    ldw $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 12, line 172, t49, 0(I32)
	c0    mov $r0.6 = 10   ## 10(I32)
	c0    mov $r0.5 = 10   ## 10(SI32)
;;								## 52
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t52
;;								## 53
	c0    add $r0.3 = $r0.2, 1   ## bblock 12, line 172,  t50,  t49,  1(SI32)
;;								## 54
	c0    stw ((record_ptr + 0) + 0)[$r0.0] = $r0.3   ## bblock 12, line 172, 0(I32), t50
;;								## 55
	c0    stb 0[$r0.2] = $r0.5   ## bblock 12, line 172, t49, 10(SI32)
;;								## 56
	c0    stb 0xd1000000[$r0.0] = $r0.6   ## bblock 12, line 173, 0(I32), 10(I32)
;;								## 57
	c0    ldw $r0.2 = ((record_ptr + 0) + 0)[$r0.0]   ## bblock 12, line 174, t51, 0(I32)
;;								## 58
;;								## 59
.return ret()
	c0    stb 0[$r0.2] = $r0.0   ## bblock 12, line 174, t51, 0(SI32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 12, line 176,  t53,  ?2.9?2auto_size(I32),  t52
;;								## 60
.endp
.section .bss
.section .data
_?1STRINGPACKET.2:
    .data1 83
    .data1 84
    .data1 65
    .data1 76
    .data1 76
    .data1 0
.skip 2
_?1STRINGPACKET.6:
    .data1 73
    .data1 65
    .data1 67
    .data1 67
    .data1 0
.skip 3
_?1STRINGPACKET.7:
    .data1 73
    .data1 77
    .data1 73
    .data1 83
    .data1 83
    .data1 0
.skip 2
_?1STRINGPACKET.8:
    .data1 68
    .data1 82
    .data1 65
    .data1 67
    .data1 67
    .data1 0
.skip 2
_?1STRINGPACKET.9:
    .data1 68
    .data1 82
    .data1 77
    .data1 73
    .data1 83
    .data1 83
    .data1 0
.skip 1
_?1STRINGPACKET.10:
    .data1 68
    .data1 87
    .data1 65
    .data1 67
    .data1 67
    .data1 0
.skip 2
_?1STRINGPACKET.11:
    .data1 68
    .data1 87
    .data1 77
    .data1 73
    .data1 83
    .data1 83
    .data1 0
.skip 1
_?1STRINGPACKET.1:
    .data1 67
    .data1 89
    .data1 67
    .data1 0
_?1STRINGPACKET.3:
    .data1 66
    .data1 85
    .data1 78
    .data1 0
_?1STRINGPACKET.4:
    .data1 83
    .data1 89
    .data1 76
    .data1 0
_?1STRINGPACKET.5:
    .data1 78
    .data1 79
    .data1 80
    .data1 0
.equ ?2.9?2scratch.0, 0x0
.equ ?2.9?2ras_p, 0x10
.equ ?2.9?2spill_p, 0x14
.section .data
.section .text
.equ ?2.9?2auto_size, 0x40
 ## End log_perfcount
.section .bss
.section .data
.section .data
.import record_ptr
.type record_ptr,@object
.section .text
.import log_value
.type log_value,@function
.import putd
.type putd,@function
.import puts
.type puts,@function
