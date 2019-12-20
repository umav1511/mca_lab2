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
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg()
main::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    mov $r0.5 = 9   ## 9(SI32)
	c0    mov $r0.3 = (_?1PACKET.4 + 0)   ## addr(fname.?1AUTOINIT?1.85)(P32)
;;								## 0
	c0    add $r0.2 = $r0.1, 0x10   ## bblock 0, line 12,  t11,  t16,  offset(v?1.85)=0x10(P32)
	c0    add $r0.4 = $r0.1, 0x1c   ## bblock 0, line 13,  t6,  t16,  offset(fname?1.85)=0x1c(P32)
	c0    stw 0x28[$r0.1] = $l0.0  ## spill ## t15
;;								## 1
	c0    stw 0x2c[$r0.1] = $r0.4  ## spill ## t6
;;								## 2
.call _bcopy, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:s32), ret()
	c0    call $l0.0 = _bcopy   ## bblock 0, line 13,  raddr(_bcopy)(P32),  addr(fname.?1AUTOINIT?1.85)(P32),  t6,  9(SI32)
	c0    stw 0x30[$r0.1] = $r0.2  ## spill ## t11
;;								## 3
	c0    mov $r0.3 = 1   ## 1(SI32)
	c0    mov $r0.6 = 800   ## 800(SI32)
	c0    mov $r0.5 = (compress_27933.Buf + 0)   ## addr(compress_27933.Buf?1.0)(P32)
	c0    ldw $r0.2 = 0x2c[$r0.1]  ## restore ## t6
;;								## 4
	c0    ldw $r0.4 = 0x30[$r0.1]  ## restore ## t11
;;								## 5
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.0   ## bblock 0, line 17, 0(I32), 0x0(P32)
;;								## 6
	c0    stw 0[$r0.4] = $r0.2   ## bblock 0, line 16, t11, t6
;;								## 7
	c0    stw ((bufp + 0) + 0)[$r0.0] = $r0.5   ## bblock 0, line 18, 0(I32), addr(compress_27933.Buf?1.0)(P32)
;;								## 8
.call Compress, caller, arg($r0.3:s32,$r0.4:u32), ret($r0.3:s32)
	c0    stw ((buflen + 0) + 0)[$r0.0] = $r0.6   ## bblock 0, line 19, 0(I32), 800(SI32)
	c0    call $l0.0 = Compress   ## bblock 0, line 20,  raddr(Compress)(P32),  1(SI32),  t11
;;								## 9
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 1, line 21,  raddr(puts)(P32),  addr(_?1STRINGVAR.1)(P32)
	c0    mov $r0.3 = (_?1STRINGPACKET.1 + 0)   ## addr(_?1STRINGVAR.1)(P32)
;;								## 10
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x28[$r0.1]  ## restore ## t15
;;								## 11
;;								## 12
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 2, line 22,  t16,  ?2.1?2auto_size(I32),  t15
;;								## 13
.endp
.section .bss
.section .data
_?1PACKET.4:
    .data1 67
    .data1 111
    .data1 109
    .data1 112
    .data1 114
    .data1 101
    .data1 115
    .data1 115
    .data1 0
.skip 3
_?1STRINGPACKET.1:
    .data1 99
    .data1 111
    .data1 109
    .data1 112
    .data1 114
    .data1 101
    .data1 115
    .data1 115
    .data1 58
    .data1 32
    .data1 115
    .data1 117
    .data1 99
    .data1 99
    .data1 101
    .data1 115
    .data1 115
    .data1 10
    .data1 0
.equ ?2.1?2scratch.0, 0x0
.equ _?1PACKET.3, 0x10
.equ _?1PACKET.5, 0x1c
.equ ?2.1?2ras_p, 0x28
.equ ?2.1?2spill_p, 0x2c
.section .data
.section .text
.equ ?2.1?2auto_size, 0x40
 ## End main
 ## Begin Usage
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg()
Usage::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    mov $r0.3 = (_?1STRINGPACKET.2 + 0)   ## addr(_?1STRINGVAR.2)(P32)
;;								## 0
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 0, line 44,  raddr(puts)(P32),  addr(_?1STRINGVAR.2)(P32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t3
;;								## 1
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t3
;;								## 2
;;								## 3
.return ret()
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 45,  t4,  ?2.2?2auto_size(I32),  t3
;;								## 4
.endp
.section .bss
.section .data
.skip 1
_?1STRINGPACKET.2:
    .data1 85
    .data1 115
    .data1 97
    .data1 103
    .data1 101
    .data1 58
    .data1 32
    .data1 99
    .data1 111
    .data1 109
    .data1 112
    .data1 114
    .data1 101
    .data1 115
    .data1 115
    .data1 32
    .data1 91
    .data1 45
    .data1 100
    .data1 102
    .data1 118
    .data1 99
    .data1 86
    .data1 93
    .data1 32
    .data1 91
    .data1 45
    .data1 98
    .data1 32
    .data1 109
    .data1 97
    .data1 120
    .data1 98
    .data1 105
    .data1 116
    .data1 115
    .data1 93
    .data1 32
    .data1 10
    .data1 0
.equ ?2.2?2scratch.0, 0x0
.equ ?2.2?2ras_p, 0x10
.section .data
.section .text
.equ ?2.2?2auto_size, 0x20
 ## End Usage
.equ _?1TEMPLATEPACKET.11, 0x0
 ## Begin rindex
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:u32,$r0.4:u32)
rindex::
.trace 3
	      ## auto_size == 0
	c0    add $r0.8 = $r0.3, 3   ## bblock 0, line 0,  t56,  t0,  3(I32)
	c0    add $r0.12 = $r0.3, 7   ## bblock 0, line 0,  t60,  t0,  7(I32)
	c0    add $r0.11 = $r0.3, 6   ## bblock 0, line 0,  t59,  t0,  6(I32)
	c0    add $r0.10 = $r0.3, 5   ## bblock 0, line 0,  t58,  t0,  5(I32)
	c0    add $r0.9 = $r0.3, 4   ## bblock 0, line 0,  t57,  t0,  4(I32)
	c0    add $r0.7 = $r0.3, 2   ## bblock 0, line 0,  t55,  t0,  2(I32)
;;								## 0
	c0    sxtb $r0.4 = $r0.4   ## bblock 0, line 61,  t1(SI8),  t20
	c0    mov $r0.5 = $r0.0   ## bblock 0, line 64,  t23,  0x0(P32)
	c0    add $r0.6 = $r0.3, 1   ## bblock 0, line 0,  t61,  t0,  1(I32)
	c0    mov $r0.2 = $r0.3   ## t0
;;								## 1
.trace 1
L0?3:
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 1, line 64, t2(SI8), t0
;;								## 0
	c0    ldb.d $r0.13 = 0[$r0.6]   ## [spec] bblock 3, line 64-1, t51(SI8), t61
;;								## 1
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 1, line 64,  t83(I1),  t2(SI8),  0(SI32)
	c0    cmpeq $b0.1 = $r0.3, $r0.4   ## [spec] bblock 3, line 65,  t27(I1),  t2(SI8),  t1(SI8)
	c0    ldb.d $r0.3 = 0[$r0.7]   ## [spec] bblock 23, line 64-2, t47(SI8), t55
;;								## 2
	c0    slct $r0.14 = $b0.1, $r0.2, $r0.5   ## [spec] bblock 3, line 66,  t30,  t27(I1),  t0,  t23
	c0    cmpne $b0.0 = $r0.13, $r0.0   ## [spec] bblock 3, line 64-1,  t84(I1),  t51(SI8),  0(SI32)
	c0    cmpeq $b0.1 = $r0.13, $r0.4   ## [spec] bblock 23, line 65-1,  t52(I1),  t51(SI8),  t1(SI8)
	c0    ldb.d $r0.13 = 0[$r0.8]   ## [spec] bblock 20, line 64-3, t43(SI8), t56
	c0    add $r0.2 = $r0.2, 8   ## [spec] bblock 5, line 64-7,  t0,  t0,  8(SI32)
	c0    brf $b0.0, L1?3   ## bblock 1, line 64,  t83(I1)
;;								## 3
	c0    slct $r0.15 = $b0.1, $r0.6, $r0.14   ## [spec] bblock 23, line 66-1,  t53,  t52(I1),  t61,  t30
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## [spec] bblock 23, line 64-2,  t90(I1),  t47(SI8),  0(SI32)
	c0    cmpeq $b0.1 = $r0.3, $r0.4   ## [spec] bblock 20, line 65-2,  t48(I1),  t47(SI8),  t1(SI8)
	c0    ldb.d $r0.3 = 0[$r0.9]   ## [spec] bblock 17, line 64-4, t39(SI8), t57
	c0    add $r0.6 = $r0.6, 8   ## [spec] bblock 5, line 0,  t61,  t61,  8(I32)
	c0    brf $b0.0, L2?3   ## bblock 3, line 64-1,  t84(I1)
;;								## 4
	c0    slct $r0.14 = $b0.1, $r0.7, $r0.15   ## [spec] bblock 20, line 66-2,  t49,  t48(I1),  t55,  t53
	c0    cmpne $b0.0 = $r0.13, $r0.0   ## [spec] bblock 20, line 64-3,  t89(I1),  t43(SI8),  0(SI32)
	c0    cmpeq $b0.1 = $r0.13, $r0.4   ## [spec] bblock 17, line 65-3,  t44(I1),  t43(SI8),  t1(SI8)
	c0    ldb.d $r0.13 = 0[$r0.10]   ## [spec] bblock 14, line 64-5, t35(SI8), t58
	c0    add $r0.7 = $r0.7, 8   ## [spec] bblock 5, line 0,  t55,  t55,  8(I32)
	c0    brf $b0.0, L3?3   ## bblock 23, line 64-2,  t90(I1)
;;								## 5
	c0    slct $r0.15 = $b0.1, $r0.8, $r0.14   ## [spec] bblock 17, line 66-3,  t45,  t44(I1),  t56,  t49
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## [spec] bblock 17, line 64-4,  t88(I1),  t39(SI8),  0(SI32)
	c0    cmpeq $b0.1 = $r0.3, $r0.4   ## [spec] bblock 14, line 65-4,  t40(I1),  t39(SI8),  t1(SI8)
	c0    ldb.d $r0.3 = 0[$r0.11]   ## [spec] bblock 11, line 64-6, t34(SI8), t59
	c0    add $r0.8 = $r0.8, 8   ## [spec] bblock 5, line 0,  t56,  t56,  8(I32)
	c0    brf $b0.0, L4?3   ## bblock 20, line 64-3,  t89(I1)
;;								## 6
	c0    slct $r0.14 = $b0.1, $r0.9, $r0.15   ## [spec] bblock 14, line 66-4,  t41,  t40(I1),  t57,  t45
	c0    cmpne $b0.0 = $r0.13, $r0.0   ## [spec] bblock 14, line 64-5,  t87(I1),  t35(SI8),  0(SI32)
	c0    cmpeq $b0.1 = $r0.13, $r0.4   ## [spec] bblock 11, line 65-5,  t36(I1),  t35(SI8),  t1(SI8)
	c0    ldb.d $r0.13 = 0[$r0.12]   ## [spec] bblock 8, line 64-7, t28(SI8), t60
	c0    add $r0.9 = $r0.9, 8   ## [spec] bblock 5, line 0,  t57,  t57,  8(I32)
	c0    brf $b0.0, L5?3   ## bblock 17, line 64-4,  t88(I1)
;;								## 7
	c0    slct $r0.15 = $b0.1, $r0.10, $r0.14   ## [spec] bblock 11, line 66-5,  t37,  t36(I1),  t58,  t41
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## [spec] bblock 11, line 64-6,  t86(I1),  t34(SI8),  0(SI32)
	c0    cmpeq $b0.1 = $r0.3, $r0.4   ## [spec] bblock 8, line 65-6,  t32(I1),  t34(SI8),  t1(SI8)
	c0    add $r0.10 = $r0.10, 8   ## [spec] bblock 5, line 0,  t58,  t58,  8(I32)
	c0    brf $b0.0, L6?3   ## bblock 14, line 64-5,  t87(I1)
;;								## 8
	c0    slct $r0.3 = $b0.1, $r0.11, $r0.15   ## [spec] bblock 8, line 66-6,  t33,  t32(I1),  t59,  t37
	c0    cmpne $b0.0 = $r0.13, $r0.0   ## [spec] bblock 8, line 64-7,  t85(I1),  t28(SI8),  0(SI32)
	c0    cmpeq $b0.1 = $r0.13, $r0.4   ## [spec] bblock 5, line 65-7,  t24(I1),  t28(SI8),  t1(SI8)
	c0    add $r0.11 = $r0.11, 8   ## [spec] bblock 5, line 0,  t59,  t59,  8(I32)
	c0    brf $b0.0, L7?3   ## bblock 11, line 64-6,  t86(I1)
;;								## 9
	c0    slct $r0.5 = $b0.1, $r0.12, $r0.3   ## [spec] bblock 5, line 66-7,  t23,  t24(I1),  t60,  t33
	c0    add $r0.12 = $r0.12, 8   ## [spec] bblock 5, line 0,  t60,  t60,  8(I32)
	c0    brf $b0.0, L8?3   ## bblock 8, line 64-7,  t85(I1)
	      ## goto
;;
	c0    goto L0?3 ## goto
;;								## 10
.trace 11
L8?3:
.return ret($r0.3:u32)
	   ## bblock 6, line 0,  t29,  t33## $r0.3(skipped)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 67,  t8,  ?2.3?2auto_size(I32),  t7
;;								## 0
.trace 10
L7?3:
.return ret($r0.3:u32)
	c0    mov $r0.3 = $r0.15   ## bblock 9, line 0,  t29,  t37
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 67,  t8,  ?2.3?2auto_size(I32),  t7
;;								## 0
.trace 9
L6?3:
.return ret($r0.3:u32)
	c0    mov $r0.3 = $r0.14   ## bblock 12, line 0,  t29,  t41
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 67,  t8,  ?2.3?2auto_size(I32),  t7
;;								## 0
.trace 8
L5?3:
.return ret($r0.3:u32)
	c0    mov $r0.3 = $r0.15   ## bblock 15, line 0,  t29,  t45
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 67,  t8,  ?2.3?2auto_size(I32),  t7
;;								## 0
.trace 7
L4?3:
;;								## 0
.return ret($r0.3:u32)
	c0    mov $r0.3 = $r0.14   ## bblock 18, line 0,  t29,  t49
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 67,  t8,  ?2.3?2auto_size(I32),  t7
;;								## 1
.trace 6
L3?3:
.return ret($r0.3:u32)
	c0    mov $r0.3 = $r0.15   ## bblock 21, line 0,  t29,  t53
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 67,  t8,  ?2.3?2auto_size(I32),  t7
;;								## 0
.trace 5
L2?3:
;;								## 0
.return ret($r0.3:u32)
	c0    mov $r0.3 = $r0.14   ## bblock 24, line 0,  t29,  t30
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 67,  t8,  ?2.3?2auto_size(I32),  t7
;;								## 1
.trace 4
L1?3:
.return ret($r0.3:u32)
	c0    mov $r0.3 = $r0.5   ## bblock 25, line 0,  t29,  t23
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 67,  t8,  ?2.3?2auto_size(I32),  t7
;;								## 0
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.3?2auto_size, 0x0
 ## End rindex
.equ _?1TEMPLATEPACKET.1, 0x0
 ## Begin Compress
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:s32,$r0.4:u32)
Compress::
.trace 19
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    ldw $r0.7 = ((buflen + 0) + 0)[$r0.0]   ## bblock 0, line 82, t127, 0(I32)
	c0    mov $r0.5 = (CompBuf + 0)   ## addr(CompBuf?1.0)(P32)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t111
;;								## 1
	c0    stw 0x20[$r0.1] = $r0.3  ## spill ## t0
;;								## 2
	c0    stw 0x24[$r0.1] = $r0.4  ## spill ## t125
;;								## 3
	c0    stw 0x1c[$r0.1] = $r0.7  ## spill ## t127
;;								## 4
	c0    stw ((do_decomp + 0) + 0)[$r0.0] = $r0.0   ## bblock 0, line 77, 0(I32), 0(SI32)
;;								## 5
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.5   ## bblock 0, line 80, 0(I32), addr(CompBuf?1.0)(P32)
;;								## 6
	c0    ldw $r0.3 = 0[$r0.4]   ## bblock 0, line 83, t10, t125
	c0    mov $r0.4 = 47   ## 47(SI32)
;;								## 7
.call rindex, caller, arg($r0.3:u32,$r0.4:s32), ret($r0.3:u32)
	c0    call $l0.0 = rindex   ## bblock 0, line 83,  raddr(rindex)(P32),  t10,  47(SI32)
;;								## 8
	c0    ldw $r0.4 = 0x24[$r0.1]  ## restore ## t125
;;								## 9
	c0    ldw $r0.3 = 0x20[$r0.1]  ## restore ## t0
;;								## 10
	c0    add $r0.2 = $r0.4, 4   ## bblock 3, line 89,  t131,  t125,  4(SI32)
;;								## 11
	c0    add $r0.6 = $r0.3, -1   ## bblock 3, line 89,  t132,  t0,  -1(SI32)
;;								## 12
.trace 3
L9?3:
	c0    cmpgt $b0.0 = $r0.6, $r0.0   ## bblock 4, line 89,  t133(I1),  t132,  0(SI32)
	c0    ldw.d $r0.3 = 0[$r0.2]   ## [spec] bblock 39, line 91, t25, t131
;;								## 0
	c0    brf $b0.0, L10?3   ## bblock 4, line 89,  t133(I1)
;;								## 1
	c0    ldb $r0.3 = 0[$r0.3]   ## bblock 39, line 91, t26(SI8), t25
;;								## 2
;;								## 3
	c0    cmpeq $b0.0 = $r0.3, 45   ## bblock 39, line 91,  t148(I1),  t26(SI8),  45(SI32)
;;								## 4
	c0    brf $b0.0, L11?3   ## bblock 39, line 91,  t148(I1)
;;								## 5
.trace 1
L12?3:
	c0    ldw $r0.3 = 0[$r0.2]   ## bblock 41, line 93, t28, t131
;;								## 0
;;								## 1
	c0    add $r0.4 = $r0.3, 1   ## bblock 41, line 93,  t29,  t28,  1(SI32)
;;								## 2
	c0    stw 0[$r0.2] = $r0.4   ## bblock 41, line 93, t131, t29
;;								## 3
	c0    ldb $r0.3 = 1[$r0.3]   ## bblock 41, line 93, t30(SI8), t28
;;								## 4
;;								## 5
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 41, line 93,  t149(I1),  t30(SI8),  0(SI32)
	c0    cmplt $r0.4 = $r0.3, 67   ## [spec] bblock 42, line 130,  t49,  t30(SI8),  67(SI32)
	c0    cmpgt $r0.5 = $r0.3, 118   ## [spec] bblock 42, line 130,  t50,  t30(SI8),  118(SI32)
	c0    sh2add $r0.3 = $r0.3, ((_?1.Compress.TAGPACKET.0 + 0) - 268)   ## [spec] bblock 43, line 130,  t151,  t30(SI8),  (addr(_?1.Compress.TAGARRAY.0)(P32) - 0x10c(I32))(P32)
;;								## 6
	c0    orl $b0.0 = $r0.4, $r0.5   ## [spec] bblock 42, line 130,  t150(I1),  t49,  t50
	c0    ldw.d $l0.0 = 0[$r0.3]   ## [spec] bblock 43, line 130, t52, t151
	c0    brf $b0.0, L13?3   ## bblock 41, line 93,  t149(I1)
;;								## 7
	c0    br $b0.0, L14?3   ## bblock 42, line 130,  t150(I1)
;;								## 8
;;								## 9
	c0    goto $l0.0   ## bblock 43, line 130,  t52
;;								## 10
_?1.Compress.TAG.0.0:
	c0    stw ((block_compress + 0) + 0)[$r0.0] = $r0.0   ## bblock 64, line 110, 0(I32), 0(SI32)
	c0    goto L12?3 ## goto
;;								## 11
.trace 9
_?1.Compress.TAG.0.7:
	c0    stw ((quiet + 0) + 0)[$r0.0] = $r0.0   ## bblock 45, line 101, 0(I32), 0(SI32)
	c0    goto L12?3 ## goto
;;								## 0
.trace 5
_?1.Compress.TAG.0.6:
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
	c0    stw ((quiet + 0) + 0)[$r0.0] = $r0.3   ## bblock 47, line 124, 0(I32), 1(SI32)
	c0    goto L12?3 ## goto
;;								## 1
.trace 6
_?1.Compress.TAG.0.5:
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
	c0    stw ((nomagic + 0) + 0)[$r0.0] = $r0.3   ## bblock 49, line 107, 0(I32), 1(SI32)
	c0    goto L12?3 ## goto
;;								## 1
.trace 7
_?1.Compress.TAG.0.4:
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
	c0    stw ((do_decomp + 0) + 0)[$r0.0] = $r0.3   ## bblock 51, line 104, 0(I32), 1(SI32)
	c0    goto L12?3 ## goto
;;								## 1
.trace 8
_?1.Compress.TAG.0.3:
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
	c0    stw ((zcat_flg + 0) + 0)[$r0.0] = $r0.3   ## bblock 53, line 121, 0(I32), 1(SI32)
	c0    goto L12?3 ## goto
;;								## 1
.trace 2
_?1.Compress.TAG.0.2:
	c0    ldw $r0.3 = 0[$r0.2]   ## bblock 55, line 113, t36, t131
;;								## 0
;;								## 1
	c0    add $r0.4 = $r0.3, 1   ## bblock 55, line 113,  t37,  t36,  1(SI32)
;;								## 2
	c0    stw 0[$r0.2] = $r0.4   ## bblock 55, line 113, t131, t37
;;								## 3
	c0    ldb $r0.3 = 1[$r0.3]   ## bblock 55, line 113, t38(SI8), t36
;;								## 4
;;								## 5
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## bblock 55, line 113,  t152(I1),  t38(SI8),  0(SI32)
;;								## 6
	c0    br $b0.0, L15?3   ## bblock 55, line 113,  t152(I1)
;;								## 7
L11?3:
	c0    add $r0.2 = $r0.2, 4   ## bblock 40, line 89,  t131,  t131,  4(SI32)
	c0    add $r0.6 = $r0.6, -1   ## bblock 40, line 89,  t132,  t132,  -1(SI32)
	c0    goto L9?3 ## goto
;;								## 8
.trace 13
L15?3:
	c0    add $r0.6 = $r0.6, -1   ## bblock 56, line 113,  t132,  t132,  -1(SI32)
	c0    ldw.d $r0.3 = 4[$r0.2]   ## [spec] bblock 57, line 113, t42, t131
	c0    add $r0.2 = $r0.2, 4   ## [spec] bblock 57, line 113,  t131,  t131,  4(SI32)
;;								## 0
	c0    cmpeq $b0.0 = $r0.6, $r0.0   ## bblock 56, line 113,  t153(I1),  t132,  0(SI32)
;;								## 1
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## [spec] bblock 57, line 113,  t154(I1),  t42,  0x0(P32)
	c0    br $b0.0, L16?3   ## bblock 56, line 113,  t153(I1)
;;								## 2
	c0    br $b0.0, L16?3   ## bblock 57, line 113,  t154(I1)
	      ## goto
;;
	c0    goto L11?3 ## goto
;;								## 3
.trace 18
L16?3:
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 58, line 115,  raddr(puts)(P32),  addr(_?1STRINGVAR.3)(P32)
	c0    mov $r0.3 = (_?1STRINGPACKET.3 + 0)   ## addr(_?1STRINGVAR.3)(P32)
;;								## 0
.call Usage, caller, arg(), ret()
	c0    call $l0.0 = Usage   ## bblock 59, line 116,  raddr(Usage)(P32)
;;								## 1
	c0    mov $r0.3 = 1   ## 1(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t111
;;								## 2
;;								## 3
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 60, line 117,  t112,  ?2.4?2auto_size(I32),  t111
;;								## 4
.trace 10
_?1.Compress.TAG.0.1:
	c0    stw 0x14[$r0.1] = $r0.2  ## spill ## t131
;;								## 0
.call version, caller, arg(), ret($r0.3:s32)
	c0    call $l0.0 = version   ## bblock 62, line 98,  raddr(version)(P32)
	c0    stw 0x18[$r0.1] = $r0.6  ## spill ## t132
;;								## 1
	c0    ldw $r0.2 = 0x14[$r0.1]  ## restore ## t131
;;								## 2
	c0    ldw $r0.6 = 0x18[$r0.1]  ## restore ## t132
;;								## 3
	c0    goto L12?3 ## goto
;;								## 4
.trace 4
L14?3:
_?1.Compress.TAG.0.DEFAULT:
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 66, line 127,  raddr(puts)(P32),  addr(_?1STRINGVAR.4)(P32)
	c0    mov $r0.3 = (_?1STRINGPACKET.4 + 0)   ## addr(_?1STRINGVAR.4)(P32)
;;								## 0
.call Usage, caller, arg(), ret()
	c0    call $l0.0 = Usage   ## bblock 67, line 128,  raddr(Usage)(P32)
;;								## 1
	c0    mov $r0.3 = 1   ## 1(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t111
;;								## 2
;;								## 3
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 68, line 129,  t112,  ?2.4?2auto_size(I32),  t111
;;								## 4
.trace 15
L13?3:
	c0    goto L11?3 ## goto
;;								## 0
.trace 21
L10?3:
	c0    ldw $r0.2 = ((maxbits + 0) + 0)[$r0.0]   ## bblock 5, line 135, t53, 0(I32)
	c0    mov $r0.6 = 5003   ## 5003(SI32)
	c0    mov $r0.3 = 1   ## 1(SI32)
	c0    mov $r0.5 = 12   ## 12(SI32)
	c0    mov $r0.4 = 9   ## 9(SI32)
;;								## 0
	c0    ldw.d $r0.8 = ((fsize + 0) + 0)[$r0.0]   ## [spec] bblock 7, line 141, t57, 0(I32)
;;								## 1
	c0    cmplt $b0.0 = $r0.2, 9   ## bblock 5, line 135,  t134(I1),  t53,  9(SI32)
;;								## 2
	c0    cmplt $b0.0 = $r0.8, 4096   ## [spec] bblock 7, line 141,  t136(I1),  t57,  4096(SI32)
	c0    brf $b0.0, L17?3   ## bblock 5, line 135,  t134(I1)
;;								## 3
	c0    stw ((maxbits + 0) + 0)[$r0.0] = $r0.4   ## bblock 38, line 136, 0(I32), 9(SI32)
;;								## 4
L18?3:
	c0    ldw $r0.2 = ((maxbits + 0) + 0)[$r0.0]   ## bblock 6, line 137, t54, 0(I32)
;;								## 5
;;								## 6
	c0    cmpgt $b0.1 = $r0.2, 12   ## bblock 6, line 137,  t135(I1),  t54,  12(SI32)
;;								## 7
	c0    brf $b0.1, L19?3   ## bblock 6, line 137,  t135(I1)
;;								## 8
	c0    stw ((maxbits + 0) + 0)[$r0.0] = $r0.5   ## bblock 37, line 138, 0(I32), 12(SI32)
;;								## 9
L20?3:
	c0    ldw $r0.2 = ((maxbits + 0) + 0)[$r0.0]   ## bblock 7, line 139, t55, 0(I32)
;;								## 10
	c0    stw ((hsize + 0) + 0)[$r0.0] = $r0.6   ## bblock 7, line 140, 0(I32), 5003(SI32)
;;								## 11
	c0    shl $r0.3 = $r0.3, $r0.2   ## bblock 7, line 139,  t56,  1(SI32),  t55
;;								## 12
	c0    stw ((maxmaxcode + 0) + 0)[$r0.0] = $r0.3   ## bblock 7, line 139, 0(I32), t56
	c0    brf $b0.0, L21?3   ## bblock 7, line 141,  t136(I1)
;;								## 13
.call compressf, caller, arg(), ret($r0.3:s32)
	c0    stw ((hsize + 0) + 0)[$r0.0] = $r0.6   ## bblock 36, line 142, 0(I32), 5003(SI32)
	c0    call $l0.0 = compressf   ## bblock 12, line 151,  raddr(compressf)(P32)
;;								## 14
L22?3:
	c0    ldw $r0.2 = ((bytes_out + 0) + 0)[$r0.0]   ## bblock 13, line 153, t64, 0(I32)
	c0    mov $r0.6 = ((CompBuf + 0) + 1)   ## (addr(CompBuf?1.0)(P32) + 0x1(I32))(P32)
	c0    mov $r0.4 = (UnComp + 0)   ## addr(UnComp?1.0)(P32)
	c0    mov $r0.5 = (CompBuf + 0)   ## addr(CompBuf?1.0)(P32)
;;								## 15
	c0    ldw $r0.8 = ((nomagic + 0) + 0)[$r0.0]   ## bblock 13, line 156, t68, 0(I32)
	c0    mov $r0.3 = (_?1STRINGPACKET.5 + 0)   ## addr(_?1STRINGVAR.5)(P32)
;;								## 16
	c0    add $r0.9 = $r0.2, -1   ## [spec] bblock 16, line 159,  t71,  t64,  -1(SI32)
	c0    ldb.d $r0.10 = ((CompBuf + 0) + 0)[$r0.0]   ## [spec] bblock 31, line 158, t74(SI8), 0(I32)
;;								## 17
	c0    cmpeq $b0.0 = $r0.8, $r0.0   ## bblock 13, line 156,  t141(I1),  t68,  0(SI32)
	c0    cmpge $b0.1 = $r0.9, $r0.0   ## [spec] bblock 16, line 158,  t142(I1),  t71,  0(SI32)
	c0    ldbu.d $r0.11 = ((magic_header + 0) + 0)[$r0.0]   ## [spec] bblock 18, line 158, t77(I8), 0(I32)
;;								## 18
	c0    stw ((buflen + 0) + 0)[$r0.0] = $r0.2   ## bblock 13, line 153, 0(I32), t64
	c0    zxtb $r0.10 = $r0.10   ## [spec] bblock 31, line 158,  t69(I8),  t74(SI8)
;;								## 19
	c0    stw ((bufp + 0) + 0)[$r0.0] = $r0.5   ## bblock 13, line 152, 0(I32), addr(CompBuf?1.0)(P32)
	c0    and $r0.11 = $r0.11, 255   ## [spec] bblock 18, line 158,  t78,  t77(I8),  255(I32)
;;								## 20
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.4   ## bblock 13, line 154, 0(I32), addr(UnComp?1.0)(P32)
	c0    cmpne $b0.2 = $r0.10, $r0.11   ## [spec] bblock 18, line 158,  t143(I1),  t69(I8),  t78
	c0    brf $b0.0, L23?3   ## bblock 13, line 156,  t141(I1)
;;								## 21
	c0    stw ((buflen + 0) + 0)[$r0.0] = $r0.9   ## bblock 16, line 158, 0(I32), t71
	c0    brf $b0.1, L24?3   ## bblock 16, line 158,  t142(I1)
;;								## 22
	c0    stw ((bufp + 0) + 0)[$r0.0] = $r0.6   ## bblock 31, line 158, 0(I32), (addr(CompBuf?1.0)(P32) + 0x1(I32))(P32)
	c0    brf $b0.2, L25?3   ## bblock 18, line 158,  t143(I1)
;;								## 23
L26?3:
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 28, line 161,  raddr(puts)(P32),  addr(_?1STRINGVAR.5)(P32)
;;								## 24
	c0    mov $r0.3 = 1   ## 1(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t111
;;								## 25
;;								## 26
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 29, line 162,  t112,  ?2.4?2auto_size(I32),  t111
;;								## 27
.trace 27
L25?3:
	c0    ldw $r0.2 = ((buflen + 0) + 0)[$r0.0]   ## bblock 19, line 159, t80, 0(I32)
	c0    mov $r0.3 = (_?1STRINGPACKET.5 + 0)   ## addr(_?1STRINGVAR.5)(P32)
;;								## 0
	c0    ldw.d $r0.4 = ((bufp + 0) + 0)[$r0.0]   ## [spec] bblock 30, line 159, t82, 0(I32)
;;								## 1
	c0    add $r0.2 = $r0.2, -1   ## bblock 19, line 159,  t81,  t80,  -1(SI32)
	c0    ldbu.d $r0.5 = (((magic_header + 0) + 1) + 0)[$r0.0]   ## [spec] bblock 21, line 159, t87(I8), 0(I32)
;;								## 2
	c0    stw ((buflen + 0) + 0)[$r0.0] = $r0.2   ## bblock 19, line 159, 0(I32), t81
	c0    cmpge $b0.0 = $r0.2, $r0.0   ## bblock 19, line 159,  t144(I1),  t81,  0(SI32)
	c0    add $r0.6 = $r0.4, 1   ## [spec] bblock 30, line 159,  t83,  t82,  1(SI32)
;;								## 3
	c0    and $r0.5 = $r0.5, 255   ## [spec] bblock 21, line 159,  t88,  t87(I8),  255(I32)
	c0    brf $b0.0, L27?3   ## bblock 19, line 159,  t144(I1)
;;								## 4
	c0    stw ((bufp + 0) + 0)[$r0.0] = $r0.6   ## bblock 30, line 159, 0(I32), t83
;;								## 5
	c0    ldb $r0.4 = 0[$r0.4]   ## bblock 30, line 159, t84(SI8), t82
;;								## 6
;;								## 7
	c0    zxtb $r0.4 = $r0.4   ## bblock 30, line 159,  t79(I8),  t84(SI8)
;;								## 8
L28?3:
	c0    cmpne $b0.0 = $r0.4, $r0.5   ## bblock 21, line 159,  t145(I1),  t79(I8),  t88
;;								## 9
	c0    brf $b0.0, L29?3   ## bblock 21, line 159,  t145(I1)
	      ## goto
;;
	c0    goto L26?3 ## goto
;;								## 10
.trace 30
L29?3:
	c0    ldw $r0.2 = ((buflen + 0) + 0)[$r0.0]   ## bblock 22, line 164, t93, 0(I32)
	c0    mov $r0.3 = (_?1STRINGPACKET.6 + 0)   ## addr(_?1STRINGVAR.6)(P32)
	c0    mov $r0.5 = 100000   ## 100000(SI32)
	c0    mov $r0.4 = 1   ## 1(SI32)
;;								## 0
	c0    ldw.d $r0.6 = ((bufp + 0) + 0)[$r0.0]   ## [spec] bblock 27, line 164, t95, 0(I32)
;;								## 1
	c0    add $r0.2 = $r0.2, -1   ## bblock 22, line 164,  t94,  t93,  -1(SI32)
;;								## 2
	c0    stw ((buflen + 0) + 0)[$r0.0] = $r0.2   ## bblock 22, line 164, 0(I32), t94
	c0    cmpge $b0.0 = $r0.2, $r0.0   ## bblock 22, line 164,  t146(I1),  t94,  0(SI32)
	c0    add $r0.8 = $r0.6, 1   ## [spec] bblock 27, line 164,  t96,  t95,  1(SI32)
;;								## 3
	c0    brf $b0.0, L30?3   ## bblock 22, line 164,  t146(I1)
;;								## 4
	c0    stw ((bufp + 0) + 0)[$r0.0] = $r0.8   ## bblock 27, line 164, 0(I32), t96
;;								## 5
	c0    ldb $r0.6 = 0[$r0.6]   ## bblock 27, line 164, t97(SI8), t95
;;								## 6
;;								## 7
	c0    zxtb $r0.6 = $r0.6   ## bblock 27, line 164,  t92(I8),  t97(SI8)
	c0    stw ((fsize + 0) + 0)[$r0.0] = $r0.5   ## bblock 24, line 168, 0(I32), 100000(SI32)
;;								## 8
L31?3:
	c0    and $r0.5 = $r0.6, 128   ## bblock 24, line 165,  t100,  t92(I8),  128(I32)
	c0    and $r0.2 = $r0.6, 31   ## bblock 24, line 166,  t105,  t92(I8),  31(I32)
;;								## 9
	c0    stw ((block_compress + 0) + 0)[$r0.0] = $r0.5   ## bblock 24, line 165, 0(I32), t100
	c0    shl $r0.4 = $r0.4, $r0.2   ## bblock 24, line 167,  t104,  1(SI32),  t105
	c0    cmpgt $b0.0 = $r0.2, 12   ## bblock 24, line 169,  t147(I1),  t105,  12(SI32)
;;								## 10
	c0    stw ((maxmaxcode + 0) + 0)[$r0.0] = $r0.4   ## bblock 24, line 167, 0(I32), t104
;;								## 11
	c0    stw ((maxbits + 0) + 0)[$r0.0] = $r0.2   ## bblock 24, line 166, 0(I32), t105
	c0    brf $b0.0, L23?3   ## bblock 24, line 169,  t147(I1)
;;								## 12
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 25, line 172,  raddr(puts)(P32),  addr(_?1STRINGVAR.6)(P32)
;;								## 13
	c0    mov $r0.3 = 1   ## 1(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t111
;;								## 14
;;								## 15
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 26, line 173,  t112,  ?2.4?2auto_size(I32),  t111
;;								## 16
.trace 22
L23?3:
.call decompress, caller, arg(), ret($r0.3:s32)
	c0    call $l0.0 = decompress   ## bblock 14, line 176,  raddr(decompress)(P32)
;;								## 0
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $r0.7 = 0x1c[$r0.1]  ## restore ## t127
;;								## 1
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t111
;;								## 2
	c0    stw ((buflen + 0) + 0)[$r0.0] = $r0.7   ## bblock 15, line 177, 0(I32), t127
;;								## 3
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 15, line 178,  t112,  ?2.4?2auto_size(I32),  t111
;;								## 4
.trace 35
L30?3:
	c0    mov $r0.6 = -1   ## bblock 23, line 164,  t92(I8),  -1(SI32)
	c0    mov $r0.4 = 1   ## 1(SI32)
	c0    mov $r0.3 = (_?1STRINGPACKET.6 + 0)   ## addr(_?1STRINGVAR.6)(P32)
	c0    mov $r0.5 = 100000   ## 100000(SI32)
;;								## 0
	c0    stw ((fsize + 0) + 0)[$r0.0] = $r0.5   ## bblock 24, line 168, 0(I32), 100000(SI32)
	c0    goto L31?3 ## goto
;;								## 1
.trace 32
L27?3:
	c0    mov $r0.4 = -1   ## bblock 20, line 159,  t79(I8),  -1(SI32)
	c0    mov $r0.3 = (_?1STRINGPACKET.5 + 0)   ## addr(_?1STRINGVAR.5)(P32)
	c0    goto L28?3 ## goto
;;								## 0
.trace 26
L24?3:
	c0    mov $r0.10 = -1   ## bblock 17, line 158,  t69(I8),  -1(SI32)
	c0    mov $r0.3 = (_?1STRINGPACKET.5 + 0)   ## addr(_?1STRINGVAR.5)(P32)
;;								## 0
	c0    cmpne $b0.0 = $r0.10, $r0.11   ## bblock 18, line 158,  t143(I1),  t69(I8),  t78
;;								## 1
	c0    brf $b0.0, L25?3   ## bblock 18, line 158,  t143(I1)
	      ## goto
;;
	c0    goto L26?3 ## goto
;;								## 2
.trace 25
L21?3:
	c0    ldw $r0.2 = ((fsize + 0) + 0)[$r0.0]   ## bblock 8, line 143, t58, 0(I32)
	c0    mov $r0.6 = 5003   ## 5003(SI32)
;;								## 0
;;								## 1
	c0    cmplt $b0.0 = $r0.2, 8192   ## bblock 8, line 143,  t137(I1),  t58,  8192(SI32)
;;								## 2
	c0    brf $b0.0, L32?3   ## bblock 8, line 143,  t137(I1)
;;								## 3
.call compressf, caller, arg(), ret($r0.3:s32)
	c0    stw ((hsize + 0) + 0)[$r0.0] = $r0.6   ## bblock 35, line 144, 0(I32), 5003(SI32)
	c0    call $l0.0 = compressf   ## bblock 12, line 151,  raddr(compressf)(P32)
;;								## 4
	c0    goto L22?3 ## goto
;;								## 5
.trace 28
L32?3:
	c0    ldw $r0.2 = ((fsize + 0) + 0)[$r0.0]   ## bblock 9, line 145, t59, 0(I32)
	c0    mov $r0.6 = 5003   ## 5003(SI32)
;;								## 0
;;								## 1
	c0    cmplt $b0.0 = $r0.2, 16384   ## bblock 9, line 145,  t138(I1),  t59,  16384(SI32)
;;								## 2
	c0    brf $b0.0, L33?3   ## bblock 9, line 145,  t138(I1)
;;								## 3
.call compressf, caller, arg(), ret($r0.3:s32)
	c0    stw ((hsize + 0) + 0)[$r0.0] = $r0.6   ## bblock 34, line 146, 0(I32), 5003(SI32)
	c0    call $l0.0 = compressf   ## bblock 12, line 151,  raddr(compressf)(P32)
;;								## 4
	c0    goto L22?3 ## goto
;;								## 5
.trace 31
L33?3:
	c0    ldw $r0.2 = ((fsize + 0) + 0)[$r0.0]   ## bblock 10, line 147, t60, 0(I32)
	c0    mov $r0.6 = 5003   ## 5003(SI32)
;;								## 0
;;								## 1
	c0    cmplt $b0.0 = $r0.2, 32768   ## bblock 10, line 147,  t139(I1),  t60,  32768(SI32)
;;								## 2
	c0    brf $b0.0, L34?3   ## bblock 10, line 147,  t139(I1)
;;								## 3
.call compressf, caller, arg(), ret($r0.3:s32)
	c0    stw ((hsize + 0) + 0)[$r0.0] = $r0.6   ## bblock 33, line 148, 0(I32), 5003(SI32)
	c0    call $l0.0 = compressf   ## bblock 12, line 151,  raddr(compressf)(P32)
;;								## 4
	c0    goto L22?3 ## goto
;;								## 5
.trace 34
L34?3:
	c0    ldw $r0.2 = ((fsize + 0) + 0)[$r0.0]   ## bblock 11, line 149, t61, 0(I32)
	c0    mov $r0.6 = 5003   ## 5003(SI32)
;;								## 0
;;								## 1
	c0    cmplt $b0.0 = $r0.2, 47000   ## bblock 11, line 149,  t140(I1),  t61,  47000(SI32)
;;								## 2
	c0    brf $b0.0, L35?3   ## bblock 11, line 149,  t140(I1)
;;								## 3
.call compressf, caller, arg(), ret($r0.3:s32)
	c0    stw ((hsize + 0) + 0)[$r0.0] = $r0.6   ## bblock 32, line 150, 0(I32), 5003(SI32)
	c0    call $l0.0 = compressf   ## bblock 12, line 151,  raddr(compressf)(P32)
;;								## 4
	c0    goto L22?3 ## goto
;;								## 5
.trace 36
L35?3:
.call compressf, caller, arg(), ret($r0.3:s32)
	c0    call $l0.0 = compressf   ## bblock 12, line 151,  raddr(compressf)(P32)
;;								## 0
	c0    goto L22?3 ## goto
;;								## 1
.trace 23
L19?3:
	c0    mov $r0.3 = 1   ## 1(SI32)
	c0    goto L20?3 ## goto
;;								## 0
.trace 24
L17?3:
	c0    mov $r0.5 = 12   ## 12(SI32)
	c0    mov $r0.3 = 1   ## 1(SI32)
	c0    goto L18?3 ## goto
;;								## 0
.endp
.section .bss
.section .data
_?1STRINGPACKET.4:
    .data1 85
    .data1 110
    .data1 107
    .data1 110
    .data1 111
    .data1 119
    .data1 110
    .data1 32
    .data1 102
    .data1 108
    .data1 97
    .data1 103
    .data1 0
.skip 3
_?1.Compress.TAGPACKET.0:
    .data4 (_?1.Compress.TAG.0.0)
    .data4 (_?1.Compress.TAG.0.DEFAULT):18
    .data4 (_?1.Compress.TAG.0.1)
    .data4 (_?1.Compress.TAG.0.DEFAULT):11
    .data4 (_?1.Compress.TAG.0.2)
    .data4 (_?1.Compress.TAG.0.3)
    .data4 (_?1.Compress.TAG.0.4)
    .data4 (_?1.Compress.TAG.0.DEFAULT):9
    .data4 (_?1.Compress.TAG.0.5)
    .data4 (_?1.Compress.TAG.0.DEFAULT):2
    .data4 (_?1.Compress.TAG.0.6)
    .data4 (_?1.Compress.TAG.0.DEFAULT):4
    .data4 (_?1.Compress.TAG.0.7)
_?1STRINGPACKET.5:
    .data1 68
    .data1 97
    .data1 116
    .data1 97
    .data1 32
    .data1 110
    .data1 111
    .data1 116
    .data1 32
    .data1 105
    .data1 110
    .data1 32
    .data1 99
    .data1 111
    .data1 109
    .data1 112
    .data1 114
    .data1 101
    .data1 115
    .data1 115
    .data1 101
    .data1 100
    .data1 32
    .data1 102
    .data1 111
    .data1 114
    .data1 109
    .data1 97
    .data1 116
    .data1 10
    .data1 0
.skip 1
_?1STRINGPACKET.6:
    .data1 115
    .data1 116
    .data1 100
    .data1 105
    .data1 110
    .data1 58
    .data1 32
    .data1 99
    .data1 111
    .data1 109
    .data1 112
    .data1 114
    .data1 101
    .data1 115
    .data1 115
    .data1 101
    .data1 100
    .data1 32
    .data1 119
    .data1 105
    .data1 116
    .data1 104
    .data1 32
    .data1 116
    .data1 111
    .data1 111
    .data1 32
    .data1 109
    .data1 97
    .data1 110
    .data1 121
    .data1 32
    .data1 98
    .data1 105
    .data1 116
    .data1 115
    .data1 10
    .data1 0
.skip 2
_?1STRINGPACKET.3:
    .data1 77
    .data1 105
    .data1 115
    .data1 115
    .data1 105
    .data1 110
    .data1 103
    .data1 32
    .data1 109
    .data1 97
    .data1 120
    .data1 98
    .data1 105
    .data1 116
    .data1 115
    .data1 10
    .data1 0
.equ ?2.4?2scratch.0, 0x0
.equ ?2.4?2ras_p, 0x10
.equ ?2.4?2spill_p, 0x14
.section .data
.section .text
.equ ?2.4?2auto_size, 0x40
 ## End Compress
 ## Begin compressf
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg()
compressf::
.trace 28
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    ldw $r0.5 = ((nomagic + 0) + 0)[$r0.0]   ## bblock 0, line 191, t7, 0(I32)
	c0    mov $r0.8 = 10000   ## 10000(SI32)
	c0    mov $r0.7 = 1   ## 1(SI32)
	c0    mov $r0.6 = 3   ## 3(SI32)
;;								## 0
	c0    mov $r0.4 = $r0.0   ## [spec] bblock 3, line 207,  t127,  0(SI32)
	c0    mov $r0.11 = 257   ## 257(SI32)
	c0    mov $r0.10 = 511   ## 511(SI32)
	c0    mov $r0.9 = 9   ## 9(SI32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t98
;;								## 1
	c0    cmpeq $b0.0 = $r0.5, $r0.0   ## bblock 0, line 191,  t208(I1),  t7,  0(SI32)
	c0    ldw.d $r0.12 = ((block_compress + 0) + 0)[$r0.0]   ## [spec] bblock 1, line 205, t26, 0(I32)
	c0    mov $r0.3 = 65536   ## 65536(SI32)
;;								## 2
	c0    ldw.d $r0.5 = ((buflen + 0) + 0)[$r0.0]   ## [spec] bblock 1, line 206, t29, 0(I32)
	c0    br $b0.0, L36?3   ## bblock 0, line 191,  t208(I1)
;;								## 3
L37?3:
	c0    cmpne $b0.0 = $r0.12, $r0.0   ## bblock 1, line 205,  t209(I1),  t26,  0(SI32)
	c0    ldw.d $r0.13 = ((bufp + 0) + 0)[$r0.0]   ## [spec] bblock 33, line 206, t31, 0(I32)
;;								## 4
	c0    slct $r0.11 = $b0.0, $r0.11, 256   ## bblock 1, line 205,  t27,  t209(I1),  257(SI32),  256(SI32)
	c0    add $r0.5 = $r0.5, -1   ## bblock 1, line 206,  t30,  t29,  -1(SI32)
	c0    ldw.d $r0.2 = ((hsize + 0) + 0)[$r0.0]   ## [spec] bblock 3, line 208, t126, 0(I32)
;;								## 5
	c0    stw ((buflen + 0) + 0)[$r0.0] = $r0.5   ## bblock 1, line 206, 0(I32), t30
	c0    cmpge $b0.0 = $r0.5, $r0.0   ## bblock 1, line 206,  t210(I1),  t30,  0(SI32)
	c0    add $r0.12 = $r0.13, 1   ## [spec] bblock 33, line 206,  t32,  t31,  1(SI32)
;;								## 6
	c0    stw ((compress_27933.offset + 0) + 0)[$r0.0] = $r0.0   ## bblock 1, line 197, 0(I32), 0(SI32)
	c0    mov $r0.5 = $l0.0   ## t98
;;								## 7
	c0    stw ((bytes_out + 0) + 0)[$r0.0] = $r0.6   ## bblock 1, line 198, 0(I32), 3(SI32)
;;								## 8
	c0    stw ((out_count + 0) + 0)[$r0.0] = $r0.0   ## bblock 1, line 199, 0(I32), 0(SI32)
;;								## 9
	c0    stw ((clear_flg + 0) + 0)[$r0.0] = $r0.0   ## bblock 1, line 200, 0(I32), 0(SI32)
;;								## 10
	c0    stw ((ratio + 0) + 0)[$r0.0] = $r0.0   ## bblock 1, line 201, 0(I32), 0(SI32)
;;								## 11
	c0    stw ((in_count + 0) + 0)[$r0.0] = $r0.7   ## bblock 1, line 202, 0(I32), 1(SI32)
;;								## 12
	c0    stw ((checkpoint + 0) + 0)[$r0.0] = $r0.8   ## bblock 1, line 203, 0(I32), 10000(SI32)
;;								## 13
	c0    stw ((n_bits + 0) + 0)[$r0.0] = $r0.9   ## bblock 1, line 204, 0(I32), 9(SI32)
;;								## 14
	c0    stw ((maxcode + 0) + 0)[$r0.0] = $r0.10   ## bblock 1, line 204, 0(I32), 511(SI32)
;;								## 15
	c0    stw ((free_ent + 0) + 0)[$r0.0] = $r0.11   ## bblock 1, line 205, 0(I32), t27
	c0    brf $b0.0, L38?3   ## bblock 1, line 206,  t210(I1)
;;								## 16
	c0    stw ((bufp + 0) + 0)[$r0.0] = $r0.12   ## bblock 33, line 206, 0(I32), t32
;;								## 17
	c0    ldb $r0.13 = 0[$r0.13]   ## bblock 33, line 206, t33(SI8), t31
;;								## 18
;;								## 19
	c0    zxtb $r0.13 = $r0.13   ## bblock 33, line 206,  t28(I8),  t33(SI8)
;;								## 20
L39?3:
	c0    mov $r0.6 = $r0.13   ## bblock 3, line 206,  t3,  t28(I8)
;;								## 21
.trace 3
L40?3:
	c0    cmplt $b0.0 = $r0.2, $r0.3   ## bblock 4, line 208,  t211(I1),  t126,  65536(SI32)
	c0    shl $r0.2 = $r0.2, 1   ## [spec] bblock 32, line 208,  t128,  t126,  1(I32)
;;								## 0
	c0    cmplt $b0.0 = $r0.2, $r0.3   ## [spec] bblock 32, line 208-1,  t230(I1),  t128,  65536(SI32)
	c0    shl $r0.2 = $r0.2, 1   ## [spec] bblock 53, line 208-1,  t139,  t128,  1(I32)
	c0    brf $b0.0, L41?3   ## bblock 4, line 208,  t211(I1)
;;								## 1
	c0    cmplt $b0.0 = $r0.2, $r0.3   ## [spec] bblock 53, line 208-2,  t236(I1),  t139,  65536(SI32)
	c0    shl $r0.2 = $r0.2, 1   ## [spec] bblock 50, line 208-2,  t137,  t139,  1(I32)
	c0    brf $b0.0, L42?3   ## bblock 32, line 208-1,  t230(I1)
;;								## 2
	c0    cmplt $b0.0 = $r0.2, $r0.3   ## [spec] bblock 50, line 208-3,  t235(I1),  t137,  65536(SI32)
	c0    shl $r0.2 = $r0.2, 1   ## [spec] bblock 47, line 208-3,  t0,  t137,  1(I32)
	c0    brf $b0.0, L43?3   ## bblock 53, line 208-2,  t236(I1)
;;								## 3
	c0    cmplt $b0.0 = $r0.2, $r0.3   ## [spec] bblock 47, line 208-4,  t234(I1),  t0,  65536(SI32)
	c0    shl $r0.2 = $r0.2, 1   ## [spec] bblock 44, line 208-4,  t131,  t0,  1(I32)
	c0    brf $b0.0, L44?3   ## bblock 50, line 208-3,  t235(I1)
;;								## 4
	c0    cmplt $b0.0 = $r0.2, $r0.3   ## [spec] bblock 44, line 208-5,  t233(I1),  t131,  65536(SI32)
	c0    shl $r0.2 = $r0.2, 1   ## [spec] bblock 41, line 208-5,  t133,  t131,  1(I32)
	c0    brf $b0.0, L45?3   ## bblock 47, line 208-4,  t234(I1)
;;								## 5
	c0    cmplt $b0.0 = $r0.2, $r0.3   ## [spec] bblock 41, line 208-6,  t232(I1),  t133,  65536(SI32)
	c0    shl $r0.2 = $r0.2, 1   ## [spec] bblock 38, line 208-6,  t136,  t133,  1(I32)
	c0    brf $b0.0, L46?3   ## bblock 44, line 208-5,  t233(I1)
;;								## 6
	c0    cmplt $b0.0 = $r0.2, $r0.3   ## [spec] bblock 38, line 208-7,  t231(I1),  t136,  65536(SI32)
	c0    shl $r0.2 = $r0.2, 1   ## [spec] bblock 28, line 208-7,  t126,  t136,  1(I32)
	c0    brf $b0.0, L47?3   ## bblock 41, line 208-6,  t232(I1)
;;								## 7
	c0    brf $b0.0, L48?3   ## bblock 38, line 208-7,  t231(I1)
;;								## 8
	c0    add $r0.4 = $r0.4, 8   ## bblock 28, line 209-7,  t127,  t127,  8(SI32)
	c0    goto L40?3 ## goto
;;								## 9
.trace 41
L48?3:
	c0    add $r0.4 = $r0.4, 7   ## bblock 29, line 0,  t6,  t127,  7(I32)
	c0    stw 0x24[$r0.1] = $r0.6  ## spill ## t3
	c0    goto L49?3 ## goto
;;								## 0
.trace 4
L50?3:
	c0    ldw $r0.3 = ((buflen + 0) + 0)[$r0.0]   ## bblock 6, line 213, t42, 0(I32)
;;								## 0
	c0    ldw.d $r0.8 = ((bufp + 0) + 0)[$r0.0]   ## [spec] bblock 31, line 213, t44, 0(I32)
;;								## 1
	c0    add $r0.3 = $r0.3, -1   ## bblock 6, line 213,  t43,  t42,  -1(SI32)
	c0    ldw.d $r0.9 = ((in_count + 0) + 0)[$r0.0]   ## [spec] bblock 16, line 215, t48, 0(I32)
;;								## 2
	c0    cmpge $b0.0 = $r0.3, $r0.0   ## bblock 6, line 213,  t212(I1),  t43,  0(SI32)
	c0    add $r0.10 = $r0.8, 1   ## [spec] bblock 31, line 213,  t45,  t44,  1(SI32)
	c0    ldw.d $r0.11 = ((maxbits + 0) + 0)[$r0.0]   ## [spec] bblock 16, line 216, t50, 0(I32)
;;								## 3
	c0    stw ((buflen + 0) + 0)[$r0.0] = $r0.3   ## bblock 6, line 213, 0(I32), t43
	c0    add $r0.9 = $r0.9, 1   ## [spec] bblock 16, line 215,  t49,  t48,  1(SI32)
	c0    brf $b0.0, L51?3   ## bblock 6, line 213,  t212(I1)
;;								## 4
	c0    stw ((bufp + 0) + 0)[$r0.0] = $r0.10   ## bblock 31, line 213, 0(I32), t45
;;								## 5
	c0    ldb $r0.8 = 0[$r0.8]   ## bblock 31, line 213, t46(SI8), t44
;;								## 6
;;								## 7
	c0    zxtb $r0.8 = $r0.8   ## bblock 31, line 213,  t41(I8),  t46(SI8)
;;								## 8
L52?3:
	c0    cmpne $b0.0 = $r0.8, -1   ## bblock 8, line 213,  t213(I1),  t41(I8),  -1(SI32)
	c0    shl $r0.11 = $r0.8, $r0.11   ## [spec] bblock 16, line 216,  t51,  t41(I8),  t50
	c0    shl $r0.3 = $r0.8, $r0.6   ## [spec] bblock 16, line 217,  t53,  t41(I8),  t113
;;								## 9
	c0    add $r0.5 = $r0.11, $r0.7   ## [spec] bblock 16, line 216,  t114,  t51,  t3
	c0    xor $r0.2 = $r0.7, $r0.3   ## [spec] bblock 16, line 217,  t1,  t3,  t53
	c0    brf $b0.0, L53?3   ## bblock 8, line 213,  t213(I1)
;;								## 10
	c0    stw ((in_count + 0) + 0)[$r0.0] = $r0.9   ## bblock 16, line 215, 0(I32), t49
	c0    sh2add $r0.3 = $r0.2, (htab + 0)   ## bblock 16, line 218,  t216,  t1,  addr(htab?1.0)(P32)
	c0    sh1add $r0.10 = $r0.2, (codetab + 0)   ## [spec] bblock 30, line 220,  t229,  t1,  addr(codetab?1.0)(P32)
;;								## 11
	c0    ldw $r0.3 = 0[$r0.3]   ## bblock 16, line 218, t56, t216
;;								## 12
;;								## 13
	c0    cmpeq $b0.0 = $r0.3, $r0.5   ## bblock 16, line 218,  t217(I1),  t56,  t114
;;								## 14
	c0    brf $b0.0, L54?3   ## bblock 16, line 218,  t217(I1)
;;								## 15
	c0    ldhu $r0.7 = 0[$r0.10]   ## bblock 30, line 220, t3, t229
;;								## 16
	c0    goto L50?3 ## goto
;;								## 17
.trace 7
L54?3:
	c0    sh2add $r0.9 = $r0.2, (htab + 0)   ## bblock 17, line 223,  t218,  t1,  addr(htab?1.0)(P32)
	c0    stw 0x14[$r0.1] = $r0.5  ## spill ## t114
	c0    mov $r0.3 = $r0.7   ## t3
;;								## 0
	c0    stw 0x18[$r0.1] = $r0.6  ## spill ## t113
;;								## 1
	c0    stw 0x1c[$r0.1] = $r0.8  ## spill ## t41(I8)
;;								## 2
	c0    stw 0x20[$r0.1] = $r0.2  ## spill ## t1
;;								## 3
	c0    ldw $r0.9 = 0[$r0.9]   ## bblock 17, line 223, t60, t218
;;								## 4
;;								## 5
	c0    cmplt $b0.0 = $r0.9, $r0.0   ## bblock 17, line 223,  t219(I1),  t60,  0(SI32)
;;								## 6
	c0    brf $b0.0, L55?3   ## bblock 17, line 223,  t219(I1)
;;								## 7
L56?3:
.call output, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = output   ## bblock 22, line 243,  raddr(output)(P32),  t3
;;								## 8
	c0    ldw $r0.3 = ((out_count + 0) + 0)[$r0.0]   ## bblock 23, line 244, t70, 0(I32)
;;								## 9
	c0    ldw $r0.8 = 0x1c[$r0.1]  ## restore ## t41(I8)
;;								## 10
	c0    add $r0.3 = $r0.3, 1   ## bblock 23, line 244,  t71,  t70,  1(SI32)
	c0    ldw $r0.9 = ((free_ent + 0) + 0)[$r0.0]   ## bblock 23, line 246, t72, 0(I32)
;;								## 11
	c0    mov $r0.7 = $r0.8   ## bblock 23, line 245,  t3,  t41(I8)
	c0    ldw $r0.10 = ((maxmaxcode + 0) + 0)[$r0.0]   ## bblock 23, line 246, t73, 0(I32)
;;								## 12
	c0    add $r0.11 = $r0.9, 1   ## [spec] bblock 26, line 248,  t75,  t72,  1(SI32)
	c0    ldw $r0.2 = 0x20[$r0.1]  ## restore ## t1
;;								## 13
	c0    cmplt $b0.0 = $r0.9, $r0.10   ## bblock 23, line 246,  t224(I1),  t72,  t73
	c0    ldw $r0.5 = 0x14[$r0.1]  ## restore ## t114
;;								## 14
	c0    sh1add $r0.10 = $r0.2, (codetab + 0)   ## [spec] bblock 26, line 248,  t226,  t1,  addr(codetab?1.0)(P32)
	c0    sh2add $r0.12 = $r0.2, (htab + 0)   ## [spec] bblock 26, line 249,  t227,  t1,  addr(htab?1.0)(P32)
	c0    ldw $r0.6 = 0x18[$r0.1]  ## restore ## t113
;;								## 15
	c0    stw ((out_count + 0) + 0)[$r0.0] = $r0.3   ## bblock 23, line 244, 0(I32), t71
	c0    brf $b0.0, L57?3   ## bblock 23, line 246,  t224(I1)
;;								## 16
	c0    stw ((free_ent + 0) + 0)[$r0.0] = $r0.11   ## bblock 26, line 248, 0(I32), t75
;;								## 17
	c0    sth 0[$r0.10] = $r0.9   ## bblock 26, line 248, t226, t72
;;								## 18
	c0    stw 0[$r0.12] = $r0.5   ## bblock 26, line 249, t227, t114
	c0    goto L50?3 ## goto
;;								## 19
.trace 10
L57?3:
	c0    stw 0x18[$r0.1] = $r0.6  ## spill ## t113
;;								## 0
	c0    stw 0x24[$r0.1] = $r0.7  ## spill ## t3
;;								## 1
	c0    ldw $r0.2 = ((in_count + 0) + 0)[$r0.0]   ## bblock 24, line 251, t79, 0(I32)
;;								## 2
	c0    ldw $r0.3 = ((checkpoint + 0) + 0)[$r0.0]   ## bblock 24, line 251, t80, 0(I32)
;;								## 3
	c0    ldw $r0.5 = ((block_compress + 0) + 0)[$r0.0]   ## bblock 24, line 251, t82, 0(I32)
;;								## 4
	c0    cmpge $r0.2 = $r0.2, $r0.3   ## bblock 24, line 251,  t81,  t79,  t80
;;								## 5
	c0    andl $b0.0 = $r0.2, $r0.5   ## bblock 24, line 251,  t225(I1),  t81,  t82
;;								## 6
	c0    brf $b0.0, L58?3   ## bblock 24, line 251,  t225(I1)
;;								## 7
.call cl_block, caller, arg(), ret($r0.3:s32)
	c0    call $l0.0 = cl_block   ## bblock 25, line 253,  raddr(cl_block)(P32)
;;								## 8
	c0    ldw $r0.7 = 0x24[$r0.1]  ## restore ## t3
;;								## 9
	c0    ldw $r0.6 = 0x18[$r0.1]  ## restore ## t113
;;								## 10
	c0    goto L50?3 ## goto
;;								## 11
.trace 12
L58?3:
	c0    ldw $r0.7 = 0x24[$r0.1]  ## restore ## t3
;;								## 0
	c0    ldw $r0.6 = 0x18[$r0.1]  ## restore ## t113
;;								## 1
	c0    goto L50?3 ## goto
;;								## 2
.trace 9
L55?3:
	c0    mov $r0.11 = $r0.7   ## t3
	c0    ldw $r0.2 = 0x20[$r0.1]  ## restore ## t1
	c0    mov $r0.4 = $r0.57   ## t5
;;								## 0
	c0    ldw $r0.5 = 0x14[$r0.1]  ## restore ## t114
;;								## 1
	c0    sub $r0.57 = $r0.57, $r0.2   ## bblock 18, line 227,  t121,  t5,  t1
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 18, line 229,  t220(I1),  t1,  0(I32)
;;								## 2
	c0    slct $r0.3 = $b0.0, $r0.57, 1   ## bblock 18, line 229,  t4,  t220(I1),  t121,  1(SI32)
;;								## 3
.trace 1
L59?3:
	c0    sub $r0.2 = $r0.2, $r0.3   ## bblock 19, line 231,  t123,  t1,  t4
;;								## 0
	c0    cmpge $b0.0 = $r0.2, $r0.0   ## bblock 19, line 231,  t117(I1),  t123,  0(SI32)
	c0    add $r0.6 = $r0.2, $r0.4   ## bblock 19, line 232,  t118,  t123,  t5
;;								## 1
	c0    slct $r0.2 = $b0.0, $r0.2, $r0.6   ## bblock 19, line 232,  t135,  t117(I1),  t123,  t118
;;								## 2
	c0    sh2add $r0.6 = $r0.2, (htab + 0)   ## bblock 19, line 233,  t221,  t135,  addr(htab?1.0)(P32)
	c0    sub $r0.7 = $r0.2, $r0.3   ## [spec] bblock 80, line 231-1,  t171,  t135,  t4
;;								## 3
	c0    ldw $r0.6 = 0[$r0.6]   ## bblock 19, line 233, t65, t221
	c0    cmpge $b0.0 = $r0.7, $r0.0   ## [spec] bblock 80, line 231-1,  t172(I1),  t171,  0(SI32)
	c0    add $r0.8 = $r0.4, $r0.7   ## [spec] bblock 80, line 232-1,  t173,  t5,  t171
;;								## 4
	c0    slct $r0.7 = $b0.0, $r0.7, $r0.8   ## [spec] bblock 80, line 232-1,  t174,  t172(I1),  t171,  t173
;;								## 5
	c0    cmpeq $b0.0 = $r0.6, $r0.5   ## bblock 19, line 233,  t222(I1),  t65,  t114
	c0    cmpgt $b0.1 = $r0.6, $r0.0   ## [spec] bblock 21, line 238,  t223(I1),  t65,  0(SI32)
	c0    sh2add $r0.6 = $r0.7, (htab + 0)   ## [spec] bblock 80, line 233-1,  t255,  t174,  addr(htab?1.0)(P32)
	c0    sub $r0.8 = $r0.7, $r0.3   ## [spec] bblock 76, line 231-2,  t166,  t174,  t4
;;								## 6
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 80, line 233-1, t175, t255
	c0    cmpge $b0.0 = $r0.8, $r0.0   ## [spec] bblock 76, line 231-2,  t167(I1),  t166,  0(SI32)
	c0    add $r0.9 = $r0.4, $r0.8   ## [spec] bblock 76, line 232-2,  t168,  t5,  t166
	c0    br $b0.0, L60?3   ## bblock 19, line 233,  t222(I1)
;;								## 7
	c0    slct $r0.8 = $b0.0, $r0.8, $r0.9   ## [spec] bblock 76, line 232-2,  t169,  t167(I1),  t166,  t168
	c0    brf $b0.1, L61?3   ## bblock 21, line 238,  t223(I1)
;;								## 8
	c0    cmpeq $b0.0 = $r0.6, $r0.5   ## bblock 80, line 233-1,  t256(I1),  t175,  t114
	c0    cmpgt $b0.1 = $r0.6, $r0.0   ## [spec] bblock 81, line 238-1,  t257(I1),  t175,  0(SI32)
	c0    sh2add $r0.6 = $r0.8, (htab + 0)   ## [spec] bblock 76, line 233-2,  t252,  t169,  addr(htab?1.0)(P32)
	c0    sub $r0.9 = $r0.8, $r0.3   ## [spec] bblock 72, line 231-3,  t161,  t169,  t4
;;								## 9
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 76, line 233-2, t170, t252
	c0    cmpge $b0.0 = $r0.9, $r0.0   ## [spec] bblock 72, line 231-3,  t162(I1),  t161,  0(SI32)
	c0    add $r0.10 = $r0.4, $r0.9   ## [spec] bblock 72, line 232-3,  t163,  t5,  t161
	c0    br $b0.0, L62?3   ## bblock 80, line 233-1,  t256(I1)
;;								## 10
	c0    slct $r0.9 = $b0.0, $r0.9, $r0.10   ## [spec] bblock 72, line 232-3,  t164,  t162(I1),  t161,  t163
	c0    brf $b0.1, L63?3   ## bblock 81, line 238-1,  t257(I1)
;;								## 11
	c0    cmpeq $b0.0 = $r0.6, $r0.5   ## bblock 76, line 233-2,  t253(I1),  t170,  t114
	c0    cmpgt $b0.1 = $r0.6, $r0.0   ## [spec] bblock 77, line 238-2,  t254(I1),  t170,  0(SI32)
	c0    sh2add $r0.6 = $r0.9, (htab + 0)   ## [spec] bblock 72, line 233-3,  t249,  t164,  addr(htab?1.0)(P32)
	c0    sub $r0.7 = $r0.9, $r0.3   ## [spec] bblock 68, line 231-4,  t156,  t164,  t4
;;								## 12
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 72, line 233-3, t165, t249
	c0    cmpge $b0.0 = $r0.7, $r0.0   ## [spec] bblock 68, line 231-4,  t157(I1),  t156,  0(SI32)
	c0    add $r0.10 = $r0.4, $r0.7   ## [spec] bblock 68, line 232-4,  t158,  t5,  t156
	c0    br $b0.0, L64?3   ## bblock 76, line 233-2,  t253(I1)
;;								## 13
	c0    slct $r0.7 = $b0.0, $r0.7, $r0.10   ## [spec] bblock 68, line 232-4,  t159,  t157(I1),  t156,  t158
	c0    brf $b0.1, L65?3   ## bblock 77, line 238-2,  t254(I1)
;;								## 14
	c0    cmpeq $b0.0 = $r0.6, $r0.5   ## bblock 72, line 233-3,  t250(I1),  t165,  t114
	c0    cmpgt $b0.1 = $r0.6, $r0.0   ## [spec] bblock 73, line 238-3,  t251(I1),  t165,  0(SI32)
	c0    sh2add $r0.6 = $r0.7, (htab + 0)   ## [spec] bblock 68, line 233-4,  t246,  t159,  addr(htab?1.0)(P32)
	c0    sub $r0.8 = $r0.7, $r0.3   ## [spec] bblock 64, line 231-5,  t151,  t159,  t4
;;								## 15
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 68, line 233-4, t160, t246
	c0    cmpge $b0.0 = $r0.8, $r0.0   ## [spec] bblock 64, line 231-5,  t152(I1),  t151,  0(SI32)
	c0    add $r0.10 = $r0.4, $r0.8   ## [spec] bblock 64, line 232-5,  t153,  t5,  t151
	c0    br $b0.0, L66?3   ## bblock 72, line 233-3,  t250(I1)
;;								## 16
	c0    slct $r0.8 = $b0.0, $r0.8, $r0.10   ## [spec] bblock 64, line 232-5,  t154,  t152(I1),  t151,  t153
	c0    brf $b0.1, L67?3   ## bblock 73, line 238-3,  t251(I1)
;;								## 17
	c0    cmpeq $b0.0 = $r0.6, $r0.5   ## bblock 68, line 233-4,  t247(I1),  t160,  t114
	c0    cmpgt $b0.1 = $r0.6, $r0.0   ## [spec] bblock 69, line 238-4,  t248(I1),  t160,  0(SI32)
	c0    sh2add $r0.6 = $r0.8, (htab + 0)   ## [spec] bblock 64, line 233-5,  t243,  t154,  addr(htab?1.0)(P32)
	c0    sub $r0.9 = $r0.8, $r0.3   ## [spec] bblock 60, line 231-6,  t146,  t154,  t4
;;								## 18
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 64, line 233-5, t155, t243
	c0    cmpge $b0.0 = $r0.9, $r0.0   ## [spec] bblock 60, line 231-6,  t147(I1),  t146,  0(SI32)
	c0    add $r0.10 = $r0.4, $r0.9   ## [spec] bblock 60, line 232-6,  t148,  t5,  t146
	c0    br $b0.0, L68?3   ## bblock 68, line 233-4,  t247(I1)
;;								## 19
	c0    slct $r0.9 = $b0.0, $r0.9, $r0.10   ## [spec] bblock 60, line 232-6,  t149,  t147(I1),  t146,  t148
	c0    brf $b0.1, L69?3   ## bblock 69, line 238-4,  t248(I1)
;;								## 20
	c0    cmpeq $b0.0 = $r0.6, $r0.5   ## bblock 64, line 233-5,  t244(I1),  t155,  t114
	c0    cmpgt $b0.1 = $r0.6, $r0.0   ## [spec] bblock 65, line 238-5,  t245(I1),  t155,  0(SI32)
	c0    sh2add $r0.6 = $r0.9, (htab + 0)   ## [spec] bblock 60, line 233-6,  t240,  t149,  addr(htab?1.0)(P32)
	c0    sub $r0.7 = $r0.9, $r0.3   ## [spec] bblock 56, line 231-7,  t141,  t149,  t4
;;								## 21
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 60, line 233-6, t150, t240
	c0    cmpge $b0.0 = $r0.7, $r0.0   ## [spec] bblock 56, line 231-7,  t142(I1),  t141,  0(SI32)
	c0    add $r0.10 = $r0.4, $r0.7   ## [spec] bblock 56, line 232-7,  t143,  t5,  t141
	c0    br $b0.0, L70?3   ## bblock 64, line 233-5,  t244(I1)
;;								## 22
	c0    slct $r0.2 = $b0.0, $r0.7, $r0.10   ## [spec] bblock 56, line 232-7,  t1,  t142(I1),  t141,  t143
	c0    brf $b0.1, L71?3   ## bblock 65, line 238-5,  t245(I1)
;;								## 23
	c0    cmpeq $b0.0 = $r0.6, $r0.5   ## bblock 60, line 233-6,  t241(I1),  t150,  t114
	c0    cmpgt $b0.1 = $r0.6, $r0.0   ## [spec] bblock 61, line 238-6,  t242(I1),  t150,  0(SI32)
	c0    sh2add $r0.6 = $r0.2, (htab + 0)   ## [spec] bblock 56, line 233-7,  t237,  t1,  addr(htab?1.0)(P32)
;;								## 24
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 56, line 233-7, t144, t237
	c0    br $b0.0, L72?3   ## bblock 60, line 233-6,  t241(I1)
;;								## 25
	c0    brf $b0.1, L73?3   ## bblock 61, line 238-6,  t242(I1)
;;								## 26
	c0    cmpeq $b0.0 = $r0.6, $r0.5   ## bblock 56, line 233-7,  t238(I1),  t144,  t114
	c0    cmpgt $b0.1 = $r0.6, $r0.0   ## [spec] bblock 57, line 238-7,  t239(I1),  t144,  0(SI32)
;;								## 27
	c0    br $b0.0, L74?3   ## bblock 56, line 233-7,  t238(I1)
;;								## 28
	c0    brf $b0.1, L75?3   ## bblock 57, line 238-7,  t239(I1)
	      ## goto
;;
	c0    goto L59?3 ## goto
;;								## 29
.trace 27
L75?3:
	c0    stw 0x20[$r0.1] = $r0.2  ## spill ## t1
	c0    mov $r0.3 = $r0.11   ## t3
	c0    mov $r0.57 = $r0.4   ## t5
;;								## 0
	c0    stw 0x14[$r0.1] = $r0.5  ## spill ## t114
	c0    goto L56?3 ## goto
;;								## 1
.trace 26
L74?3:
	   ## bblock 58, line 0,  t145,  t1## $r0.2(skipped)
	c0    mov $r0.57 = $r0.4   ## t5
	c0    goto L76?3 ## goto
;;								## 0
.trace 25
L73?3:
	c0    mov $r0.2 = $r0.9   ## bblock 63, line 0,  t1,  t149
	c0    mov $r0.3 = $r0.11   ## t3
	c0    stw 0x14[$r0.1] = $r0.5  ## spill ## t114
	c0    mov $r0.57 = $r0.4   ## t5
;;								## 0
	c0    stw 0x20[$r0.1] = $r0.2  ## spill ## t1
	c0    goto L56?3 ## goto
;;								## 1
.trace 24
L72?3:
	c0    mov $r0.2 = $r0.9   ## bblock 62, line 0,  t145,  t149
	c0    mov $r0.57 = $r0.4   ## t5
	c0    goto L76?3 ## goto
;;								## 0
.trace 23
L71?3:
	c0    mov $r0.2 = $r0.8   ## bblock 67, line 0,  t1,  t154
	c0    mov $r0.3 = $r0.11   ## t3
	c0    stw 0x14[$r0.1] = $r0.5  ## spill ## t114
	c0    mov $r0.57 = $r0.4   ## t5
;;								## 0
	c0    stw 0x20[$r0.1] = $r0.2  ## spill ## t1
	c0    goto L56?3 ## goto
;;								## 1
.trace 22
L70?3:
	c0    mov $r0.2 = $r0.8   ## bblock 66, line 0,  t145,  t154
	c0    mov $r0.57 = $r0.4   ## t5
	c0    goto L76?3 ## goto
;;								## 0
.trace 21
L69?3:
	c0    mov $r0.2 = $r0.7   ## bblock 71, line 0,  t1,  t159
	c0    mov $r0.3 = $r0.11   ## t3
	c0    stw 0x14[$r0.1] = $r0.5  ## spill ## t114
	c0    mov $r0.57 = $r0.4   ## t5
;;								## 0
	c0    stw 0x20[$r0.1] = $r0.2  ## spill ## t1
	c0    goto L56?3 ## goto
;;								## 1
.trace 20
L68?3:
	c0    mov $r0.2 = $r0.7   ## bblock 70, line 0,  t145,  t159
	c0    mov $r0.57 = $r0.4   ## t5
	c0    goto L76?3 ## goto
;;								## 0
.trace 19
L67?3:
	c0    mov $r0.2 = $r0.9   ## bblock 75, line 0,  t1,  t164
	c0    mov $r0.3 = $r0.11   ## t3
	c0    stw 0x14[$r0.1] = $r0.5  ## spill ## t114
	c0    mov $r0.57 = $r0.4   ## t5
;;								## 0
	c0    stw 0x20[$r0.1] = $r0.2  ## spill ## t1
	c0    goto L56?3 ## goto
;;								## 1
.trace 18
L66?3:
	c0    mov $r0.2 = $r0.9   ## bblock 74, line 0,  t145,  t164
	c0    mov $r0.57 = $r0.4   ## t5
	c0    goto L76?3 ## goto
;;								## 0
.trace 17
L65?3:
	c0    mov $r0.2 = $r0.8   ## bblock 79, line 0,  t1,  t169
	c0    mov $r0.3 = $r0.11   ## t3
	c0    stw 0x14[$r0.1] = $r0.5  ## spill ## t114
	c0    mov $r0.57 = $r0.4   ## t5
;;								## 0
	c0    stw 0x20[$r0.1] = $r0.2  ## spill ## t1
	c0    goto L56?3 ## goto
;;								## 1
.trace 16
L64?3:
	c0    mov $r0.2 = $r0.8   ## bblock 78, line 0,  t145,  t169
	c0    mov $r0.57 = $r0.4   ## t5
	c0    goto L76?3 ## goto
;;								## 0
.trace 15
L63?3:
	c0    mov $r0.2 = $r0.7   ## bblock 83, line 0,  t1,  t174
	c0    mov $r0.3 = $r0.11   ## t3
	c0    stw 0x14[$r0.1] = $r0.5  ## spill ## t114
	c0    mov $r0.57 = $r0.4   ## t5
;;								## 0
	c0    stw 0x20[$r0.1] = $r0.2  ## spill ## t1
	c0    goto L56?3 ## goto
;;								## 1
.trace 14
L62?3:
	c0    mov $r0.2 = $r0.7   ## bblock 82, line 0,  t145,  t174
	c0    mov $r0.57 = $r0.4   ## t5
	c0    goto L76?3 ## goto
;;								## 0
.trace 13
L61?3:
	   ## bblock 85, line 0,  t1,  t135## $r0.2(skipped)
	c0    mov $r0.3 = $r0.11   ## t3
	c0    stw 0x14[$r0.1] = $r0.5  ## spill ## t114
	c0    mov $r0.57 = $r0.4   ## t5
;;								## 0
	c0    stw 0x20[$r0.1] = $r0.2  ## spill ## t1
	c0    goto L56?3 ## goto
;;								## 1
.trace 11
L60?3:
	   ## bblock 84, line 0,  t145,  t135## $r0.2(skipped)
	c0    mov $r0.57 = $r0.4   ## t5
;;								## 0
L76?3:
	c0    sh1add $r0.2 = $r0.2, (codetab + 0)   ## bblock 27, line 235,  t228,  t145,  addr(codetab?1.0)(P32)
	c0    ldw $r0.6 = 0x18[$r0.1]  ## restore ## t113
;;								## 1
	c0    ldhu $r0.7 = 0[$r0.2]   ## bblock 27, line 235, t3, t228
;;								## 2
	c0    goto L50?3 ## goto
;;								## 3
.trace 30
L53?3:
.call output, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = output   ## bblock 9, line 256,  raddr(output)(P32),  t3
	c0    stw 0x10[$r0.1] = $r0.58  ## spill ## t98
	c0    mov $r0.3 = $r0.7   ## t3
;;								## 0
	c0    ldw $r0.2 = ((out_count + 0) + 0)[$r0.0]   ## bblock 10, line 257, t84, 0(I32)
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 1
;;								## 2
	c0    add $r0.2 = $r0.2, 1   ## bblock 10, line 257,  t85,  t84,  1(SI32)
;;								## 3
.call output, caller, arg($r0.3:s32), ret()
	c0    stw ((out_count + 0) + 0)[$r0.0] = $r0.2   ## bblock 10, line 257, 0(I32), t85
	c0    call $l0.0 = output   ## bblock 10, line 258,  raddr(output)(P32),  -1(SI32)
;;								## 4
	c0    ldw $r0.2 = ((zcat_flg + 0) + 0)[$r0.0]   ## bblock 11, line 259, t86, 0(I32)
;;								## 5
	c0    ldw $r0.6 = ((quiet + 0) + 0)[$r0.0]   ## bblock 11, line 259, t88, 0(I32)
;;								## 6
	c0    ldw.d $r0.4 = ((in_count + 0) + 0)[$r0.0]   ## [spec] bblock 15, line 262, t95, 0(I32)
;;								## 7
	c0    norl $b0.0 = $r0.2, $r0.6   ## bblock 11, line 259,  t214(I1),  t86,  t88
	c0    ldw.d $r0.7 = ((bytes_out + 0) + 0)[$r0.0]   ## [spec] bblock 15, line 262, t92, 0(I32)
;;								## 8
	c0    brf $b0.0, L77?3   ## bblock 11, line 259,  t214(I1)
;;								## 9
.call prratio, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    sub $r0.3 = $r0.4, $r0.7   ## bblock 15, line 262,  t94,  t95,  t92
	c0    call $l0.0 = prratio   ## bblock 15, line 262,  raddr(prratio)(P32),  t94,  t95
;;								## 10
L77?3:
	c0    ldw $r0.2 = ((bytes_out + 0) + 0)[$r0.0]   ## bblock 12, line 264, t96, 0(I32)
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    mov $r0.4 = 2   ## 2(SI32)
	c0    mov $l0.0 = $r0.58   ## t98
;;								## 11
	c0    ldw $r0.6 = ((in_count + 0) + 0)[$r0.0]   ## bblock 12, line 264, t97, 0(I32)
;;								## 12
	c0    ldw $r0.58 = 0x2c[$r0.1]  ## restore ## t103
;;								## 13
	c0    cmpgt $b0.0 = $r0.2, $r0.6   ## bblock 12, line 264,  t215(I1),  t96,  t97
	c0    ldw $r0.57 = 0x28[$r0.1]  ## restore ## t102
;;								## 14
	c0    brf $b0.0, L78?3   ## bblock 12, line 264,  t215(I1)
;;								## 15
.return ret($r0.3:s32)
	c0    stw ((exit_stat + 0) + 0)[$r0.0] = $r0.4   ## bblock 14, line 265, 0(I32), 2(SI32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 13, line 266,  t99,  ?2.5?2auto_size(I32),  t98
;;								## 16
.trace 33
L78?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 13, line 266,  t99,  ?2.5?2auto_size(I32),  t98
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.trace 6
L51?3:
	c0    mov $r0.8 = -1   ## bblock 7, line 213,  t41(I8),  -1(SI32)
	c0    goto L52?3 ## goto
;;								## 0
.trace 40
L47?3:
	c0    add $r0.4 = $r0.4, 6   ## bblock 39, line 0,  t6,  t127,  6(I32)
	c0    stw 0x24[$r0.1] = $r0.6  ## spill ## t3
	c0    goto L49?3 ## goto
;;								## 0
.trace 39
L46?3:
	c0    add $r0.4 = $r0.4, 5   ## bblock 42, line 0,  t6,  t127,  5(I32)
	c0    stw 0x24[$r0.1] = $r0.6  ## spill ## t3
	c0    goto L49?3 ## goto
;;								## 0
.trace 38
L45?3:
	c0    add $r0.4 = $r0.4, 4   ## bblock 45, line 0,  t6,  t127,  4(I32)
	c0    stw 0x24[$r0.1] = $r0.6  ## spill ## t3
	c0    goto L49?3 ## goto
;;								## 0
.trace 37
L44?3:
	c0    add $r0.4 = $r0.4, 3   ## bblock 48, line 0,  t6,  t127,  3(I32)
	c0    stw 0x24[$r0.1] = $r0.6  ## spill ## t3
	c0    goto L49?3 ## goto
;;								## 0
.trace 36
L43?3:
	c0    add $r0.4 = $r0.4, 2   ## bblock 51, line 0,  t6,  t127,  2(I32)
	c0    stw 0x24[$r0.1] = $r0.6  ## spill ## t3
	c0    goto L49?3 ## goto
;;								## 0
.trace 35
L42?3:
	c0    add $r0.4 = $r0.4, 1   ## bblock 54, line 0,  t6,  t127,  1(I32)
	c0    stw 0x24[$r0.1] = $r0.6  ## spill ## t3
	c0    goto L49?3 ## goto
;;								## 0
.trace 29
L41?3:
	   ## bblock 55, line 0,  t6,  t127## $r0.4(skipped)
	c0    stw 0x24[$r0.1] = $r0.6  ## spill ## t3
;;								## 0
L49?3:
	c0    sub $r0.6 = 8, $r0.4   ## bblock 5, line 210,  t113,  8(SI32),  t6
	c0    stw 0x10[$r0.1] = $r0.5  ## spill ## t98
;;								## 1
	c0    stw 0x28[$r0.1] = $r0.57  ## spill ## t102
;;								## 2
	c0    stw 0x2c[$r0.1] = $r0.58  ## spill ## t103
;;								## 3
	c0    stw 0x18[$r0.1] = $r0.6  ## spill ## t113
;;								## 4
	c0    ldw $r0.57 = ((hsize + 0) + 0)[$r0.0]   ## bblock 5, line 211, t5, 0(I32)
;;								## 5
;;								## 6
.call cl_hash, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = cl_hash   ## bblock 5, line 212,  raddr(cl_hash)(P32),  t5
	c0    mov $r0.3 = $r0.57   ## t5
;;								## 7
	c0    ldw $r0.7 = 0x24[$r0.1]  ## restore ## t3
;;								## 8
	c0    ldw $r0.6 = 0x18[$r0.1]  ## restore ## t113
;;								## 9
	c0    ldw $r0.58 = 0x10[$r0.1]  ## restore ## t98
;;								## 10
	c0    goto L50?3 ## goto
;;								## 11
.trace 32
L38?3:
	c0    mov $r0.13 = -1   ## bblock 2, line 206,  t28(I8),  -1(SI32)
	c0    goto L39?3 ## goto
;;								## 0
.trace 31
L36?3:
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 34, line 193, t11, 0(I32)
	c0    mov $r0.6 = 3   ## 3(SI32)
	c0    mov $r0.9 = 9   ## 9(SI32)
	c0    mov $r0.7 = 1   ## 1(SI32)
;;								## 0
	c0    ldbu $r0.5 = ((magic_header + 0) + 0)[$r0.0]   ## bblock 34, line 193, t9(I8), 0(I32)
;;								## 1
	c0    add $r0.13 = $r0.2, 1   ## bblock 34, line 193,  t12,  t11,  1(SI32)
;;								## 2
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 34, line 193, 0(I32), t12
;;								## 3
	c0    stb 0[$r0.2] = $r0.5   ## bblock 34, line 193, t11, t9(I8)
;;								## 4
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 34, line 194, t16, 0(I32)
;;								## 5
	c0    ldbu $r0.5 = (((magic_header + 0) + 1) + 0)[$r0.0]   ## bblock 34, line 194, t14(I8), 0(I32)
;;								## 6
	c0    add $r0.13 = $r0.2, 1   ## bblock 34, line 194,  t17,  t16,  1(SI32)
;;								## 7
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 34, line 194, 0(I32), t17
;;								## 8
	c0    stb 0[$r0.2] = $r0.5   ## bblock 34, line 194, t16, t14(I8)
;;								## 9
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 34, line 195, t22, 0(I32)
;;								## 10
	c0    ldw $r0.5 = ((block_compress + 0) + 0)[$r0.0]   ## bblock 34, line 195, t18, 0(I32)
;;								## 11
	c0    add $r0.13 = $r0.2, 1   ## bblock 34, line 195,  t23,  t22,  1(SI32)
	c0    ldw $r0.14 = ((maxbits + 0) + 0)[$r0.0]   ## bblock 34, line 195, t19, 0(I32)
;;								## 12
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 34, line 195, 0(I32), t23
;;								## 13
	c0    or $r0.5 = $r0.5, $r0.14   ## bblock 34, line 195,  t20,  t18,  t19
;;								## 14
	c0    stb 0[$r0.2] = $r0.5   ## bblock 34, line 195, t22, t20
;;								## 15
	c0    ldw $r0.12 = ((block_compress + 0) + 0)[$r0.0]   ## bblock 1, line 205, t26, 0(I32)
;;								## 16
	c0    ldw.d $r0.5 = ((buflen + 0) + 0)[$r0.0]   ## [spec] bblock 1, line 206, t29, 0(I32)
	c0    goto L37?3 ## goto
;;								## 17
.endp
.section .bss
.section .data
.equ ?2.5?2scratch.0, 0x0
.equ ?2.5?2ras_p, 0x10
.equ ?2.5?2spill_p, 0x14
.section .data
.section .text
.equ ?2.5?2auto_size, 0x40
 ## End compressf
 ## Begin output
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:s32)
output::
.trace 7
	      ## auto_size == 0
	c0    ldw $r0.2 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## bblock 0, line 274, t1, 0(I32)
	c0    cmpge $b0.0 = $r0.3, $r0.0   ## bblock 0, line 277,  t335(I1),  t0,  0(SI32)
;;								## 0
	c0    ldw $r0.5 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 0, line 274, t2, 0(I32)
;;								## 1
	c0    shr $r0.7 = $r0.2, 3   ## [spec] bblock 7, line 279,  t8(SI29),  t1,  3(SI32)
	c0    and $r0.6 = $r0.2, 7   ## [spec] bblock 7, line 280,  t112,  t1,  7(I32)
	c0    brf $b0.0, L79?3   ## bblock 0, line 277,  t335(I1)
;;								## 2
	c0    add $r0.10 = $r0.7, (compress_27933.buf + 0)   ## bblock 7, line 279,  t21,  t8(SI29),  addr(compress_27933.buf?1.0)(P32)
	c0    add $r0.11 = $r0.7, ((compress_27933.buf + 0) + 1)   ## bblock 7, line 282,  t3,  t8(SI29),  (addr(compress_27933.buf?1.0)(P32) + 0x1(I32))(P32)
	c0    ldbu $r0.2 = (lmask + 0)[$r0.6]   ## bblock 7, line 281, t12(I8), t112
	c0    shl $r0.8 = $r0.3, $r0.6   ## bblock 7, line 281,  t13,  t0,  t112
	c0    sub $r0.9 = 8, $r0.6   ## bblock 7, line 284,  t24,  8(SI32),  t112
;;								## 3
	c0    ldbu $r0.12 = (rmask + 0)[$r0.6]   ## bblock 7, line 281, t16(I8), t112
	c0    shr $r0.3 = $r0.3, $r0.9   ## bblock 7, line 284,  t334,  t0,  t24
	c0    add $r0.5 = $r0.5, -8   ## bblock 7, line 283,  t348,  t2,  -8(SI32)
;;								## 4
	c0    ldb $r0.9 = (compress_27933.buf + 0)[$r0.7]   ## bblock 7, line 281, t17(SI8), t8(SI29)
	c0    and $r0.2 = $r0.2, $r0.8   ## bblock 7, line 281,  t14,  t12(I8),  t13
	c0    mov $r0.13 = $r0.3   ## bblock 7, line 284,  t111(SI24),  t334
	c0    add $r0.5 = $r0.5, $r0.6   ## bblock 7, line 283,  t110,  t348,  t112
;;								## 5
	c0    cmpge $b0.0 = $r0.5, 8   ## bblock 7, line 285,  t349(I1),  t110,  8(SI32)
;;								## 6
	c0    and $r0.12 = $r0.12, $r0.9   ## bblock 7, line 281,  t18,  t16(I8),  t17(SI8)
;;								## 7
	c0    or $r0.2 = $r0.2, $r0.12   ## bblock 7, line 281,  t19,  t14,  t18
;;								## 8
	c0    stb (compress_27933.buf + 0)[$r0.7] = $r0.2   ## bblock 7, line 281, t8(SI29), t19
	c0    brf $b0.0, L80?3   ## bblock 7, line 285,  t349(I1)
;;								## 9
	c0    stb 1[$r0.10] = $r0.3   ## bblock 25, line 287, t21, t334
	c0    add $r0.11 = $r0.10, 2   ## bblock 25, line 287,  t3,  t21,  2(SI32)
	c0    shr $r0.13 = $r0.3, 8   ## bblock 25, line 288,  t111(SI24),  t334,  8(SI32)
	c0    add $r0.5 = $r0.5, -8   ## bblock 25, line 289,  t110,  t110,  -8(SI32)
;;								## 10
L80?3:
	c0    cmpne $b0.0 = $r0.5, $r0.0   ## bblock 8, line 291,  t350(I1),  t110,  0(SI32)
	c0    mov $r0.3 = (compress_27933.buf + 0)   ## [spec] bblock 21, line 296,  t114,  addr(compress_27933.buf?1.0)(P32)
;;								## 11
	c0    brf $b0.0, L81?3   ## bblock 8, line 291,  t350(I1)
;;								## 12
	c0    stb 0[$r0.11] = $r0.13   ## bblock 24, line 292, t3, t111(SI24)
;;								## 13
L81?3:
	c0    ldw $r0.2 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## bblock 9, line 293, t32, 0(I32)
;;								## 14
	c0    ldw $r0.5 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 9, line 293, t36, 0(I32)
;;								## 15
	c0    ldw.d $r0.6 = ((bytes_out + 0) + 0)[$r0.0]   ## [spec] bblock 21, line 298, t41, 0(I32)
;;								## 16
	c0    add $r0.2 = $r0.2, $r0.5   ## bblock 9, line 293,  t35,  t32,  t36
	c0    shl $r0.7 = $r0.5, 3   ## bblock 9, line 294,  t37,  t36,  3(SI32)
	c0    mov $r0.4 = $r0.5   ## [spec] bblock 21, line 293,  t113,  t36
;;								## 17
	c0    stw ((compress_27933.offset + 0) + 0)[$r0.0] = $r0.2   ## bblock 9, line 293, 0(I32), t35
	c0    cmpeq $b0.0 = $r0.2, $r0.7   ## bblock 9, line 294,  t351(I1),  t35,  t37
	c0    add $r0.5 = $r0.5, $r0.6   ## [spec] bblock 21, line 298,  t42,  t36,  t41
;;								## 18
	c0    brf $b0.0, L82?3   ## bblock 9, line 294,  t351(I1)
;;								## 19
	c0    stw ((bytes_out + 0) + 0)[$r0.0] = $r0.5   ## bblock 21, line 298, 0(I32), t42
;;								## 20
.trace 2
L83?3:
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 22, line 301, t44, 0(I32)
	c0    cmpeq $b0.0 = $r0.4, 1   ## bblock 22, line 304,  t358(I1),  t113,  1(SI32)
	c0    cmpeq $b0.1 = $r0.4, 2   ## [spec] bblock 55, line 304-1,  t381(I1),  t113,  2(SI32)
	c0    cmpeq $b0.2 = $r0.4, 3   ## [spec] bblock 53, line 304-2,  t380(I1),  t113,  3(SI32)
	c0    cmpeq $b0.3 = $r0.4, 4   ## [spec] bblock 51, line 304-3,  t379(I1),  t113,  4(SI32)
	c0    cmpeq $b0.4 = $r0.4, 5   ## [spec] bblock 49, line 304-4,  t378(I1),  t113,  5(SI32)
	c0    cmpeq $b0.5 = $r0.4, 6   ## [spec] bblock 47, line 304-5,  t377(I1),  t113,  6(SI32)
;;								## 0
	c0    ldb $r0.5 = 0[$r0.3]   ## bblock 22, line 301, t43(SI8), t114
	c0    cmpeq $b0.6 = $r0.4, 7   ## [spec] bblock 45, line 304-6,  t376(I1),  t113,  7(SI32)
	c0    add $r0.4 = $r0.4, -8   ## [spec] bblock 43, line 304-7,  t113,  t113,  -8(SI32)
;;								## 1
	c0    add $r0.6 = $r0.2, 1   ## bblock 22, line 301,  t45,  t44,  1(SI32)
	c0    cmpeq $b0.7 = $r0.4, $r0.0   ## [spec] bblock 43, line 304-7,  t375(I1),  t113,  0(SI32)
;;								## 2
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.6   ## bblock 22, line 301, 0(I32), t45
;;								## 3
	c0    stb 0[$r0.2] = $r0.5   ## bblock 22, line 301, t44, t43(SI8)
	c0    br $b0.0, L84?3   ## bblock 22, line 304,  t358(I1)
;;								## 4
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 55, line 301-1, t183, 0(I32)
;;								## 5
	c0    ldb $r0.5 = 1[$r0.3]   ## bblock 55, line 301-1, t182(SI8), t114
;;								## 6
	c0    add $r0.6 = $r0.2, 1   ## bblock 55, line 301-1,  t184,  t183,  1(SI32)
;;								## 7
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.6   ## bblock 55, line 301-1, 0(I32), t184
;;								## 8
	c0    stb 0[$r0.2] = $r0.5   ## bblock 55, line 301-1, t183, t182(SI8)
	c0    br $b0.1, L84?3   ## bblock 55, line 304-1,  t381(I1)
;;								## 9
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 53, line 301-2, t178, 0(I32)
;;								## 10
	c0    ldb $r0.5 = 2[$r0.3]   ## bblock 53, line 301-2, t177(SI8), t114
;;								## 11
	c0    add $r0.6 = $r0.2, 1   ## bblock 53, line 301-2,  t179,  t178,  1(SI32)
;;								## 12
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.6   ## bblock 53, line 301-2, 0(I32), t179
;;								## 13
	c0    stb 0[$r0.2] = $r0.5   ## bblock 53, line 301-2, t178, t177(SI8)
	c0    br $b0.2, L84?3   ## bblock 53, line 304-2,  t380(I1)
;;								## 14
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 51, line 301-3, t173, 0(I32)
;;								## 15
	c0    ldb $r0.5 = 3[$r0.3]   ## bblock 51, line 301-3, t172(SI8), t114
;;								## 16
	c0    add $r0.6 = $r0.2, 1   ## bblock 51, line 301-3,  t174,  t173,  1(SI32)
;;								## 17
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.6   ## bblock 51, line 301-3, 0(I32), t174
;;								## 18
	c0    stb 0[$r0.2] = $r0.5   ## bblock 51, line 301-3, t173, t172(SI8)
	c0    br $b0.3, L84?3   ## bblock 51, line 304-3,  t379(I1)
;;								## 19
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 49, line 301-4, t168, 0(I32)
;;								## 20
	c0    ldb $r0.5 = 4[$r0.3]   ## bblock 49, line 301-4, t167(SI8), t114
;;								## 21
	c0    add $r0.6 = $r0.2, 1   ## bblock 49, line 301-4,  t169,  t168,  1(SI32)
;;								## 22
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.6   ## bblock 49, line 301-4, 0(I32), t169
;;								## 23
	c0    stb 0[$r0.2] = $r0.5   ## bblock 49, line 301-4, t168, t167(SI8)
	c0    br $b0.4, L84?3   ## bblock 49, line 304-4,  t378(I1)
;;								## 24
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 47, line 301-5, t163, 0(I32)
;;								## 25
	c0    ldb $r0.5 = 5[$r0.3]   ## bblock 47, line 301-5, t162(SI8), t114
;;								## 26
	c0    add $r0.6 = $r0.2, 1   ## bblock 47, line 301-5,  t164,  t163,  1(SI32)
;;								## 27
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.6   ## bblock 47, line 301-5, 0(I32), t164
;;								## 28
	c0    stb 0[$r0.2] = $r0.5   ## bblock 47, line 301-5, t163, t162(SI8)
	c0    br $b0.5, L84?3   ## bblock 47, line 304-5,  t377(I1)
;;								## 29
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 45, line 301-6, t158, 0(I32)
;;								## 30
	c0    ldb $r0.5 = 6[$r0.3]   ## bblock 45, line 301-6, t157(SI8), t114
;;								## 31
	c0    add $r0.6 = $r0.2, 1   ## bblock 45, line 301-6,  t159,  t158,  1(SI32)
;;								## 32
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.6   ## bblock 45, line 301-6, 0(I32), t159
;;								## 33
	c0    stb 0[$r0.2] = $r0.5   ## bblock 45, line 301-6, t158, t157(SI8)
	c0    br $b0.6, L84?3   ## bblock 45, line 304-6,  t376(I1)
;;								## 34
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 43, line 301-7, t155, 0(I32)
;;								## 35
	c0    ldb $r0.5 = 7[$r0.3]   ## bblock 43, line 301-7, t154(SI8), t114
	c0    add $r0.3 = $r0.3, 8   ## bblock 43, line 302-7,  t114,  t114,  8(SI32)
;;								## 36
	c0    add $r0.6 = $r0.2, 1   ## bblock 43, line 301-7,  t156,  t155,  1(SI32)
;;								## 37
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.6   ## bblock 43, line 301-7, 0(I32), t156
;;								## 38
	c0    stb 0[$r0.2] = $r0.5   ## bblock 43, line 301-7, t155, t154(SI8)
	c0    br $b0.7, L84?3   ## bblock 43, line 304-7,  t375(I1)
	      ## goto
;;
	c0    goto L83?3 ## goto
;;								## 39
.trace 15
L84?3:
	c0    stw ((compress_27933.offset + 0) + 0)[$r0.0] = $r0.0   ## bblock 23, line 305, 0(I32), 0(SI32)
;;								## 0
.trace 9
L82?3:
	c0    ldw $r0.2 = ((free_ent + 0) + 0)[$r0.0]   ## bblock 10, line 307, t49, 0(I32)
	c0    mov $r0.6 = 2   ## [spec] bblock 17, line 0,  t221,  2(I32)
	c0    mov $r0.7 = 3   ## [spec] bblock 17, line 0,  t222,  3(I32)
	c0    mov $r0.8 = 4   ## [spec] bblock 17, line 0,  t223,  4(I32)
	c0    mov $r0.9 = 5   ## [spec] bblock 17, line 0,  t224,  5(I32)
	c0    mov $r0.10 = 6   ## [spec] bblock 17, line 0,  t225,  6(I32)
	c0    mov $r0.11 = 7   ## [spec] bblock 17, line 0,  t226,  7(I32)
;;								## 0
	c0    ldw $r0.12 = ((maxcode + 0) + 0)[$r0.0]   ## bblock 10, line 307, t50, 0(I32)
	c0    mov $r0.5 = 1   ## [spec] bblock 17, line 0,  t227,  1(I32)
	c0    mov $r0.4 = (compress_27933.buf + 0)   ## [spec] bblock 17, line 0,  t228,  addr(compress_27933.buf?1.0)(P32)
	c0    mov $r0.3 = $r0.0   ## [spec] bblock 17, line 311,  t138,  0(SI32)
;;								## 1
	c0    ldw $r0.13 = ((clear_flg + 0) + 0)[$r0.0]   ## bblock 10, line 307, t52, 0(I32)
;;								## 2
	c0    cmpgt $r0.2 = $r0.2, $r0.12   ## bblock 10, line 307,  t51,  t49,  t50
	c0    ldw.d $r0.14 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## [spec] bblock 11, line 309, t54, 0(I32)
;;								## 3
	c0    cmpgt $r0.13 = $r0.13, $r0.0   ## bblock 10, line 307,  t53,  t52,  0(SI32)
;;								## 4
	c0    orl $b0.0 = $r0.2, $r0.13   ## bblock 10, line 307,  t352(I1),  t51,  t53
	c0    cmpgt $b0.1 = $r0.14, $r0.0   ## [spec] bblock 11, line 309,  t353(I1),  t54,  0(SI32)
;;								## 5
	c0    brf $b0.0, L85?3   ## bblock 10, line 307,  t352(I1)
;;								## 6
	c0    brf $b0.1, L86?3   ## bblock 11, line 309,  t353(I1)
;;								## 7
.trace 5
L87?3:
	c0    ldw $r0.2 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 18, line 311, t56, 0(I32)
;;								## 0
	c0    ldw.d $r0.12 = ((outbuf + 0) + 0)[$r0.0]   ## [spec] bblock 20, line 312, t62, 0(I32)
;;								## 1
	c0    cmplt $b0.0 = $r0.3, $r0.2   ## bblock 18, line 311,  t356(I1),  t138,  t56
	c0    ldb.d $r0.2 = 0[$r0.4]   ## [spec] bblock 20, line 312, t61(SI8), t228
	c0    add $r0.3 = $r0.3, 8   ## [spec] bblock 59, line 311-7,  t138,  t138,  8(SI32)
;;								## 2
	c0    add $r0.13 = $r0.12, 1   ## [spec] bblock 20, line 312,  t63,  t62,  1(SI32)
	c0    brf $b0.0, L88?3   ## bblock 18, line 311,  t356(I1)
;;								## 3
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 20, line 312, 0(I32), t63
;;								## 4
	c0    stb 0[$r0.12] = $r0.2   ## bblock 20, line 312, t62, t61(SI8)
;;								## 5
	c0    ldw $r0.2 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 20, line 311-1, t216, 0(I32)
;;								## 6
	c0    ldw.d $r0.12 = ((outbuf + 0) + 0)[$r0.0]   ## [spec] bblock 77, line 312-1, t218, 0(I32)
;;								## 7
	c0    cmplt $b0.0 = $r0.5, $r0.2   ## bblock 20, line 311-1,  t357(I1),  t227,  t216
	c0    ldb.d $r0.2 = 1[$r0.4]   ## [spec] bblock 77, line 312-1, t217(SI8), t228
	c0    add $r0.5 = $r0.5, 8   ## [spec] bblock 59, line 0,  t227,  t227,  8(I32)
;;								## 8
	c0    add $r0.13 = $r0.12, 1   ## [spec] bblock 77, line 312-1,  t219,  t218,  1(SI32)
	c0    brf $b0.0, L88?3   ## bblock 20, line 311-1,  t357(I1)
;;								## 9
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 77, line 312-1, 0(I32), t219
;;								## 10
	c0    stb 0[$r0.12] = $r0.2   ## bblock 77, line 312-1, t218, t217(SI8)
;;								## 11
	c0    ldw $r0.2 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 77, line 311-2, t211, 0(I32)
;;								## 12
	c0    ldw.d $r0.12 = ((outbuf + 0) + 0)[$r0.0]   ## [spec] bblock 74, line 312-2, t213, 0(I32)
;;								## 13
	c0    cmplt $b0.0 = $r0.6, $r0.2   ## bblock 77, line 311-2,  t387(I1),  t221,  t211
	c0    ldb.d $r0.2 = 2[$r0.4]   ## [spec] bblock 74, line 312-2, t212(SI8), t228
	c0    add $r0.6 = $r0.6, 8   ## [spec] bblock 59, line 0,  t221,  t221,  8(I32)
;;								## 14
	c0    add $r0.13 = $r0.12, 1   ## [spec] bblock 74, line 312-2,  t214,  t213,  1(SI32)
	c0    brf $b0.0, L88?3   ## bblock 77, line 311-2,  t387(I1)
;;								## 15
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 74, line 312-2, 0(I32), t214
;;								## 16
	c0    stb 0[$r0.12] = $r0.2   ## bblock 74, line 312-2, t213, t212(SI8)
;;								## 17
	c0    ldw $r0.2 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 74, line 311-3, t206, 0(I32)
;;								## 18
	c0    ldw.d $r0.12 = ((outbuf + 0) + 0)[$r0.0]   ## [spec] bblock 71, line 312-3, t208, 0(I32)
;;								## 19
	c0    cmplt $b0.0 = $r0.7, $r0.2   ## bblock 74, line 311-3,  t386(I1),  t222,  t206
	c0    ldb.d $r0.2 = 3[$r0.4]   ## [spec] bblock 71, line 312-3, t207(SI8), t228
	c0    add $r0.7 = $r0.7, 8   ## [spec] bblock 59, line 0,  t222,  t222,  8(I32)
;;								## 20
	c0    add $r0.13 = $r0.12, 1   ## [spec] bblock 71, line 312-3,  t209,  t208,  1(SI32)
	c0    brf $b0.0, L88?3   ## bblock 74, line 311-3,  t386(I1)
;;								## 21
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 71, line 312-3, 0(I32), t209
;;								## 22
	c0    stb 0[$r0.12] = $r0.2   ## bblock 71, line 312-3, t208, t207(SI8)
;;								## 23
	c0    ldw $r0.2 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 71, line 311-4, t201, 0(I32)
;;								## 24
	c0    ldw.d $r0.12 = ((outbuf + 0) + 0)[$r0.0]   ## [spec] bblock 68, line 312-4, t203, 0(I32)
;;								## 25
	c0    cmplt $b0.0 = $r0.8, $r0.2   ## bblock 71, line 311-4,  t385(I1),  t223,  t201
	c0    ldb.d $r0.2 = 4[$r0.4]   ## [spec] bblock 68, line 312-4, t202(SI8), t228
	c0    add $r0.8 = $r0.8, 8   ## [spec] bblock 59, line 0,  t223,  t223,  8(I32)
;;								## 26
	c0    add $r0.13 = $r0.12, 1   ## [spec] bblock 68, line 312-4,  t204,  t203,  1(SI32)
	c0    brf $b0.0, L88?3   ## bblock 71, line 311-4,  t385(I1)
;;								## 27
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 68, line 312-4, 0(I32), t204
;;								## 28
	c0    stb 0[$r0.12] = $r0.2   ## bblock 68, line 312-4, t203, t202(SI8)
;;								## 29
	c0    ldw $r0.2 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 68, line 311-5, t196, 0(I32)
;;								## 30
	c0    ldw.d $r0.12 = ((outbuf + 0) + 0)[$r0.0]   ## [spec] bblock 65, line 312-5, t198, 0(I32)
;;								## 31
	c0    cmplt $b0.0 = $r0.9, $r0.2   ## bblock 68, line 311-5,  t384(I1),  t224,  t196
	c0    ldb.d $r0.2 = 5[$r0.4]   ## [spec] bblock 65, line 312-5, t197(SI8), t228
	c0    add $r0.9 = $r0.9, 8   ## [spec] bblock 59, line 0,  t224,  t224,  8(I32)
;;								## 32
	c0    add $r0.13 = $r0.12, 1   ## [spec] bblock 65, line 312-5,  t199,  t198,  1(SI32)
	c0    brf $b0.0, L88?3   ## bblock 68, line 311-5,  t384(I1)
;;								## 33
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 65, line 312-5, 0(I32), t199
;;								## 34
	c0    stb 0[$r0.12] = $r0.2   ## bblock 65, line 312-5, t198, t197(SI8)
;;								## 35
	c0    ldw $r0.2 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 65, line 311-6, t191, 0(I32)
;;								## 36
	c0    ldw.d $r0.12 = ((outbuf + 0) + 0)[$r0.0]   ## [spec] bblock 62, line 312-6, t193, 0(I32)
;;								## 37
	c0    cmplt $b0.0 = $r0.10, $r0.2   ## bblock 65, line 311-6,  t383(I1),  t225,  t191
	c0    ldb.d $r0.2 = 6[$r0.4]   ## [spec] bblock 62, line 312-6, t192(SI8), t228
	c0    add $r0.10 = $r0.10, 8   ## [spec] bblock 59, line 0,  t225,  t225,  8(I32)
;;								## 38
	c0    add $r0.13 = $r0.12, 1   ## [spec] bblock 62, line 312-6,  t194,  t193,  1(SI32)
	c0    brf $b0.0, L88?3   ## bblock 65, line 311-6,  t383(I1)
;;								## 39
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 62, line 312-6, 0(I32), t194
;;								## 40
	c0    stb 0[$r0.12] = $r0.2   ## bblock 62, line 312-6, t193, t192(SI8)
;;								## 41
	c0    ldw $r0.2 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 62, line 311-7, t187, 0(I32)
;;								## 42
	c0    ldw.d $r0.12 = ((outbuf + 0) + 0)[$r0.0]   ## [spec] bblock 59, line 312-7, t189, 0(I32)
;;								## 43
	c0    cmplt $b0.0 = $r0.11, $r0.2   ## bblock 62, line 311-7,  t382(I1),  t226,  t187
	c0    ldb.d $r0.2 = 7[$r0.4]   ## [spec] bblock 59, line 312-7, t188(SI8), t228
	c0    add $r0.11 = $r0.11, 8   ## [spec] bblock 59, line 0,  t226,  t226,  8(I32)
	c0    add $r0.4 = $r0.4, 8   ## [spec] bblock 59, line 0,  t228,  t228,  8(I32)
;;								## 44
	c0    add $r0.13 = $r0.12, 1   ## [spec] bblock 59, line 312-7,  t190,  t189,  1(SI32)
	c0    brf $b0.0, L88?3   ## bblock 62, line 311-7,  t382(I1)
;;								## 45
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 59, line 312-7, 0(I32), t190
;;								## 46
	c0    stb 0[$r0.12] = $r0.2   ## bblock 59, line 312-7, t189, t188(SI8)
	c0    goto L87?3 ## goto
;;								## 47
.trace 17
L88?3:
	c0    ldw $r0.2 = ((bytes_out + 0) + 0)[$r0.0]   ## bblock 19, line 313, t64, 0(I32)
;;								## 0
	c0    ldw $r0.3 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 19, line 313, t65, 0(I32)
;;								## 1
;;								## 2
	c0    add $r0.2 = $r0.2, $r0.3   ## bblock 19, line 313,  t66,  t64,  t65
;;								## 3
	c0    stw ((bytes_out + 0) + 0)[$r0.0] = $r0.2   ## bblock 19, line 313, 0(I32), t66
;;								## 4
.trace 14
L86?3:
	c0    ldw $r0.2 = ((clear_flg + 0) + 0)[$r0.0]   ## bblock 12, line 316, t67, 0(I32)
	c0    mov $r0.4 = 511   ## 511(SI32)
	c0    mov $r0.3 = 9   ## 9(SI32)
;;								## 0
	c0    stw ((compress_27933.offset + 0) + 0)[$r0.0] = $r0.0   ## bblock 12, line 315, 0(I32), 0(SI32)
;;								## 1
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 12, line 316,  t354(I1),  t67,  0(SI32)
;;								## 2
	c0    brf $b0.0, L89?3   ## bblock 12, line 316,  t354(I1)
;;								## 3
	c0    stw ((n_bits + 0) + 0)[$r0.0] = $r0.3   ## bblock 16, line 318, 0(I32), 9(SI32)
;;								## 4
	c0    stw ((maxcode + 0) + 0)[$r0.0] = $r0.4   ## bblock 16, line 318, 0(I32), 511(SI32)
;;								## 5
.return ret()
	c0    stw ((clear_flg + 0) + 0)[$r0.0] = $r0.0   ## bblock 16, line 319, 0(I32), 0(SI32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 3, line 339,  t96,  ?2.6?2auto_size(I32),  t95
;;								## 6
.trace 16
L89?3:
	c0    ldw $r0.2 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 13, line 323, t70, 0(I32)
;;								## 0
	c0    ldw $r0.3 = ((maxbits + 0) + 0)[$r0.0]   ## bblock 13, line 324, t73, 0(I32)
;;								## 1
	c0    add $r0.2 = $r0.2, 1   ## bblock 13, line 323,  t72,  t70,  1(SI32)
	c0    ldw.d $r0.4 = ((maxmaxcode + 0) + 0)[$r0.0]   ## [spec] bblock 15, line 325, t74, 0(I32)
;;								## 2
	c0    stw ((n_bits + 0) + 0)[$r0.0] = $r0.2   ## bblock 13, line 323, 0(I32), t72
	c0    cmpeq $b0.0 = $r0.2, $r0.3   ## bblock 13, line 324,  t355(I1),  t72,  t73
;;								## 3
	c0    brf $b0.0, L90?3   ## bblock 13, line 324,  t355(I1)
;;								## 4
.return ret()
	c0    stw ((maxcode + 0) + 0)[$r0.0] = $r0.4   ## bblock 15, line 325, 0(I32), t74
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 3, line 339,  t96,  ?2.6?2auto_size(I32),  t95
;;								## 5
.trace 18
L90?3:
	c0    ldw $r0.2 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 14, line 327, t75, 0(I32)
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
;;								## 1
	c0    shl $r0.3 = $r0.3, $r0.2   ## bblock 14, line 327,  t76,  1(SI32),  t75
;;								## 2
	c0    add $r0.3 = $r0.3, -1   ## bblock 14, line 327,  t77,  t76,  -1(SI32)
;;								## 3
.return ret()
	c0    stw ((maxcode + 0) + 0)[$r0.0] = $r0.3   ## bblock 14, line 327, 0(I32), t77
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 3, line 339,  t96,  ?2.6?2auto_size(I32),  t95
;;								## 4
.trace 13
L85?3:
.return ret()
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 3, line 339,  t96,  ?2.6?2auto_size(I32),  t95
;;								## 0
.trace 8
L79?3:
	c0    ldw.d $r0.2 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## [spec] bblock 2, line 336, t91, 0(I32)
;;								## 0
	c0    ldw.d $r0.3 = ((bytes_out + 0) + 0)[$r0.0]   ## [spec] bblock 2, line 336, t90, 0(I32)
;;								## 1
	c0    ldw $r0.4 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## bblock 1, line 333, t78, 0(I32)
	c0    add $r0.2 = $r0.2, 7   ## [spec] bblock 2, line 336,  t92,  t91,  7(SI32)
;;								## 2
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## [spec] bblock 2, line 336,  t337,  t92,  0(I32)
	c0    add $r0.5 = $r0.2, 7   ## [spec] bblock 2, line 336,  t338,  t92,  7(I32)
;;								## 3
	c0    cmpgt $b0.1 = $r0.4, $r0.0   ## bblock 1, line 333,  t336(I1),  t78,  0(SI32)
	c0    slct $r0.5 = $b0.0, $r0.5, $r0.2   ## [spec] bblock 2, line 336,  t339,  t337,  t338,  t92
;;								## 4
	c0    shr $r0.5 = $r0.5, 3   ## [spec] bblock 2, line 336,  t93,  t339,  3(I32)
	c0    br $b0.1, L91?3   ## bblock 1, line 333,  t336(I1)
;;								## 5
L92?3:
	c0    add $r0.3 = $r0.3, $r0.5   ## bblock 2, line 336,  t94,  t90,  t93
	c0    stw ((compress_27933.offset + 0) + 0)[$r0.0] = $r0.0   ## bblock 2, line 337, 0(I32), 0(SI32)
;;								## 6
.return ret()
	c0    stw ((bytes_out + 0) + 0)[$r0.0] = $r0.3   ## bblock 2, line 336, 0(I32), t94
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 3, line 339,  t96,  ?2.6?2auto_size(I32),  t95
;;								## 7
.trace 10
L91?3:
	c0    mov $r0.6 = 2   ## bblock 4, line 0,  t309,  2(I32)
	c0    mov $r0.7 = 3   ## bblock 4, line 0,  t310,  3(I32)
	c0    mov $r0.8 = 4   ## bblock 4, line 0,  t311,  4(I32)
	c0    mov $r0.9 = 5   ## bblock 4, line 0,  t312,  5(I32)
	c0    mov $r0.5 = 1   ## bblock 4, line 0,  t313,  1(I32)
	c0    mov $r0.4 = (compress_27933.buf + 0)   ## bblock 4, line 0,  t314,  addr(compress_27933.buf?1.0)(P32)
	c0    mov $r0.3 = $r0.0   ## bblock 4, line 334,  t122,  0(SI32)
;;								## 0
.trace 1
L93?3:
	c0    ldw $r0.2 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## bblock 5, line 334, t135, 0(I32)
;;								## 0
	c0    ldw.d $r0.10 = ((outbuf + 0) + 0)[$r0.0]   ## [spec] bblock 6, line 335, t137, 0(I32)
;;								## 1
	c0    add $r0.2 = $r0.2, 7   ## bblock 5, line 334,  t134,  t135,  7(SI32)
	c0    ldb.d $r0.11 = 0[$r0.4]   ## [spec] bblock 6, line 335, t131(SI8), t314
;;								## 2
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 5, line 334,  t340,  t134,  0(I32)
	c0    add $r0.12 = $r0.2, 7   ## bblock 5, line 334,  t341,  t134,  7(I32)
	c0    add $r0.13 = $r0.10, 1   ## [spec] bblock 6, line 335,  t136,  t137,  1(SI32)
;;								## 3
	c0    slct $r0.12 = $b0.0, $r0.12, $r0.2   ## bblock 5, line 334,  t342,  t340,  t341,  t134
;;								## 4
	c0    shr $r0.12 = $r0.12, 3   ## bblock 5, line 334,  t133,  t342,  3(I32)
;;								## 5
	c0    cmplt $b0.0 = $r0.3, $r0.12   ## bblock 5, line 334,  t343(I1),  t122,  t133
	c0    add $r0.3 = $r0.3, 6   ## [spec] bblock 28, line 334-5,  t122,  t122,  6(SI32)
;;								## 6
	c0    brf $b0.0, L94?3   ## bblock 5, line 334,  t343(I1)
;;								## 7
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 6, line 335, 0(I32), t136
;;								## 8
	c0    stb 0[$r0.10] = $r0.11   ## bblock 6, line 335, t137, t131(SI8)
;;								## 9
	c0    ldw $r0.2 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## bblock 6, line 334-1, t147, 0(I32)
;;								## 10
	c0    ldw.d $r0.10 = ((outbuf + 0) + 0)[$r0.0]   ## [spec] bblock 40, line 335-1, t151, 0(I32)
;;								## 11
	c0    add $r0.2 = $r0.2, 7   ## bblock 6, line 334-1,  t148,  t147,  7(SI32)
	c0    ldb.d $r0.11 = 1[$r0.4]   ## [spec] bblock 40, line 335-1, t150(SI8), t314
;;								## 12
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 6, line 334-1,  t344,  t148,  0(I32)
	c0    add $r0.12 = $r0.2, 7   ## bblock 6, line 334-1,  t345,  t148,  7(I32)
	c0    add $r0.13 = $r0.10, 1   ## [spec] bblock 40, line 335-1,  t152,  t151,  1(SI32)
;;								## 13
	c0    slct $r0.12 = $b0.0, $r0.12, $r0.2   ## bblock 6, line 334-1,  t346,  t344,  t345,  t148
;;								## 14
	c0    shr $r0.12 = $r0.12, 3   ## bblock 6, line 334-1,  t149,  t346,  3(I32)
;;								## 15
	c0    cmplt $b0.0 = $r0.5, $r0.12   ## bblock 6, line 334-1,  t347(I1),  t313,  t149
	c0    add $r0.5 = $r0.5, 6   ## [spec] bblock 28, line 0,  t313,  t313,  6(I32)
;;								## 16
	c0    brf $b0.0, L95?3   ## bblock 6, line 334-1,  t347(I1)
;;								## 17
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 40, line 335-1, 0(I32), t152
;;								## 18
	c0    stb 0[$r0.10] = $r0.11   ## bblock 40, line 335-1, t151, t150(SI8)
;;								## 19
	c0    ldw $r0.2 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## bblock 40, line 334-2, t125, 0(I32)
;;								## 20
	c0    ldw.d $r0.10 = ((outbuf + 0) + 0)[$r0.0]   ## [spec] bblock 37, line 335-2, t144, 0(I32)
;;								## 21
	c0    add $r0.2 = $r0.2, 7   ## bblock 40, line 334-2,  t141,  t125,  7(SI32)
	c0    ldb.d $r0.11 = 2[$r0.4]   ## [spec] bblock 37, line 335-2, t143(SI8), t314
;;								## 22
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 40, line 334-2,  t371,  t141,  0(I32)
	c0    add $r0.12 = $r0.2, 7   ## bblock 40, line 334-2,  t372,  t141,  7(I32)
	c0    add $r0.13 = $r0.10, 1   ## [spec] bblock 37, line 335-2,  t145,  t144,  1(SI32)
;;								## 23
	c0    slct $r0.12 = $b0.0, $r0.12, $r0.2   ## bblock 40, line 334-2,  t373,  t371,  t372,  t141
;;								## 24
	c0    shr $r0.12 = $r0.12, 3   ## bblock 40, line 334-2,  t142,  t373,  3(I32)
;;								## 25
	c0    cmplt $b0.0 = $r0.6, $r0.12   ## bblock 40, line 334-2,  t374(I1),  t309,  t142
	c0    add $r0.6 = $r0.6, 6   ## [spec] bblock 28, line 0,  t309,  t309,  6(I32)
;;								## 26
	c0    brf $b0.0, L96?3   ## bblock 40, line 334-2,  t374(I1)
;;								## 27
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 37, line 335-2, 0(I32), t145
;;								## 28
	c0    stb 0[$r0.10] = $r0.11   ## bblock 37, line 335-2, t144, t143(SI8)
;;								## 29
	c0    ldw $r0.2 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## bblock 37, line 334-3, t80, 0(I32)
;;								## 30
	c0    ldw.d $r0.10 = ((outbuf + 0) + 0)[$r0.0]   ## [spec] bblock 34, line 335-3, t88, 0(I32)
;;								## 31
	c0    add $r0.2 = $r0.2, 7   ## bblock 37, line 334-3,  t81,  t80,  7(SI32)
	c0    ldb.d $r0.11 = 3[$r0.4]   ## [spec] bblock 34, line 335-3, t87(SI8), t314
;;								## 32
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 37, line 334-3,  t367,  t81,  0(I32)
	c0    add $r0.12 = $r0.2, 7   ## bblock 37, line 334-3,  t368,  t81,  7(I32)
	c0    add $r0.13 = $r0.10, 1   ## [spec] bblock 34, line 335-3,  t89,  t88,  1(SI32)
;;								## 33
	c0    slct $r0.12 = $b0.0, $r0.12, $r0.2   ## bblock 37, line 334-3,  t369,  t367,  t368,  t81
;;								## 34
	c0    shr $r0.12 = $r0.12, 3   ## bblock 37, line 334-3,  t82,  t369,  3(I32)
;;								## 35
	c0    cmplt $b0.0 = $r0.7, $r0.12   ## bblock 37, line 334-3,  t370(I1),  t310,  t82
	c0    add $r0.7 = $r0.7, 6   ## [spec] bblock 28, line 0,  t310,  t310,  6(I32)
;;								## 36
	c0    brf $b0.0, L97?3   ## bblock 37, line 334-3,  t370(I1)
;;								## 37
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 34, line 335-3, 0(I32), t89
;;								## 38
	c0    stb 0[$r0.10] = $r0.11   ## bblock 34, line 335-3, t88, t87(SI8)
;;								## 39
	c0    ldw $r0.2 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## bblock 34, line 334-4, t121, 0(I32)
;;								## 40
	c0    ldw.d $r0.10 = ((outbuf + 0) + 0)[$r0.0]   ## [spec] bblock 31, line 335-4, t117, 0(I32)
;;								## 41
	c0    add $r0.2 = $r0.2, 7   ## bblock 34, line 334-4,  t120,  t121,  7(SI32)
	c0    ldb.d $r0.11 = 4[$r0.4]   ## [spec] bblock 31, line 335-4, t118(SI8), t314
;;								## 42
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 34, line 334-4,  t363,  t120,  0(I32)
	c0    add $r0.12 = $r0.2, 7   ## bblock 34, line 334-4,  t364,  t120,  7(I32)
	c0    add $r0.13 = $r0.10, 1   ## [spec] bblock 31, line 335-4,  t116,  t117,  1(SI32)
;;								## 43
	c0    slct $r0.12 = $b0.0, $r0.12, $r0.2   ## bblock 34, line 334-4,  t365,  t363,  t364,  t120
;;								## 44
	c0    shr $r0.12 = $r0.12, 3   ## bblock 34, line 334-4,  t119,  t365,  3(I32)
;;								## 45
	c0    cmplt $b0.0 = $r0.8, $r0.12   ## bblock 34, line 334-4,  t366(I1),  t311,  t119
	c0    add $r0.8 = $r0.8, 6   ## [spec] bblock 28, line 0,  t311,  t311,  6(I32)
;;								## 46
	c0    brf $b0.0, L98?3   ## bblock 34, line 334-4,  t366(I1)
;;								## 47
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 31, line 335-4, 0(I32), t116
;;								## 48
	c0    stb 0[$r0.10] = $r0.11   ## bblock 31, line 335-4, t117, t118(SI8)
;;								## 49
	c0    ldw $r0.2 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## bblock 31, line 334-5, t132, 0(I32)
;;								## 50
	c0    ldw.d $r0.10 = ((outbuf + 0) + 0)[$r0.0]   ## [spec] bblock 28, line 335-5, t127, 0(I32)
;;								## 51
	c0    add $r0.2 = $r0.2, 7   ## bblock 31, line 334-5,  t130,  t132,  7(SI32)
	c0    ldb.d $r0.11 = 5[$r0.4]   ## [spec] bblock 28, line 335-5, t128(SI8), t314
	c0    add $r0.4 = $r0.4, 6   ## [spec] bblock 28, line 0,  t314,  t314,  6(I32)
;;								## 52
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 31, line 334-5,  t359,  t130,  0(I32)
	c0    add $r0.12 = $r0.2, 7   ## bblock 31, line 334-5,  t360,  t130,  7(I32)
	c0    add $r0.13 = $r0.10, 1   ## [spec] bblock 28, line 335-5,  t126,  t127,  1(SI32)
;;								## 53
	c0    slct $r0.12 = $b0.0, $r0.12, $r0.2   ## bblock 31, line 334-5,  t361,  t359,  t360,  t130
;;								## 54
	c0    shr $r0.12 = $r0.12, 3   ## bblock 31, line 334-5,  t129,  t361,  3(I32)
;;								## 55
	c0    cmplt $b0.0 = $r0.9, $r0.12   ## bblock 31, line 334-5,  t362(I1),  t312,  t129
	c0    add $r0.9 = $r0.9, 6   ## [spec] bblock 28, line 0,  t312,  t312,  6(I32)
;;								## 56
	c0    brf $b0.0, L99?3   ## bblock 31, line 334-5,  t362(I1)
;;								## 57
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 28, line 335-5, 0(I32), t126
;;								## 58
	c0    stb 0[$r0.10] = $r0.11   ## bblock 28, line 335-5, t127, t128(SI8)
	c0    goto L93?3 ## goto
;;								## 59
.trace 24
L99?3:
	c0    ldw $r0.2 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## bblock 2, line 336, t91, 0(I32)
;;								## 0
	c0    ldw $r0.3 = ((bytes_out + 0) + 0)[$r0.0]   ## bblock 2, line 336, t90, 0(I32)
;;								## 1
	c0    add $r0.2 = $r0.2, 7   ## bblock 2, line 336,  t92,  t91,  7(SI32)
;;								## 2
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 2, line 336,  t337,  t92,  0(I32)
	c0    add $r0.4 = $r0.2, 7   ## bblock 2, line 336,  t338,  t92,  7(I32)
;;								## 3
	c0    slct $r0.4 = $b0.0, $r0.4, $r0.2   ## bblock 2, line 336,  t339,  t337,  t338,  t92
;;								## 4
	c0    shr $r0.5 = $r0.4, 3   ## bblock 2, line 336,  t93,  t339,  3(I32)
	c0    goto L92?3 ## goto
;;								## 5
.trace 23
L98?3:
	c0    ldw $r0.2 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## bblock 2, line 336, t91, 0(I32)
;;								## 0
	c0    ldw $r0.3 = ((bytes_out + 0) + 0)[$r0.0]   ## bblock 2, line 336, t90, 0(I32)
;;								## 1
	c0    add $r0.2 = $r0.2, 7   ## bblock 2, line 336,  t92,  t91,  7(SI32)
;;								## 2
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 2, line 336,  t337,  t92,  0(I32)
	c0    add $r0.4 = $r0.2, 7   ## bblock 2, line 336,  t338,  t92,  7(I32)
;;								## 3
	c0    slct $r0.4 = $b0.0, $r0.4, $r0.2   ## bblock 2, line 336,  t339,  t337,  t338,  t92
;;								## 4
	c0    shr $r0.5 = $r0.4, 3   ## bblock 2, line 336,  t93,  t339,  3(I32)
	c0    goto L92?3 ## goto
;;								## 5
.trace 22
L97?3:
	c0    ldw $r0.2 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## bblock 2, line 336, t91, 0(I32)
;;								## 0
	c0    ldw $r0.3 = ((bytes_out + 0) + 0)[$r0.0]   ## bblock 2, line 336, t90, 0(I32)
;;								## 1
	c0    add $r0.2 = $r0.2, 7   ## bblock 2, line 336,  t92,  t91,  7(SI32)
;;								## 2
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 2, line 336,  t337,  t92,  0(I32)
	c0    add $r0.4 = $r0.2, 7   ## bblock 2, line 336,  t338,  t92,  7(I32)
;;								## 3
	c0    slct $r0.4 = $b0.0, $r0.4, $r0.2   ## bblock 2, line 336,  t339,  t337,  t338,  t92
;;								## 4
	c0    shr $r0.5 = $r0.4, 3   ## bblock 2, line 336,  t93,  t339,  3(I32)
	c0    goto L92?3 ## goto
;;								## 5
.trace 21
L96?3:
	c0    ldw $r0.2 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## bblock 2, line 336, t91, 0(I32)
;;								## 0
	c0    ldw $r0.3 = ((bytes_out + 0) + 0)[$r0.0]   ## bblock 2, line 336, t90, 0(I32)
;;								## 1
	c0    add $r0.2 = $r0.2, 7   ## bblock 2, line 336,  t92,  t91,  7(SI32)
;;								## 2
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 2, line 336,  t337,  t92,  0(I32)
	c0    add $r0.4 = $r0.2, 7   ## bblock 2, line 336,  t338,  t92,  7(I32)
;;								## 3
	c0    slct $r0.4 = $b0.0, $r0.4, $r0.2   ## bblock 2, line 336,  t339,  t337,  t338,  t92
;;								## 4
	c0    shr $r0.5 = $r0.4, 3   ## bblock 2, line 336,  t93,  t339,  3(I32)
	c0    goto L92?3 ## goto
;;								## 5
.trace 20
L95?3:
	c0    ldw $r0.2 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## bblock 2, line 336, t91, 0(I32)
;;								## 0
	c0    ldw $r0.3 = ((bytes_out + 0) + 0)[$r0.0]   ## bblock 2, line 336, t90, 0(I32)
;;								## 1
	c0    add $r0.2 = $r0.2, 7   ## bblock 2, line 336,  t92,  t91,  7(SI32)
;;								## 2
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 2, line 336,  t337,  t92,  0(I32)
	c0    add $r0.4 = $r0.2, 7   ## bblock 2, line 336,  t338,  t92,  7(I32)
;;								## 3
	c0    slct $r0.4 = $b0.0, $r0.4, $r0.2   ## bblock 2, line 336,  t339,  t337,  t338,  t92
;;								## 4
	c0    shr $r0.5 = $r0.4, 3   ## bblock 2, line 336,  t93,  t339,  3(I32)
	c0    goto L92?3 ## goto
;;								## 5
.trace 19
L94?3:
	c0    ldw $r0.2 = ((compress_27933.offset + 0) + 0)[$r0.0]   ## bblock 2, line 336, t91, 0(I32)
;;								## 0
	c0    ldw $r0.3 = ((bytes_out + 0) + 0)[$r0.0]   ## bblock 2, line 336, t90, 0(I32)
;;								## 1
	c0    add $r0.2 = $r0.2, 7   ## bblock 2, line 336,  t92,  t91,  7(SI32)
;;								## 2
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 2, line 336,  t337,  t92,  0(I32)
	c0    add $r0.4 = $r0.2, 7   ## bblock 2, line 336,  t338,  t92,  7(I32)
;;								## 3
	c0    slct $r0.4 = $b0.0, $r0.4, $r0.2   ## bblock 2, line 336,  t339,  t337,  t338,  t92
;;								## 4
	c0    shr $r0.5 = $r0.4, 3   ## bblock 2, line 336,  t93,  t339,  3(I32)
	c0    goto L92?3 ## goto
;;								## 5
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.6?2auto_size, 0x0
 ## End output
.equ _?1TEMPLATEPACKET.7, 0x0
 ## Begin decompress
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg()
decompress::
.trace 30
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    mov $r0.9 = 250   ## bblock 0, line 0,  t271,  250(I32)
	c0    mov $r0.10 = 249   ## bblock 0, line 0,  t269,  249(I32)
	c0    mov $r0.11 = 248   ## bblock 0, line 0,  t267,  248(I32)
	c0    mov $r0.13 = 511   ## 511(SI32)
	c0    mov $r0.12 = 9   ## 9(SI32)
;;								## 0
	c0    mov $r0.2 = 255   ## bblock 0, line 346,  t2,  255(SI32)
	c0    mov $r0.4 = ((htab + 0) + 248)   ## bblock 0, line 0,  t266,  (addr(htab?1.0)(P32) + 0xf8(I32))(P32)
	c0    mov $r0.5 = 254   ## bblock 0, line 0,  t279,  254(I32)
	c0    mov $r0.6 = 253   ## bblock 0, line 0,  t277,  253(I32)
	c0    mov $r0.7 = 252   ## bblock 0, line 0,  t275,  252(I32)
	c0    mov $r0.8 = 251   ## bblock 0, line 0,  t273,  251(I32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t66
;;								## 1
	c0    stw ((n_bits + 0) + 0)[$r0.0] = $r0.12   ## bblock 0, line 345, 0(I32), 9(SI32)
	c0    mov $r0.3 = ((codetab + 0) + 496)   ## bblock 0, line 0,  t281,  (addr(codetab?1.0)(P32) + 0x1f0(I32))(P32)
;;								## 2
	c0    stw ((maxcode + 0) + 0)[$r0.0] = $r0.13   ## bblock 0, line 345, 0(I32), 511(SI32)
;;								## 3
.trace 7
L100?3:
	c0    cmpge $b0.0 = $r0.2, $r0.0   ## bblock 1, line 346,  t339(I1),  t2,  0(SI32)
;;								## 0
	c0    brf $b0.0, L101?3   ## bblock 1, line 346,  t339(I1)
;;								## 1
	c0    sth 14[$r0.3] = $r0.0   ## bblock 24, line 348, t281, 0(I32)
;;								## 2
	c0    stb 7[$r0.4] = $r0.2   ## bblock 24, line 349, t266, t2
	c0    add $r0.2 = $r0.2, -8   ## bblock 24, line 346-7,  t2,  t2,  -8(SI32)
;;								## 3
	c0    sth 12[$r0.3] = $r0.0   ## bblock 24, line 348-1, t281, 0(I32)
;;								## 4
	c0    stb 6[$r0.4] = $r0.5   ## bblock 24, line 349-1, t266, t279
	c0    add $r0.5 = $r0.5, (~0x7)   ## bblock 24, line 0,  t279,  t279,  (~0x7)(I32)
;;								## 5
	c0    sth 10[$r0.3] = $r0.0   ## bblock 24, line 348-2, t281, 0(I32)
;;								## 6
	c0    stb 5[$r0.4] = $r0.6   ## bblock 24, line 349-2, t266, t277
	c0    add $r0.6 = $r0.6, (~0x7)   ## bblock 24, line 0,  t277,  t277,  (~0x7)(I32)
;;								## 7
	c0    sth 8[$r0.3] = $r0.0   ## bblock 24, line 348-3, t281, 0(I32)
;;								## 8
	c0    stb 4[$r0.4] = $r0.7   ## bblock 24, line 349-3, t266, t275
	c0    add $r0.7 = $r0.7, (~0x7)   ## bblock 24, line 0,  t275,  t275,  (~0x7)(I32)
;;								## 9
	c0    sth 6[$r0.3] = $r0.0   ## bblock 24, line 348-4, t281, 0(I32)
;;								## 10
	c0    stb 3[$r0.4] = $r0.8   ## bblock 24, line 349-4, t266, t273
	c0    add $r0.8 = $r0.8, (~0x7)   ## bblock 24, line 0,  t273,  t273,  (~0x7)(I32)
;;								## 11
	c0    sth 4[$r0.3] = $r0.0   ## bblock 24, line 348-5, t281, 0(I32)
;;								## 12
	c0    stb 2[$r0.4] = $r0.9   ## bblock 24, line 349-5, t266, t271
	c0    add $r0.9 = $r0.9, (~0x7)   ## bblock 24, line 0,  t271,  t271,  (~0x7)(I32)
;;								## 13
	c0    sth 2[$r0.3] = $r0.0   ## bblock 24, line 348-6, t281, 0(I32)
;;								## 14
	c0    stb 1[$r0.4] = $r0.10   ## bblock 24, line 349-6, t266, t269
	c0    add $r0.10 = $r0.10, (~0x7)   ## bblock 24, line 0,  t269,  t269,  (~0x7)(I32)
;;								## 15
	c0    sth 0[$r0.3] = $r0.0   ## bblock 24, line 348-7, t281, 0(I32)
	c0    add $r0.3 = $r0.3, (~0xf)   ## bblock 24, line 0,  t281,  t281,  (~0xf)(I32)
;;								## 16
	c0    stb 0[$r0.4] = $r0.11   ## bblock 24, line 349-7, t266, t267
	c0    add $r0.11 = $r0.11, (~0x7)   ## bblock 24, line 0,  t267,  t267,  (~0x7)(I32)
	c0    add $r0.4 = $r0.4, (~0x7)   ## bblock 24, line 0,  t266,  t266,  (~0x7)(I32)
	c0    goto L100?3 ## goto
;;								## 17
.trace 29
L101?3:
	c0    ldw $r0.4 = ((block_compress + 0) + 0)[$r0.0]   ## bblock 2, line 351, t14, 0(I32)
	c0    mov $r0.5 = 257   ## 257(SI32)
;;								## 0
;;								## 1
	c0    cmpne $b0.0 = $r0.4, $r0.0   ## bblock 2, line 351,  t340(I1),  t14,  0(SI32)
;;								## 2
	c0    slct $r0.5 = $b0.0, $r0.5, 256   ## bblock 2, line 351,  t15,  t340(I1),  257(SI32),  256(SI32)
;;								## 3
.call compressgetcode, caller, arg(), ret($r0.3:s32)
	c0    stw ((free_ent + 0) + 0)[$r0.0] = $r0.5   ## bblock 2, line 351, 0(I32), t15
	c0    call $l0.0 = compressgetcode   ## bblock 2, line 352,  raddr(compressgetcode)(P32)
;;								## 4
	c0    mov $r0.4 = $r0.3   ## bblock 3, line 352,  t3,  t16
	c0    mov $r0.2 = $r0.3   ## bblock 3, line 352,  t1,  t16
	c0    cmpeq $b0.0 = $r0.3, -1   ## bblock 3, line 353,  t341(I1),  t16,  -1(SI32)
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t66
	c0    mov $r0.5 = $r0.3   ## t16
;;								## 5
	c0    brf $b0.0, L102?3   ## bblock 3, line 353,  t341(I1)
;;								## 6
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 23, line 355,  t67,  ?2.7?2auto_size(I32),  t66
;;								## 7
.trace 31
L102?3:
	c0    stw 0x14[$r0.1] = $r0.57  ## spill ## t70
;;								## 0
	c0    mov $r0.57 = ((htab + 0) + 4096)   ## bblock 4, line 358,  t0,  (addr(htab?1.0)(P32) + 0x1000(I32))(P32)
	c0    stw 0x18[$r0.1] = $r0.58  ## spill ## t71
;;								## 1
	c0    stw 0x1c[$r0.1] = $r0.59  ## spill ## t72
	c0    mov $r0.58 = $r0.2   ## t1
;;								## 2
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 4, line 357, t18, 0(I32)
	c0    mov $r0.59 = $r0.4   ## t3
;;								## 3
;;								## 4
	c0    add $r0.3 = $r0.2, 1   ## bblock 4, line 357,  t19,  t18,  1(SI32)
;;								## 5
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.3   ## bblock 4, line 357, 0(I32), t19
;;								## 6
	c0    stb 0[$r0.2] = $r0.5   ## bblock 4, line 357, t18, t16
;;								## 7
.trace 9
L103?3:
.call compressgetcode, caller, arg(), ret($r0.3:s32)
	c0    call $l0.0 = compressgetcode   ## bblock 5, line 359,  raddr(compressgetcode)(P32)
;;								## 0
	c0    mov $r0.4 = $r0.3   ## bblock 6, line 359,  t78,  t23
	c0    cmpgt $b0.0 = $r0.3, -1   ## bblock 6, line 359,  t342(I1),  t23,  -1(SI32)
	c0    cmpeq $r0.3 = $r0.3, 256   ## [spec] bblock 8, line 361,  t24,  t23,  256(SI32)
	c0    ldw.d $r0.6 = ((block_compress + 0) + 0)[$r0.0]   ## [spec] bblock 8, line 361, t25, 0(I32)
	c0    mov $r0.2 = 255   ## [spec] bblock 18, line 363,  t79,  255(SI32)
;;								## 1
	c0    brf $b0.0, L104?3   ## bblock 6, line 359,  t342(I1)
;;								## 2
	c0    andl $b0.0 = $r0.3, $r0.6   ## bblock 8, line 361,  t343(I1),  t24,  t25
	c0    mov $r0.3 = ((codetab + 0) + 496)   ## [spec] bblock 18, line 0,  t239,  (addr(codetab?1.0)(P32) + 0x1f0(I32))(P32)
;;								## 3
	c0    brf $b0.0, L105?3   ## bblock 8, line 361,  t343(I1)
;;								## 4
.trace 5
L106?3:
	c0    cmpge $b0.0 = $r0.2, $r0.0   ## bblock 19, line 363,  t351(I1),  t79,  0(SI32)
	c0    add $r0.2 = $r0.2, -8   ## [spec] bblock 22, line 363-7,  t79,  t79,  -8(SI32)
;;								## 0
	c0    brf $b0.0, L107?3   ## bblock 19, line 363,  t351(I1)
;;								## 1
	c0    sth 14[$r0.3] = $r0.0   ## bblock 22, line 364, t239, 0(I32)
;;								## 2
	c0    sth 12[$r0.3] = $r0.0   ## bblock 22, line 364-1, t239, 0(I32)
;;								## 3
	c0    sth 10[$r0.3] = $r0.0   ## bblock 22, line 364-2, t239, 0(I32)
;;								## 4
	c0    sth 8[$r0.3] = $r0.0   ## bblock 22, line 364-3, t239, 0(I32)
;;								## 5
	c0    sth 6[$r0.3] = $r0.0   ## bblock 22, line 364-4, t239, 0(I32)
;;								## 6
	c0    sth 4[$r0.3] = $r0.0   ## bblock 22, line 364-5, t239, 0(I32)
;;								## 7
	c0    sth 2[$r0.3] = $r0.0   ## bblock 22, line 364-6, t239, 0(I32)
;;								## 8
	c0    sth 0[$r0.3] = $r0.0   ## bblock 22, line 364-7, t239, 0(I32)
	c0    add $r0.3 = $r0.3, (~0xf)   ## bblock 22, line 0,  t239,  t239,  (~0xf)(I32)
	c0    goto L106?3 ## goto
;;								## 9
.trace 13
L107?3:
	c0    mov $r0.3 = 256   ## 256(SI32)
	c0    mov $r0.2 = 1   ## 1(SI32)
;;								## 0
	c0    stw ((clear_flg + 0) + 0)[$r0.0] = $r0.2   ## bblock 20, line 365, 0(I32), 1(SI32)
;;								## 1
.call compressgetcode, caller, arg(), ret($r0.3:s32)
	c0    stw ((free_ent + 0) + 0)[$r0.0] = $r0.3   ## bblock 20, line 366, 0(I32), 256(SI32)
	c0    call $l0.0 = compressgetcode   ## bblock 20, line 367,  raddr(compressgetcode)(P32)
;;								## 2
	c0    mov $r0.4 = $r0.3   ## bblock 21, line 367,  t78,  t29
	c0    cmpeq $b0.0 = $r0.3, -1   ## bblock 21, line 367,  t352(I1),  t29,  -1(SI32)
;;								## 3
	c0    br $b0.0, L104?3   ## bblock 21, line 367,  t352(I1)
;;								## 4
.trace 10
L105?3:
	c0    ldw $r0.3 = ((free_ent + 0) + 0)[$r0.0]   ## bblock 9, line 371, t30, 0(I32)
	c0    mov $r0.8 = $r0.4   ## bblock 9, line 370,  t4,  t78
	c0    mov $r0.2 = $r0.4   ## t78
;;								## 0
;;								## 1
	c0    cmpge $b0.0 = $r0.4, $r0.3   ## bblock 9, line 371,  t344(I1),  t78,  t30
;;								## 2
	c0    mov $r0.4 = 256   ## 256(SI32)
	c0    mov $r0.5 = $r0.57   ## t0
	c0    br $b0.0, L108?3   ## bblock 9, line 371,  t344(I1)
;;								## 3
.trace 1
L109?3:
	c0    cmpge $b0.0 = $r0.2, $r0.4   ## bblock 10, line 376,  t345(I1),  t78,  256(SI32)
	c0    ldbu.d $r0.3 = (htab + 0)[$r0.2]   ## [spec] bblock 16, line 378, t37(I8), t78
	c0    sh1add $r0.6 = $r0.2, (codetab + 0)   ## [spec] bblock 16, line 379,  t349,  t78,  addr(codetab?1.0)(P32)
;;								## 0
	c0    brf $b0.0, L110?3   ## bblock 10, line 376,  t345(I1)
;;								## 1
	c0    stb 0[$r0.5] = $r0.3   ## bblock 16, line 378, t0, t37(I8)
;;								## 2
	c0    ldhu $r0.6 = 0[$r0.6]   ## bblock 16, line 379, t90, t349
;;								## 3
;;								## 4
	c0    cmpge $b0.0 = $r0.6, $r0.4   ## bblock 16, line 376-1,  t350(I1),  t90,  256(SI32)
	c0    ldbu.d $r0.3 = (htab + 0)[$r0.6]   ## [spec] bblock 91, line 378-1, t138(I8), t90
	c0    sh1add $r0.7 = $r0.6, (codetab + 0)   ## [spec] bblock 91, line 379-1,  t364,  t90,  addr(codetab?1.0)(P32)
;;								## 5
	c0    brf $b0.0, L111?3   ## bblock 16, line 376-1,  t350(I1)
;;								## 6
	c0    stb 1[$r0.5] = $r0.3   ## bblock 91, line 378-1, t0, t138(I8)
;;								## 7
	c0    ldhu $r0.7 = 0[$r0.7]   ## bblock 91, line 379-1, t139, t364
;;								## 8
;;								## 9
	c0    cmpge $b0.0 = $r0.7, $r0.4   ## bblock 91, line 376-2,  t365(I1),  t139,  256(SI32)
	c0    ldbu.d $r0.3 = (htab + 0)[$r0.7]   ## [spec] bblock 88, line 378-2, t134(I8), t139
	c0    sh1add $r0.6 = $r0.7, (codetab + 0)   ## [spec] bblock 88, line 379-2,  t362,  t139,  addr(codetab?1.0)(P32)
;;								## 10
	c0    brf $b0.0, L112?3   ## bblock 91, line 376-2,  t365(I1)
;;								## 11
	c0    stb 2[$r0.5] = $r0.3   ## bblock 88, line 378-2, t0, t134(I8)
;;								## 12
	c0    ldhu $r0.6 = 0[$r0.6]   ## bblock 88, line 379-2, t135, t362
;;								## 13
;;								## 14
	c0    cmpge $b0.0 = $r0.6, $r0.4   ## bblock 88, line 376-3,  t363(I1),  t135,  256(SI32)
	c0    ldbu.d $r0.3 = (htab + 0)[$r0.6]   ## [spec] bblock 85, line 378-3, t130(I8), t135
	c0    sh1add $r0.7 = $r0.6, (codetab + 0)   ## [spec] bblock 85, line 379-3,  t360,  t135,  addr(codetab?1.0)(P32)
;;								## 15
	c0    brf $b0.0, L113?3   ## bblock 88, line 376-3,  t363(I1)
;;								## 16
	c0    stb 3[$r0.5] = $r0.3   ## bblock 85, line 378-3, t0, t130(I8)
;;								## 17
	c0    ldhu $r0.7 = 0[$r0.7]   ## bblock 85, line 379-3, t131, t360
;;								## 18
;;								## 19
	c0    cmpge $b0.0 = $r0.7, $r0.4   ## bblock 85, line 376-4,  t361(I1),  t131,  256(SI32)
	c0    ldbu.d $r0.3 = (htab + 0)[$r0.7]   ## [spec] bblock 82, line 378-4, t126(I8), t131
	c0    sh1add $r0.6 = $r0.7, (codetab + 0)   ## [spec] bblock 82, line 379-4,  t358,  t131,  addr(codetab?1.0)(P32)
;;								## 20
	c0    brf $b0.0, L114?3   ## bblock 85, line 376-4,  t361(I1)
;;								## 21
	c0    stb 4[$r0.5] = $r0.3   ## bblock 82, line 378-4, t0, t126(I8)
;;								## 22
	c0    ldhu $r0.6 = 0[$r0.6]   ## bblock 82, line 379-4, t127, t358
;;								## 23
;;								## 24
	c0    cmpge $b0.0 = $r0.6, $r0.4   ## bblock 82, line 376-5,  t359(I1),  t127,  256(SI32)
	c0    ldbu.d $r0.3 = (htab + 0)[$r0.6]   ## [spec] bblock 79, line 378-5, t122(I8), t127
	c0    sh1add $r0.7 = $r0.6, (codetab + 0)   ## [spec] bblock 79, line 379-5,  t356,  t127,  addr(codetab?1.0)(P32)
;;								## 25
	c0    brf $b0.0, L115?3   ## bblock 82, line 376-5,  t359(I1)
;;								## 26
	c0    stb 5[$r0.5] = $r0.3   ## bblock 79, line 378-5, t0, t122(I8)
;;								## 27
	c0    ldhu $r0.7 = 0[$r0.7]   ## bblock 79, line 379-5, t123, t356
;;								## 28
;;								## 29
	c0    cmpge $b0.0 = $r0.7, $r0.4   ## bblock 79, line 376-6,  t357(I1),  t123,  256(SI32)
	c0    ldbu.d $r0.3 = (htab + 0)[$r0.7]   ## [spec] bblock 76, line 378-6, t118(I8), t123
	c0    sh1add $r0.6 = $r0.7, (codetab + 0)   ## [spec] bblock 76, line 379-6,  t354,  t123,  addr(codetab?1.0)(P32)
;;								## 30
	c0    brf $b0.0, L116?3   ## bblock 79, line 376-6,  t357(I1)
;;								## 31
	c0    stb 6[$r0.5] = $r0.3   ## bblock 76, line 378-6, t0, t118(I8)
;;								## 32
	c0    ldhu $r0.6 = 0[$r0.6]   ## bblock 76, line 379-6, t119, t354
;;								## 33
;;								## 34
	c0    cmpge $b0.0 = $r0.6, $r0.4   ## bblock 76, line 376-7,  t355(I1),  t119,  256(SI32)
	c0    ldbu.d $r0.3 = (htab + 0)[$r0.6]   ## [spec] bblock 73, line 378-7, t110(I8), t119
	c0    sh1add $r0.7 = $r0.6, (codetab + 0)   ## [spec] bblock 73, line 379-7,  t353,  t119,  addr(codetab?1.0)(P32)
;;								## 35
	c0    brf $b0.0, L117?3   ## bblock 76, line 376-7,  t355(I1)
;;								## 36
	c0    stb 7[$r0.5] = $r0.3   ## bblock 73, line 378-7, t0, t110(I8)
	c0    add $r0.5 = $r0.5, 8   ## bblock 73, line 378-7,  t0,  t0,  8(SI32)
;;								## 37
	c0    ldhu $r0.2 = 0[$r0.7]   ## bblock 73, line 379-7, t78, t353
;;								## 38
	c0    goto L109?3 ## goto
;;								## 39
.trace 28
L117?3:
	c0    add $r0.5 = $r0.5, 7   ## bblock 74, line 0,  t115,  t0,  7(I32)
	c0    mov $r0.2 = $r0.6   ## bblock 74, line 0,  t116,  t119
	c0    mov $r0.15 = $r0.8   ## t4
	c0    goto L118?3 ## goto
;;								## 0
.trace 2
L119?3:
	c0    mov $r0.4 = $r0.3   ## bblock 12, line 0,  t94,  t182
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 12, line 385, t52, 0(I32)
	c0    cmpleu $b0.0 = $r0.3, ((htab + 0) + 4096)   ## bblock 12, line 387,  t346(I1),  t182,  (addr(htab?1.0)(P32) + 0x1000(I32))(P32)
	c0    cmpleu $b0.1 = $r0.5, ((htab + 0) + 4096)   ## [spec] bblock 104, line 387-1,  t371(I1),  t176,  (addr(htab?1.0)(P32) + 0x1000(I32))(P32)
	c0    mov $r0.12 = $r0.10   ## [spec] bblock 94, line 0,  t338,  t181
;;								## 0
	c0    ldbu $r0.13 = 0[$r0.3]   ## bblock 12, line 385, t50(I8), t182
	c0    cmpleu $b0.2 = $r0.6, ((htab + 0) + 4096)   ## [spec] bblock 102, line 387-2,  t370(I1),  t177,  (addr(htab?1.0)(P32) + 0x1000(I32))(P32)
	c0    cmpleu $b0.3 = $r0.7, ((htab + 0) + 4096)   ## [spec] bblock 100, line 387-3,  t369(I1),  t178,  (addr(htab?1.0)(P32) + 0x1000(I32))(P32)
	c0    cmpleu $b0.4 = $r0.8, ((htab + 0) + 4096)   ## [spec] bblock 98, line 387-4,  t368(I1),  t179,  (addr(htab?1.0)(P32) + 0x1000(I32))(P32)
	c0    add $r0.3 = $r0.3, (~0x6)   ## [spec] bblock 94, line 0,  t182,  t182,  (~0x6)(I32)
;;								## 1
	c0    add $r0.14 = $r0.2, 1   ## bblock 12, line 385,  t53,  t52,  1(SI32)
	c0    cmpleu $b0.5 = $r0.9, ((htab + 0) + 4096)   ## [spec] bblock 96, line 387-5,  t367(I1),  t180,  (addr(htab?1.0)(P32) + 0x1000(I32))(P32)
	c0    cmpleu $b0.6 = $r0.12, ((htab + 0) + 4096)   ## [spec] bblock 94, line 387-6,  t366(I1),  t338,  (addr(htab?1.0)(P32) + 0x1000(I32))(P32)
;;								## 2
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.14   ## bblock 12, line 385, 0(I32), t53
;;								## 3
	c0    stb 0[$r0.2] = $r0.13   ## bblock 12, line 385, t52, t50(I8)
	c0    br $b0.0, L120?3   ## bblock 12, line 387,  t346(I1)
;;								## 4
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 104, line 385-1, t173, 0(I32)
;;								## 5
	c0    ldbu $r0.12 = 0[$r0.5]   ## bblock 104, line 385-1, t171(I8), t176
	c0    add $r0.5 = $r0.5, (~0x6)   ## [spec] bblock 94, line 0,  t176,  t176,  (~0x6)(I32)
;;								## 6
	c0    add $r0.13 = $r0.2, 1   ## bblock 104, line 385-1,  t174,  t173,  1(SI32)
;;								## 7
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 104, line 385-1, 0(I32), t174
;;								## 8
	c0    stb 0[$r0.2] = $r0.12   ## bblock 104, line 385-1, t173, t171(I8)
	c0    br $b0.1, L121?3   ## bblock 104, line 387-1,  t371(I1)
;;								## 9
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 102, line 385-2, t167, 0(I32)
;;								## 10
	c0    ldbu $r0.12 = 0[$r0.6]   ## bblock 102, line 385-2, t165(I8), t177
	c0    add $r0.6 = $r0.6, (~0x6)   ## [spec] bblock 94, line 0,  t177,  t177,  (~0x6)(I32)
;;								## 11
	c0    add $r0.13 = $r0.2, 1   ## bblock 102, line 385-2,  t168,  t167,  1(SI32)
;;								## 12
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 102, line 385-2, 0(I32), t168
;;								## 13
	c0    stb 0[$r0.2] = $r0.12   ## bblock 102, line 385-2, t167, t165(I8)
	c0    br $b0.2, L122?3   ## bblock 102, line 387-2,  t370(I1)
;;								## 14
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 100, line 385-3, t161, 0(I32)
;;								## 15
	c0    ldbu $r0.12 = 0[$r0.7]   ## bblock 100, line 385-3, t159(I8), t178
	c0    add $r0.7 = $r0.7, (~0x6)   ## [spec] bblock 94, line 0,  t178,  t178,  (~0x6)(I32)
;;								## 16
	c0    add $r0.13 = $r0.2, 1   ## bblock 100, line 385-3,  t162,  t161,  1(SI32)
;;								## 17
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 100, line 385-3, 0(I32), t162
;;								## 18
	c0    stb 0[$r0.2] = $r0.12   ## bblock 100, line 385-3, t161, t159(I8)
	c0    br $b0.3, L123?3   ## bblock 100, line 387-3,  t369(I1)
;;								## 19
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 98, line 385-4, t155, 0(I32)
;;								## 20
	c0    ldbu $r0.12 = 0[$r0.8]   ## bblock 98, line 385-4, t153(I8), t179
	c0    add $r0.8 = $r0.8, (~0x6)   ## [spec] bblock 94, line 0,  t179,  t179,  (~0x6)(I32)
;;								## 21
	c0    add $r0.13 = $r0.2, 1   ## bblock 98, line 385-4,  t156,  t155,  1(SI32)
;;								## 22
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 98, line 385-4, 0(I32), t156
;;								## 23
	c0    stb 0[$r0.2] = $r0.12   ## bblock 98, line 385-4, t155, t153(I8)
	c0    br $b0.4, L124?3   ## bblock 98, line 387-4,  t368(I1)
;;								## 24
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 96, line 385-5, t149, 0(I32)
;;								## 25
	c0    ldbu $r0.12 = 0[$r0.9]   ## bblock 96, line 385-5, t147(I8), t180
	c0    add $r0.9 = $r0.9, (~0x6)   ## [spec] bblock 94, line 0,  t180,  t180,  (~0x6)(I32)
;;								## 26
	c0    add $r0.13 = $r0.2, 1   ## bblock 96, line 385-5,  t150,  t149,  1(SI32)
;;								## 27
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 96, line 385-5, 0(I32), t150
;;								## 28
	c0    stb 0[$r0.2] = $r0.12   ## bblock 96, line 385-5, t149, t147(I8)
	c0    br $b0.5, L125?3   ## bblock 96, line 387-5,  t367(I1)
;;								## 29
	c0    ldw $r0.2 = ((outbuf + 0) + 0)[$r0.0]   ## bblock 94, line 385-6, t144, 0(I32)
	c0    add $r0.11 = $r0.11, -7   ## bblock 94, line 384-6,  t93,  t93,  -7(SI32)
;;								## 30
	c0    ldbu $r0.12 = 0[$r0.10]   ## bblock 94, line 385-6, t142(I8), t181
	c0    add $r0.10 = $r0.10, (~0x6)   ## bblock 94, line 0,  t181,  t181,  (~0x6)(I32)
;;								## 31
	c0    add $r0.13 = $r0.2, 1   ## bblock 94, line 385-6,  t145,  t144,  1(SI32)
;;								## 32
	c0    stw ((outbuf + 0) + 0)[$r0.0] = $r0.13   ## bblock 94, line 385-6, 0(I32), t145
;;								## 33
	c0    stb 0[$r0.2] = $r0.12   ## bblock 94, line 385-6, t144, t142(I8)
	c0    br $b0.6, L126?3   ## bblock 94, line 387-6,  t366(I1)
	      ## goto
;;
	c0    goto L119?3 ## goto
;;								## 34
.trace 21
L126?3:
	c0    add $r0.57 = $r0.4, (~0x5)   ## bblock 95, line 0,  t0,  t94,  (~0x5)(I32)
	c0    mov $r0.58 = $r0.16   ## t1
	c0    ldw $r0.3 = ((free_ent + 0) + 0)[$r0.0]   ## bblock 13, line 388, t80, 0(I32)
	c0    goto L127?3 ## goto
;;								## 0
.trace 15
L129?3:
	c0    add $r0.4 = $r0.3, 1   ## bblock 15, line 392,  t65,  t80,  1(SI32)
	c0    sh1add $r0.2 = $r0.3, (codetab + 0)   ## bblock 15, line 390,  t348,  t80,  addr(codetab?1.0)(P32)
	c0    stb (htab + 0)[$r0.3] = $r0.58   ## bblock 15, line 391, t80, t1
;;								## 0
	c0    sth 0[$r0.2] = $r0.59   ## bblock 15, line 390, t348, t3
;;								## 1
	c0    stw ((free_ent + 0) + 0)[$r0.0] = $r0.4   ## bblock 15, line 392, 0(I32), t65
	c0    goto L128?3 ## goto
;;								## 2
.trace 20
L125?3:
	c0    add $r0.57 = $r0.11, (~0x5)   ## bblock 97, line 0,  t0,  t93,  (~0x5)(I32)
	c0    mov $r0.58 = $r0.16   ## t1
	c0    ldw $r0.3 = ((free_ent + 0) + 0)[$r0.0]   ## bblock 13, line 388, t80, 0(I32)
	c0    goto L127?3 ## goto
;;								## 0
.trace 19
L124?3:
	c0    add $r0.57 = $r0.11, (~0x4)   ## bblock 99, line 0,  t0,  t93,  (~0x4)(I32)
	c0    mov $r0.58 = $r0.16   ## t1
	c0    ldw $r0.3 = ((free_ent + 0) + 0)[$r0.0]   ## bblock 13, line 388, t80, 0(I32)
	c0    goto L127?3 ## goto
;;								## 0
.trace 18
L123?3:
	c0    add $r0.57 = $r0.11, (~0x3)   ## bblock 101, line 0,  t0,  t93,  (~0x3)(I32)
	c0    mov $r0.58 = $r0.16   ## t1
	c0    ldw $r0.3 = ((free_ent + 0) + 0)[$r0.0]   ## bblock 13, line 388, t80, 0(I32)
	c0    goto L127?3 ## goto
;;								## 0
.trace 17
L122?3:
	c0    add $r0.57 = $r0.11, (~0x2)   ## bblock 103, line 0,  t0,  t93,  (~0x2)(I32)
	c0    mov $r0.58 = $r0.16   ## t1
	c0    ldw $r0.3 = ((free_ent + 0) + 0)[$r0.0]   ## bblock 13, line 388, t80, 0(I32)
	c0    goto L127?3 ## goto
;;								## 0
.trace 16
L121?3:
	c0    add $r0.57 = $r0.11, (~0x1)   ## bblock 105, line 0,  t0,  t93,  (~0x1)(I32)
	c0    mov $r0.58 = $r0.16   ## t1
	c0    ldw $r0.3 = ((free_ent + 0) + 0)[$r0.0]   ## bblock 13, line 388, t80, 0(I32)
	c0    goto L127?3 ## goto
;;								## 0
.trace 12
L120?3:
	c0    add $r0.57 = $r0.11, (~0x0)   ## bblock 106, line 0,  t0,  t93,  (~0x0)(I32)
	c0    ldw $r0.3 = ((free_ent + 0) + 0)[$r0.0]   ## bblock 13, line 388, t80, 0(I32)
	c0    mov $r0.58 = $r0.16   ## t1
;;								## 0
L127?3:
	c0    ldw $r0.4 = ((maxmaxcode + 0) + 0)[$r0.0]   ## bblock 13, line 388, t58, 0(I32)
;;								## 1
;;								## 2
	c0    cmplt $b0.0 = $r0.3, $r0.4   ## bblock 13, line 388,  t347(I1),  t80,  t58
;;								## 3
	c0    br $b0.0, L129?3   ## bblock 13, line 388,  t347(I1)
;;								## 4
L128?3:
	c0    mov $r0.59 = $r0.15   ## bblock 14, line 394,  t3,  t4
	c0    goto L103?3 ## goto
;;								## 5
.trace 27
L116?3:
	c0    add $r0.5 = $r0.5, 6   ## bblock 77, line 0,  t115,  t0,  6(I32)
	c0    mov $r0.2 = $r0.7   ## bblock 77, line 0,  t116,  t123
	c0    mov $r0.15 = $r0.8   ## t4
	c0    goto L118?3 ## goto
;;								## 0
.trace 26
L115?3:
	c0    add $r0.5 = $r0.5, 5   ## bblock 80, line 0,  t115,  t0,  5(I32)
	c0    mov $r0.2 = $r0.6   ## bblock 80, line 0,  t116,  t127
	c0    mov $r0.15 = $r0.8   ## t4
	c0    goto L118?3 ## goto
;;								## 0
.trace 25
L114?3:
	c0    add $r0.5 = $r0.5, 4   ## bblock 83, line 0,  t115,  t0,  4(I32)
	c0    mov $r0.2 = $r0.7   ## bblock 83, line 0,  t116,  t131
	c0    mov $r0.15 = $r0.8   ## t4
	c0    goto L118?3 ## goto
;;								## 0
.trace 24
L113?3:
	c0    add $r0.5 = $r0.5, 3   ## bblock 86, line 0,  t115,  t0,  3(I32)
	c0    mov $r0.2 = $r0.6   ## bblock 86, line 0,  t116,  t135
	c0    mov $r0.15 = $r0.8   ## t4
	c0    goto L118?3 ## goto
;;								## 0
.trace 23
L112?3:
	c0    add $r0.5 = $r0.5, 2   ## bblock 89, line 0,  t115,  t0,  2(I32)
	c0    mov $r0.2 = $r0.7   ## bblock 89, line 0,  t116,  t139
	c0    mov $r0.15 = $r0.8   ## t4
	c0    goto L118?3 ## goto
;;								## 0
.trace 22
L111?3:
	c0    add $r0.5 = $r0.5, 1   ## bblock 92, line 0,  t115,  t0,  1(I32)
	c0    mov $r0.2 = $r0.6   ## bblock 92, line 0,  t116,  t90
	c0    mov $r0.15 = $r0.8   ## t4
	c0    goto L118?3 ## goto
;;								## 0
.trace 11
L110?3:
	   ## bblock 93, line 0,  t116,  t78## $r0.2(skipped)
	   ## bblock 93, line 0,  t115,  t0## $r0.5(skipped)
	c0    mov $r0.15 = $r0.8   ## t4
;;								## 0
L118?3:
	c0    ldbu $r0.2 = (htab + 0)[$r0.2]   ## bblock 11, line 381, t1, t116
	c0    add $r0.7 = $r0.5, (~0x2)   ## bblock 11, line 0,  t178,  t115,  (~0x2)(I32)
	c0    add $r0.10 = $r0.5, (~0x5)   ## bblock 11, line 0,  t181,  t115,  (~0x5)(I32)
	c0    add $r0.9 = $r0.5, (~0x4)   ## bblock 11, line 0,  t180,  t115,  (~0x4)(I32)
	c0    add $r0.8 = $r0.5, (~0x3)   ## bblock 11, line 0,  t179,  t115,  (~0x3)(I32)
	c0    add $r0.6 = $r0.5, (~0x1)   ## bblock 11, line 0,  t177,  t115,  (~0x1)(I32)
	c0    add $r0.4 = $r0.5, (~0x0)   ## bblock 11, line 0,  t176,  t115,  (~0x0)(I32)
;;								## 1
	c0    mov $r0.3 = $r0.5   ## bblock 11, line 0,  t182,  t115
	c0    add $r0.11 = $r0.5, 1   ## bblock 11, line 381,  t93,  t115,  1(SI32)
;;								## 2
	c0    stb 0[$r0.5] = $r0.2   ## bblock 11, line 381, t115, t1
	c0    mov $r0.16 = $r0.2   ## t1
;;								## 3
	c0    mov $r0.5 = $r0.4   ## t176
	c0    goto L119?3 ## goto
;;								## 4
.trace 14
L108?3:
	c0    stb 0[$r0.5] = $r0.58   ## bblock 17, line 373, t0, t1
	c0    mov $r0.2 = $r0.59   ## bblock 17, line 374,  t78,  t3
	c0    add $r0.5 = $r0.5, 1   ## bblock 17, line 373,  t0,  t0,  1(SI32)
	c0    goto L109?3 ## goto
;;								## 0
.trace 32
L104?3:
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t66
;;								## 0
	c0    ldw $r0.59 = 0x1c[$r0.1]  ## restore ## t72
;;								## 1
	c0    ldw $r0.58 = 0x18[$r0.1]  ## restore ## t71
;;								## 2
	c0    ldw $r0.57 = 0x14[$r0.1]  ## restore ## t70
;;								## 3
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 7, line 396,  t67,  ?2.7?2auto_size(I32),  t66
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.7?2scratch.0, 0x0
.equ ?2.7?2ras_p, 0x10
.equ ?2.7?2spill_p, 0x14
.section .data
.section .text
.equ ?2.7?2auto_size, 0x20
 ## End decompress
 ## Begin compressgetcode
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg()
compressgetcode::
.trace 7
	      ## auto_size == 0
	c0    ldw $r0.2 = ((maxbits + 0) + 0)[$r0.0]   ## bblock 0, line 399, t87, 0(I32)
;;								## 0
	c0    ldw $r0.3 = ((maxmaxcode + 0) + 0)[$r0.0]   ## bblock 0, line 399, t86, 0(I32)
;;								## 1
	c0    ldw $r0.4 = ((clear_flg + 0) + 0)[$r0.0]   ## bblock 0, line 406, t6, 0(I32)
;;								## 2
	c0    ldw $r0.5 = ((free_ent + 0) + 0)[$r0.0]   ## bblock 0, line 399, t85, 0(I32)
;;								## 3
	c0    cmpgt $r0.4 = $r0.4, $r0.0   ## bblock 0, line 406,  t7,  t6,  0(SI32)
	c0    ldw $r0.6 = ((maxcode + 0) + 0)[$r0.0]   ## bblock 0, line 406, t12, 0(I32)
;;								## 4
	c0    ldw $r0.7 = ((_?1PACKET.13 + 0) + 0)[$r0.0]   ## bblock 0, line 399, t89, 0(I32)
;;								## 5
	c0    ldw $r0.9 = ((_?1PACKET.14 + 0) + 0)[$r0.0]   ## bblock 0, line 399, t88, 0(I32)
	c0    cmpgt $r0.8 = $r0.5, $r0.6   ## bblock 0, line 406,  t13,  t85,  t12
	c0    cmpgt $b0.0 = $r0.5, $r0.6   ## [spec] bblock 4, line 408,  t163(I1),  t85,  t12
;;								## 6
	c0    orl $r0.4 = $r0.4, $r0.8   ## bblock 0, line 406,  t161,  t7,  t13
	c0    ldw.d $r0.5 = ((n_bits + 0) + 0)[$r0.0]   ## [spec] bblock 17, line 410, t16, 0(I32)
;;								## 7
	c0    cmpge $r0.6 = $r0.7, $r0.9   ## bblock 0, line 406,  t10,  t89,  t88
;;								## 8
	c0    orl $b0.1 = $r0.4, $r0.6   ## bblock 0, line 406,  t162(I1),  t161,  t10
	c0    add $r0.5 = $r0.5, 1   ## [spec] bblock 17, line 410,  t18,  t16,  1(SI32)
;;								## 9
	c0    cmpeq $b0.1 = $r0.5, $r0.2   ## [spec] bblock 17, line 411,  t171(I1),  t18,  t87
	c0    brf $b0.1, L130?3   ## bblock 0, line 406,  t162(I1)
;;								## 10
	c0    brf $b0.0, L131?3   ## bblock 4, line 408,  t163(I1)
;;								## 11
	c0    stw ((n_bits + 0) + 0)[$r0.0] = $r0.5   ## bblock 17, line 410, 0(I32), t18
	c0    brf $b0.1, L132?3   ## bblock 17, line 411,  t171(I1)
;;								## 12
	c0    stw ((maxcode + 0) + 0)[$r0.0] = $r0.3   ## bblock 19, line 412, 0(I32), t86
;;								## 13
.trace 9
L131?3:
	c0    ldw $r0.2 = ((clear_flg + 0) + 0)[$r0.0]   ## bblock 5, line 416, t24, 0(I32)
	c0    mov $r0.5 = $r0.0   ## [spec] bblock 6, line 421,  t111,  0(SI32)
	c0    mov $r0.4 = (_?1PACKET.15 + 0)   ## [spec] bblock 6, line 0,  t138,  addr(buf?1.134)(P32)
	c0    mov $r0.10 = $r0.7   ## t89
;;								## 0
	c0    ldw.d $r0.6 = ((n_bits + 0) + 0)[$r0.0]   ## [spec] bblock 6, line 0, t90, 0(I32)
;;								## 1
	c0    cmpgt $b0.0 = $r0.2, $r0.0   ## bblock 5, line 416,  t164(I1),  t24,  0(SI32)
;;								## 2
	c0    sub $r0.2 = 3, $r0.6   ## [spec] bblock 6, line 0,  t140,  3(I32),  t90
	c0    mov $r0.11 = $r0.6   ## [spec] t90
	c0    br $b0.0, L133?3   ## bblock 5, line 416,  t164(I1)
;;								## 3
L134?3:
	c0    mov $r0.3 = $r0.2   ## bblock 6, line 0,  t139,  t140
;;								## 4
.trace 1
L135?3:
	c0    cmplt $b0.0 = $r0.3, 3   ## bblock 7, line 421,  t165(I1),  t139,  3(SI32)
	c0    ldw.d $r0.2 = ((buflen + 0) + 0)[$r0.0]   ## [spec] bblock 11, line 423, t32, 0(I32)
	c0    cmplt $b0.1 = $r0.3, 2   ## [spec] bblock 14, line 421-1,  t170(I1),  t139,  2(SI32)
	c0    cmplt $b0.2 = $r0.3, 1   ## [spec] bblock 40, line 421-2,  t179(I1),  t139,  1(SI32)
	c0    cmplt $b0.3 = $r0.3, $r0.0   ## [spec] bblock 32, line 421-3,  t176(I1),  t139,  0(SI32)
;;								## 0
	c0    ldw.d $r0.6 = ((bufp + 0) + 0)[$r0.0]   ## [spec] bblock 15, line 423, t113, 0(I32)
	c0    brf $b0.0, L136?3   ## bblock 7, line 421,  t165(I1)
;;								## 1
	c0    add $r0.2 = $r0.2, -1   ## bblock 11, line 423,  t33,  t32,  -1(SI32)
;;								## 2
	c0    stw ((buflen + 0) + 0)[$r0.0] = $r0.2   ## bblock 11, line 423, 0(I32), t33
	c0    cmpge $b0.0 = $r0.2, $r0.0   ## bblock 11, line 423,  t168(I1),  t33,  0(SI32)
	c0    add $r0.7 = $r0.6, 1   ## [spec] bblock 15, line 423,  t114,  t113,  1(SI32)
;;								## 3
	c0    ldw.d $r0.2 = ((buflen + 0) + 0)[$r0.0]   ## [spec] bblock 37, line 423-1, t127, 0(I32)
	c0    brf $b0.0, L137?3   ## bblock 11, line 423,  t168(I1)
;;								## 4
	c0    stw ((bufp + 0) + 0)[$r0.0] = $r0.7   ## bblock 15, line 423, 0(I32), t114
;;								## 5
	c0    ldb $r0.6 = 0[$r0.6]   ## bblock 15, line 423, t115(SI8), t113
	c0    add $r0.2 = $r0.2, -1   ## [spec] bblock 37, line 423-1,  t128,  t127,  -1(SI32)
;;								## 6
	c0    cmpge $b0.0 = $r0.2, $r0.0   ## [spec] bblock 37, line 423-1,  t177(I1),  t128,  0(SI32)
	c0    ldw.d $r0.7 = ((bufp + 0) + 0)[$r0.0]   ## [spec] bblock 41, line 423-1, t132, 0(I32)
;;								## 7
	c0    zxtb $r0.6 = $r0.6   ## bblock 15, line 423,  t116(I8),  t115(SI8)
;;								## 8
L138?3:
	c0    zxtb $r0.8 = $r0.6   ## bblock 13, line 423,  t118(I8),  t116(I8)
	c0    stb 0[$r0.4] = $r0.6   ## bblock 13, line 423, t138, t116(I8)
	c0    add $r0.9 = $r0.7, 1   ## [spec] bblock 41, line 423-1,  t133,  t132,  1(SI32)
;;								## 9
	c0    cmpeq $b0.4 = $r0.8, 255   ## bblock 13, line 424,  t169(I1),  t118(I8),  255(SI32)
;;								## 10
	c0    br $b0.4, L139?3   ## bblock 13, line 424,  t169(I1)
;;								## 11
	c0    brf $b0.1, L140?3   ## bblock 14, line 421-1,  t170(I1)
;;								## 12
	c0    stw ((buflen + 0) + 0)[$r0.0] = $r0.2   ## bblock 37, line 423-1, 0(I32), t128
	c0    brf $b0.0, L141?3   ## bblock 37, line 423-1,  t177(I1)
;;								## 13
	c0    ldw.d $r0.2 = ((buflen + 0) + 0)[$r0.0]   ## [spec] bblock 29, line 423-2, t117, 0(I32)
;;								## 14
	c0    stw ((bufp + 0) + 0)[$r0.0] = $r0.9   ## bblock 41, line 423-1, 0(I32), t133
;;								## 15
	c0    ldb $r0.7 = 0[$r0.7]   ## bblock 41, line 423-1, t134(SI8), t132
	c0    add $r0.2 = $r0.2, -1   ## [spec] bblock 29, line 423-2,  t112,  t117,  -1(SI32)
;;								## 16
	c0    cmpge $b0.0 = $r0.2, $r0.0   ## [spec] bblock 29, line 423-2,  t174(I1),  t112,  0(SI32)
	c0    ldw.d $r0.6 = ((bufp + 0) + 0)[$r0.0]   ## [spec] bblock 33, line 423-2, t34, 0(I32)
;;								## 17
	c0    zxtb $r0.7 = $r0.7   ## bblock 41, line 423-1,  t129(I8),  t134(SI8)
;;								## 18
L142?3:
	c0    zxtb $r0.8 = $r0.7   ## bblock 39, line 423-1,  t130(I8),  t129(I8)
	c0    stb 1[$r0.4] = $r0.7   ## bblock 39, line 423-1, t138, t129(I8)
	c0    add $r0.9 = $r0.6, 1   ## [spec] bblock 33, line 423-2,  t35,  t34,  1(SI32)
;;								## 19
	c0    cmpeq $b0.1 = $r0.8, 255   ## bblock 39, line 424-1,  t178(I1),  t130(I8),  255(SI32)
;;								## 20
	c0    br $b0.1, L143?3   ## bblock 39, line 424-1,  t178(I1)
;;								## 21
	c0    brf $b0.2, L144?3   ## bblock 40, line 421-2,  t179(I1)
;;								## 22
	c0    stw ((buflen + 0) + 0)[$r0.0] = $r0.2   ## bblock 29, line 423-2, 0(I32), t112
	c0    brf $b0.0, L145?3   ## bblock 29, line 423-2,  t174(I1)
;;								## 23
	c0    ldw.d $r0.2 = ((buflen + 0) + 0)[$r0.0]   ## [spec] bblock 20, line 423-3, t125, 0(I32)
;;								## 24
	c0    stw ((bufp + 0) + 0)[$r0.0] = $r0.9   ## bblock 33, line 423-2, 0(I32), t35
;;								## 25
	c0    ldb $r0.6 = 0[$r0.6]   ## bblock 33, line 423-2, t126(SI8), t34
	c0    add $r0.2 = $r0.2, -1   ## [spec] bblock 20, line 423-3,  t124,  t125,  -1(SI32)
;;								## 26
	c0    cmpge $b0.0 = $r0.2, $r0.0   ## [spec] bblock 20, line 423-3,  t172(I1),  t124,  0(SI32)
	c0    ldw.d $r0.7 = ((bufp + 0) + 0)[$r0.0]   ## [spec] bblock 25, line 423-3, t122, 0(I32)
;;								## 27
	c0    zxtb $r0.6 = $r0.6   ## bblock 33, line 423-2,  t31(I8),  t126(SI8)
;;								## 28
L146?3:
	c0    zxtb $r0.8 = $r0.6   ## bblock 31, line 423-2,  t41(I8),  t31(I8)
	c0    stb 2[$r0.4] = $r0.6   ## bblock 31, line 423-2, t138, t31(I8)
	c0    add $r0.9 = $r0.7, 1   ## [spec] bblock 25, line 423-3,  t121,  t122,  1(SI32)
;;								## 29
	c0    cmpeq $b0.1 = $r0.8, 255   ## bblock 31, line 424-2,  t175(I1),  t41(I8),  255(SI32)
;;								## 30
	c0    br $b0.1, L147?3   ## bblock 31, line 424-2,  t175(I1)
;;								## 31
	c0    brf $b0.3, L148?3   ## bblock 32, line 421-3,  t176(I1)
;;								## 32
	c0    stw ((buflen + 0) + 0)[$r0.0] = $r0.2   ## bblock 20, line 423-3, 0(I32), t124
	c0    brf $b0.0, L149?3   ## bblock 20, line 423-3,  t172(I1)
;;								## 33
	c0    stw ((bufp + 0) + 0)[$r0.0] = $r0.9   ## bblock 25, line 423-3, 0(I32), t121
	c0    add $r0.3 = $r0.3, 4   ## [spec] bblock 24, line 0,  t139,  t139,  4(I32)
;;								## 34
	c0    ldb $r0.7 = 0[$r0.7]   ## bblock 25, line 423-3, t36(SI8), t122
;;								## 35
;;								## 36
	c0    zxtb $r0.7 = $r0.7   ## bblock 25, line 423-3,  t119(I8),  t36(SI8)
;;								## 37
L150?3:
	c0    zxtb $r0.2 = $r0.7   ## bblock 23, line 423-3,  t123(I8),  t119(I8)
	c0    stb 3[$r0.4] = $r0.7   ## bblock 23, line 423-3, t138, t119(I8)
;;								## 38
	c0    cmpeq $b0.0 = $r0.2, 255   ## bblock 23, line 424-3,  t173(I1),  t123(I8),  255(SI32)
	c0    add $r0.4 = $r0.4, 4   ## [spec] bblock 24, line 0,  t138,  t138,  4(I32)
;;								## 39
	c0    br $b0.0, L151?3   ## bblock 23, line 424-3,  t173(I1)
;;								## 40
	c0    add $r0.5 = $r0.5, 4   ## bblock 24, line 421-3,  t111,  t111,  4(SI32)
	c0    goto L135?3 ## goto
;;								## 41
.trace 21
L151?3:
	c0    add $r0.11 = $r0.5, 3   ## bblock 27, line 0,  t110,  t111,  3(I32)
	c0    mov $r0.3 = -1   ## -1(SI32)
	c0    goto L152?3 ## goto
;;								## 0
.trace 12
L153?3:
	c0    ldw $r0.2 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 9, line 430, t43, 0(I32)
	c0    mov $r0.7 = $r0.0   ## bblock 9, line 429,  t89,  0(SI32)
	c0    shl $r0.11 = $r0.11, 3   ## bblock 9, line 430,  t45,  t110,  3(SI32)
;;								## 0
	c0    add $r0.11 = $r0.11, 1   ## bblock 9, line 430,  t167,  t45,  1(SI32)
;;								## 1
	c0    sub $r0.9 = $r0.11, $r0.2   ## bblock 9, line 430,  t88,  t167,  t43
;;								## 2
.trace 8
L130?3:
	c0    ldw $r0.2 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 1, line 433, t72, 0(I32)
	c0    shr $r0.5 = $r0.7, 3   ## bblock 1, line 434,  t49(SI29),  t89,  3(SI32)
	c0    and $r0.4 = $r0.7, 7   ## bblock 1, line 435,  t51,  t89,  7(I32)
;;								## 0
	c0    add $r0.6 = $r0.5, (_?1PACKET.15 + 0)   ## bblock 1, line 434,  t52,  t49(SI29),  addr(buf?1.134)(P32)
	c0    ldbu $r0.12 = (_?1PACKET.15 + 0)[$r0.5]   ## bblock 1, line 437, t54(I8), t49(SI29)
	c0    add $r0.8 = $r0.5, ((_?1PACKET.15 + 0) + 1)   ## bblock 1, line 437,  t107,  t49(SI29),  (addr(buf?1.134)(P32) + 0x1(I32))(P32)
	c0    sub $r0.10 = 16, $r0.4   ## bblock 1, line 443,  t102,  16(SI32),  t51
	c0    sub $r0.11 = 8, $r0.4   ## bblock 1, line 439,  t105,  8(SI32),  t51
;;								## 1
	c0    add $r0.7 = $r0.2, $r0.7   ## bblock 1, line 448,  t93,  t72,  t89
	c0    add $r0.13 = $r0.2, $r0.4   ## bblock 1, line 438,  t159,  t72,  t51
	c0    ldbu.d $r0.15 = 1[$r0.6]   ## [spec] bblock 1, line 442, t97(I8), t52
	c0    add $r0.14 = $r0.6, 2   ## bblock 1, line 442,  t98,  t52,  2(SI32)
;;								## 2
	c0    shr $r0.12 = $r0.12, $r0.4   ## bblock 1, line 437,  t108,  t54(I8),  t51
	c0    add $r0.2 = $r0.13, -8   ## bblock 1, line 438,  t106,  t159,  -8(SI32)
	c0    add $r0.5 = $r0.13, -16   ## bblock 1, line 444,  t101,  t159,  -16(SI32)
	c0    stw ((_?1PACKET.13 + 0) + 0)[$r0.0] = $r0.7   ## bblock 1, line 449, 0(I32), t93
;;								## 3
	c0    cmpge $b0.0 = $r0.2, 8   ## bblock 1, line 440,  t96(I1),  t106,  8(SI32)
	c0    shl $r0.15 = $r0.15, $r0.11   ## bblock 1, line 442,  t99,  t97(I8),  t105
	c0    stw ((_?1PACKET.14 + 0) + 0)[$r0.0] = $r0.9   ## bblock 1, line 449, 0(I32), t88
;;								## 4
	c0    slct $r0.5 = $b0.0, $r0.5, $r0.2   ## bblock 1, line 444,  t3,  t96(I1),  t101,  t106
	c0    slct $r0.10 = $b0.0, $r0.10, $r0.11   ## bblock 1, line 443,  t2,  t96(I1),  t102,  t105
	c0    or $r0.15 = $r0.12, $r0.15   ## bblock 1, line 442,  t100,  t108,  t99
	c0    slct $r0.14 = $b0.0, $r0.14, $r0.8   ## bblock 1, line 442,  t4,  t96(I1),  t98,  t107
;;								## 5
	c0    slct $r0.15 = $b0.0, $r0.15, $r0.12   ## bblock 1, line 442,  t0,  t96(I1),  t100,  t108
	c0    ldbu $r0.14 = 0[$r0.14]   ## bblock 1, line 447, t67(I8), t4
;;								## 6
	c0    ldbu $r0.5 = (rmask + 0)[$r0.5]   ## bblock 1, line 447, t66(I8), t3
;;								## 7
;;								## 8
	c0    and $r0.14 = $r0.14, $r0.5   ## bblock 1, line 447,  t68,  t67(I8),  t66(I8)
;;								## 9
	c0    shl $r0.14 = $r0.14, $r0.10   ## bblock 1, line 447,  t69,  t68,  t2
;;								## 10
.return ret($r0.3:s32)
	c0    or $r0.3 = $r0.15, $r0.14   ## bblock 1, line 447,  t95,  t0,  t69
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 1, line 449,  t75,  ?2.8?2auto_size(I32),  t74
;;								## 11
.trace 6
L149?3:
	c0    mov $r0.7 = -1   ## bblock 22, line 423-3,  t119(I8),  -1(SI32)
	c0    add $r0.3 = $r0.3, 4   ## [spec] bblock 24, line 0,  t139,  t139,  4(I32)
	c0    goto L150?3 ## goto
;;								## 0
.trace 20
L148?3:
	c0    max $r0.11 = $r0.11, $r0.0   ## bblock 2, line 0,  t110,  t90,  0(SI32)
	c0    mov $r0.3 = -1   ## -1(SI32)
	c0    goto L152?3 ## goto
;;								## 0
.trace 19
L147?3:
	c0    add $r0.11 = $r0.5, 2   ## bblock 35, line 0,  t110,  t111,  2(I32)
	c0    mov $r0.3 = -1   ## -1(SI32)
	c0    goto L152?3 ## goto
;;								## 0
.trace 5
L145?3:
	c0    mov $r0.6 = -1   ## bblock 30, line 423-2,  t31(I8),  -1(SI32)
	c0    ldw.d $r0.8 = ((buflen + 0) + 0)[$r0.0]   ## [spec] bblock 20, line 423-3, t125, 0(I32)
;;								## 0
	c0    ldw.d $r0.7 = ((bufp + 0) + 0)[$r0.0]   ## [spec] bblock 25, line 423-3, t122, 0(I32)
;;								## 1
	c0    add $r0.2 = $r0.8, -1   ## [spec] bblock 20, line 423-3,  t124,  t125,  -1(SI32)
;;								## 2
	c0    cmpge $b0.0 = $r0.2, $r0.0   ## [spec] bblock 20, line 423-3,  t172(I1),  t124,  0(SI32)
	c0    goto L146?3 ## goto
;;								## 3
.trace 18
L144?3:
	c0    max $r0.11 = $r0.11, $r0.0   ## bblock 2, line 0,  t110,  t90,  0(SI32)
	c0    mov $r0.3 = -1   ## -1(SI32)
	c0    goto L152?3 ## goto
;;								## 0
.trace 17
L143?3:
	c0    add $r0.11 = $r0.5, 1   ## bblock 43, line 0,  t110,  t111,  1(I32)
	c0    mov $r0.3 = -1   ## -1(SI32)
	c0    goto L152?3 ## goto
;;								## 0
.trace 4
L141?3:
	c0    mov $r0.7 = -1   ## bblock 38, line 423-1,  t129(I8),  -1(SI32)
	c0    ldw.d $r0.8 = ((buflen + 0) + 0)[$r0.0]   ## [spec] bblock 29, line 423-2, t117, 0(I32)
;;								## 0
	c0    ldw.d $r0.6 = ((bufp + 0) + 0)[$r0.0]   ## [spec] bblock 33, line 423-2, t34, 0(I32)
;;								## 1
	c0    add $r0.2 = $r0.8, -1   ## [spec] bblock 29, line 423-2,  t112,  t117,  -1(SI32)
;;								## 2
	c0    cmpge $b0.0 = $r0.2, $r0.0   ## [spec] bblock 29, line 423-2,  t174(I1),  t112,  0(SI32)
	c0    goto L142?3 ## goto
;;								## 3
.trace 16
L140?3:
	c0    max $r0.11 = $r0.11, $r0.0   ## bblock 2, line 0,  t110,  t90,  0(SI32)
	c0    mov $r0.3 = -1   ## -1(SI32)
	c0    goto L152?3 ## goto
;;								## 0
.trace 15
L139?3:
	c0    mov $r0.11 = $r0.5   ## bblock 45, line 0,  t110,  t111
	c0    mov $r0.3 = -1   ## -1(SI32)
	c0    goto L152?3 ## goto
;;								## 0
.trace 3
L137?3:
	c0    mov $r0.6 = -1   ## bblock 12, line 423,  t116(I8),  -1(SI32)
	c0    ldw.d $r0.7 = ((bufp + 0) + 0)[$r0.0]   ## [spec] bblock 41, line 423-1, t132, 0(I32)
;;								## 0
	c0    add $r0.2 = $r0.2, -1   ## [spec] bblock 37, line 423-1,  t128,  t127,  -1(SI32)
;;								## 1
	c0    cmpge $b0.0 = $r0.2, $r0.0   ## [spec] bblock 37, line 423-1,  t177(I1),  t128,  0(SI32)
	c0    goto L138?3 ## goto
;;								## 2
.trace 10
L136?3:
	c0    max $r0.11 = $r0.11, $r0.0   ## bblock 2, line 0,  t110,  t90,  0(SI32)
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
L152?3:
	c0    cmple $b0.0 = $r0.11, $r0.0   ## bblock 8, line 427,  t166(I1),  t110,  0(SI32)
;;								## 1
	c0    brf $b0.0, L153?3   ## bblock 8, line 427,  t166(I1)
;;								## 2
	c0    stw ((_?1PACKET.14 + 0) + 0)[$r0.0] = $r0.11   ## bblock 10, line 428, 0(I32), t110
;;								## 3
.return ret($r0.3:s32)
	c0    stw ((_?1PACKET.13 + 0) + 0)[$r0.0] = $r0.10   ## bblock 10, line 428, 0(I32), t89
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 10, line 428,  t75,  ?2.8?2auto_size(I32),  t74
;;								## 4
.trace 11
L133?3:
	c0    stw ((clear_flg + 0) + 0)[$r0.0] = $r0.0   ## bblock 16, line 419, 0(I32), 0(SI32)
	c0    mov $r0.6 = 511   ## 511(SI32)
	c0    mov $r0.3 = 9   ## 9(SI32)
;;								## 0
	c0    stw ((n_bits + 0) + 0)[$r0.0] = $r0.3   ## bblock 16, line 418, 0(I32), 9(SI32)
;;								## 1
	c0    ldw $r0.11 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 6, line 0, t90, 0(I32)
;;								## 2
	c0    stw ((maxcode + 0) + 0)[$r0.0] = $r0.6   ## bblock 16, line 418, 0(I32), 511(SI32)
;;								## 3
	c0    sub $r0.2 = 3, $r0.11   ## bblock 6, line 0,  t140,  3(I32),  t90
	c0    goto L134?3 ## goto
;;								## 4
.trace 14
L132?3:
	c0    ldw $r0.2 = ((n_bits + 0) + 0)[$r0.0]   ## bblock 18, line 414, t21, 0(I32)
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
;;								## 1
	c0    shl $r0.3 = $r0.3, $r0.2   ## bblock 18, line 414,  t22,  1(SI32),  t21
;;								## 2
	c0    add $r0.3 = $r0.3, -1   ## bblock 18, line 414,  t23,  t22,  -1(SI32)
;;								## 3
	c0    stw ((maxcode + 0) + 0)[$r0.0] = $r0.3   ## bblock 18, line 414, 0(I32), t23
	c0    goto L131?3 ## goto
;;								## 4
.endp
.section .bss
_?1PACKET.15:
    .skip 12
.section .data
.skip 3
_?1PACKET.14:
    .data4 0
_?1PACKET.13:
    .data4 0
.section .data
.section .text
.equ ?2.8?2auto_size, 0x0
 ## End compressgetcode
 ## Begin writeerr
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg()
writeerr::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    mov $r0.3 = (_?1STRINGPACKET.8 + 0)   ## addr(_?1STRINGVAR.8)(P32)
;;								## 0
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 0, line 454,  raddr(puts)(P32),  addr(_?1STRINGVAR.8)(P32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t3
;;								## 1
	c0    mov $r0.3 = 1   ## 1(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t3
;;								## 2
;;								## 3
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 455,  t4,  ?2.9?2auto_size(I32),  t3
;;								## 4
.endp
.section .bss
.section .data
_?1STRINGPACKET.8:
    .data1 69
    .data1 82
    .data1 82
    .data1 79
    .data1 82
    .data1 58
    .data1 32
    .data1 119
    .data1 114
    .data1 105
    .data1 116
    .data1 101
    .data1 114
    .data1 114
    .data1 32
    .data1 119
    .data1 97
    .data1 115
    .data1 32
    .data1 99
    .data1 97
    .data1 108
    .data1 108
    .data1 101
    .data1 100
    .data1 10
    .data1 0
.equ ?2.9?2scratch.0, 0x0
.equ ?2.9?2ras_p, 0x10
.section .data
.section .text
.equ ?2.9?2auto_size, 0x20
 ## End writeerr
 ## Begin foreground
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg()
foreground::
.trace 1
	      ## auto_size == 0
	c0    ldw $r0.2 = ((bgnd_flag + 0) + 0)[$r0.0]   ## bblock 0, line 458, t0, 0(I32)
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
;;								## 1
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 0, line 460,  t13(I1),  t0,  0x0(P32)
;;								## 2
	c0    brf $b0.0, L154?3   ## bblock 0, line 460,  t13(I1)
;;								## 3
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 462,  t2,  ?2.10?2auto_size(I32),  t1
;;								## 4
.trace 2
L154?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 1, line 465,  t2,  ?2.10?2auto_size(I32),  t1
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.10?2auto_size, 0x0
 ## End foreground
 ## Begin onintr
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg()
onintr::
.trace 1
	      ## auto_size == 0
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 470,  t1,  ?2.11?2auto_size(I32),  t0
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.11?2auto_size, 0x0
 ## End onintr
 ## Begin oops
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg()
oops::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    ldw $r0.2 = ((do_decomp + 0) + 0)[$r0.0]   ## bblock 0, line 475, t0, 0(I32)
	c0    mov $r0.3 = (_?1STRINGPACKET.9 + 0)   ## addr(_?1STRINGVAR.9)(P32)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t4
;;								## 1
	c0    cmpeq $b0.0 = $r0.2, 1   ## bblock 0, line 475,  t15(I1),  t0,  1(SI32)
;;								## 2
	c0    brf $b0.0, L155?3   ## bblock 0, line 475,  t15(I1)
;;								## 3
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 2, line 476,  raddr(puts)(P32),  addr(_?1STRINGVAR.9)(P32)
;;								## 4
L155?3:
	c0    mov $r0.3 = 1   ## 1(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t4
;;								## 5
;;								## 6
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 477,  t5,  ?2.12?2auto_size(I32),  t4
;;								## 7
.endp
.section .bss
.section .data
.skip 1
_?1STRINGPACKET.9:
    .data1 117
    .data1 110
    .data1 99
    .data1 111
    .data1 109
    .data1 112
    .data1 114
    .data1 101
    .data1 115
    .data1 115
    .data1 58
    .data1 32
    .data1 99
    .data1 111
    .data1 114
    .data1 114
    .data1 117
    .data1 112
    .data1 116
    .data1 32
    .data1 105
    .data1 110
    .data1 112
    .data1 117
    .data1 116
    .data1 10
    .data1 0
.equ ?2.12?2scratch.0, 0x0
.equ ?2.12?2ras_p, 0x10
.section .data
.section .text
.equ ?2.12?2auto_size, 0x20
 ## End oops
 ## Begin cl_block
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg()
cl_block::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    ldw $r0.2 = ((in_count + 0) + 0)[$r0.0]   ## bblock 0, line 483, t3, 0(I32)
	c0    mov $r0.3 = 2147483647   ## [spec] bblock 9, line 489,  t25,  2147483647(SI32)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t14
;;								## 1
	c0    add $r0.4 = $r0.2, 10000   ## bblock 0, line 483,  t2,  t3,  10000(SI32)
	c0    cmpgt $b0.0 = $r0.2, 8388607   ## bblock 0, line 484,  t26(I1),  t3,  8388607(SI32)
	c0    ldw.d $r0.2 = ((bytes_out + 0) + 0)[$r0.0]   ## [spec] bblock 7, line 486, t4, 0(I32)
;;								## 2
	c0    stw ((checkpoint + 0) + 0)[$r0.0] = $r0.4   ## bblock 0, line 483, 0(I32), t2
	c0    brf $b0.0, L156?3   ## bblock 0, line 484,  t26(I1)
;;								## 3
	c0    shr $r0.2 = $r0.2, 8   ## bblock 7, line 486,  t0(SI24),  t4,  8(SI32)
;;								## 4
	c0    cmpeq $b0.0 = $r0.2, $r0.0   ## bblock 7, line 487,  t42(I1),  t0(SI24),  0(SI32)
;;								## 5
	c0    brf $b0.0, L157?3   ## bblock 7, line 487,  t42(I1)
;;								## 6
.trace 2
L158?3:
	c0    ldw $r0.2 = ((ratio + 0) + 0)[$r0.0]   ## bblock 2, line 502, t12, 0(I32)
;;								## 0
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t14
;;								## 1
	c0    cmpgt $b0.0 = $r0.3, $r0.2   ## bblock 2, line 502,  t41(I1),  t25,  t12
;;								## 2
	c0    brf $b0.0, L159?3   ## bblock 2, line 502,  t41(I1)
;;								## 3
	c0    stw ((ratio + 0) + 0)[$r0.0] = $r0.3   ## bblock 6, line 504, 0(I32), t25
;;								## 4
L160?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 5, line 515,  t15,  ?2.13?2auto_size(I32),  t14
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 5
.trace 4
L159?3:
	c0    ldw $r0.3 = ((hsize + 0) + 0)[$r0.0]   ## bblock 3, line 509, t13, 0(I32)
;;								## 0
.call cl_hash, caller, arg($r0.3:s32), ret()
	c0    stw ((ratio + 0) + 0)[$r0.0] = $r0.0   ## bblock 3, line 508, 0(I32), 0(SI32)
	c0    call $l0.0 = cl_hash   ## bblock 3, line 509,  raddr(cl_hash)(P32),  t13
;;								## 1
	c0    mov $r0.4 = 1   ## 1(SI32)
	c0    mov $r0.2 = 257   ## 257(SI32)
	c0    mov $r0.3 = 256   ## 256(SI32)
;;								## 2
	c0    stw ((free_ent + 0) + 0)[$r0.0] = $r0.2   ## bblock 4, line 510, 0(I32), 257(SI32)
;;								## 3
.call output, caller, arg($r0.3:s32), ret()
	c0    stw ((clear_flg + 0) + 0)[$r0.0] = $r0.4   ## bblock 4, line 511, 0(I32), 1(SI32)
	c0    call $l0.0 = output   ## bblock 4, line 512,  raddr(output)(P32),  256(SI32)
;;								## 4
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t14
;;								## 5
	c0    goto L160?3 ## goto
;;								## 6
.trace 5
L157?3:
	c0    ldw $r0.4 = ((in_count + 0) + 0)[$r0.0]   ## bblock 8, line 493, t6, 0(I32)
	c0    cmplt $r0.5 = $r0.2, $r0.0   ## bblock 8, line 493,  t46,  t0(SI24),  0(I32)
	c0    sub $r0.6 = $r0.0, $r0.2   ## bblock 8, line 493,  t44,  0(I32),  t0(SI24)
	c0    mtb $b0.0 = $r0.0   ## 0(I32)
;;								## 0
	c0    mtb $b0.1 = $r0.5   ## t46
;;								## 1
	c0    slct $r0.6 = $b0.1, $r0.6, $r0.2   ## bblock 8, line 493,  t47,  t46,  t44,  t0(SI24)
	c0    cmplt $r0.7 = $r0.4, $r0.0   ## bblock 8, line 493,  t48,  t6,  0(I32)
	c0    sub $r0.8 = $r0.0, $r0.4   ## bblock 8, line 493,  t43,  0(I32),  t6
;;								## 2
	c0    cmpeq $b0.2 = $r0.5, $r0.7   ## bblock 8, line 493,  t55,  t46,  t48
	c0    mtb $b0.1 = $r0.7   ## t48
;;								## 3
	c0    slct $r0.8 = $b0.1, $r0.8, $r0.4   ## bblock 8, line 493,  t49,  t48,  t43,  t6
;;								## 4
	c0    addcg $r0.2, $b0.1 = $r0.8, $r0.8, $b0.0   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  0(I32)
;;								## 5
	c0    divs $r0.2, $b0.1 = $r0.0, $r0.6, $b0.1   ## bblock 8, line 493,  t45,  t50(I1),  0(I32),  t47,  t50(I1)
	c0    addcg $r0.8, $b0.3 = $r0.2, $r0.2, $b0.0   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  0(I32)
;;								## 6
	c0    divs $r0.2, $b0.3 = $r0.2, $r0.6, $b0.3   ## bblock 8, line 493,  t45,  t51(I1),  t45,  t47,  t51(I1)
	c0    addcg $r0.4, $b0.1 = $r0.8, $r0.8, $b0.1   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  t50(I1)
;;								## 7
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.6, $b0.1   ## bblock 8, line 493,  t45,  t50(I1),  t45,  t47,  t50(I1)
	c0    addcg $r0.8, $b0.3 = $r0.4, $r0.4, $b0.3   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  t51(I1)
;;								## 8
	c0    divs $r0.2, $b0.3 = $r0.2, $r0.6, $b0.3   ## bblock 8, line 493,  t45,  t51(I1),  t45,  t47,  t51(I1)
	c0    addcg $r0.4, $b0.1 = $r0.8, $r0.8, $b0.1   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  t50(I1)
;;								## 9
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.6, $b0.1   ## bblock 8, line 493,  t45,  t50(I1),  t45,  t47,  t50(I1)
	c0    addcg $r0.8, $b0.3 = $r0.4, $r0.4, $b0.3   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  t51(I1)
;;								## 10
	c0    divs $r0.2, $b0.3 = $r0.2, $r0.6, $b0.3   ## bblock 8, line 493,  t45,  t51(I1),  t45,  t47,  t51(I1)
	c0    addcg $r0.4, $b0.1 = $r0.8, $r0.8, $b0.1   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  t50(I1)
;;								## 11
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.6, $b0.1   ## bblock 8, line 493,  t45,  t50(I1),  t45,  t47,  t50(I1)
	c0    addcg $r0.8, $b0.3 = $r0.4, $r0.4, $b0.3   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  t51(I1)
;;								## 12
	c0    divs $r0.2, $b0.3 = $r0.2, $r0.6, $b0.3   ## bblock 8, line 493,  t45,  t51(I1),  t45,  t47,  t51(I1)
	c0    addcg $r0.4, $b0.1 = $r0.8, $r0.8, $b0.1   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  t50(I1)
;;								## 13
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.6, $b0.1   ## bblock 8, line 493,  t45,  t50(I1),  t45,  t47,  t50(I1)
	c0    addcg $r0.8, $b0.3 = $r0.4, $r0.4, $b0.3   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  t51(I1)
;;								## 14
	c0    divs $r0.2, $b0.3 = $r0.2, $r0.6, $b0.3   ## bblock 8, line 493,  t45,  t51(I1),  t45,  t47,  t51(I1)
	c0    addcg $r0.4, $b0.1 = $r0.8, $r0.8, $b0.1   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  t50(I1)
;;								## 15
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.6, $b0.1   ## bblock 8, line 493,  t45,  t50(I1),  t45,  t47,  t50(I1)
	c0    addcg $r0.8, $b0.3 = $r0.4, $r0.4, $b0.3   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  t51(I1)
;;								## 16
	c0    divs $r0.2, $b0.3 = $r0.2, $r0.6, $b0.3   ## bblock 8, line 493,  t45,  t51(I1),  t45,  t47,  t51(I1)
	c0    addcg $r0.4, $b0.1 = $r0.8, $r0.8, $b0.1   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  t50(I1)
;;								## 17
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.6, $b0.1   ## bblock 8, line 493,  t45,  t50(I1),  t45,  t47,  t50(I1)
	c0    addcg $r0.8, $b0.3 = $r0.4, $r0.4, $b0.3   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  t51(I1)
;;								## 18
	c0    divs $r0.2, $b0.3 = $r0.2, $r0.6, $b0.3   ## bblock 8, line 493,  t45,  t51(I1),  t45,  t47,  t51(I1)
	c0    addcg $r0.4, $b0.1 = $r0.8, $r0.8, $b0.1   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  t50(I1)
;;								## 19
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.6, $b0.1   ## bblock 8, line 493,  t45,  t50(I1),  t45,  t47,  t50(I1)
	c0    addcg $r0.8, $b0.3 = $r0.4, $r0.4, $b0.3   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  t51(I1)
;;								## 20
	c0    divs $r0.2, $b0.3 = $r0.2, $r0.6, $b0.3   ## bblock 8, line 493,  t45,  t51(I1),  t45,  t47,  t51(I1)
	c0    addcg $r0.4, $b0.1 = $r0.8, $r0.8, $b0.1   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  t50(I1)
;;								## 21
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.6, $b0.1   ## bblock 8, line 493,  t45,  t50(I1),  t45,  t47,  t50(I1)
	c0    addcg $r0.8, $b0.3 = $r0.4, $r0.4, $b0.3   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  t51(I1)
;;								## 22
	c0    divs $r0.2, $b0.3 = $r0.2, $r0.6, $b0.3   ## bblock 8, line 493,  t45,  t51(I1),  t45,  t47,  t51(I1)
	c0    addcg $r0.4, $b0.1 = $r0.8, $r0.8, $b0.1   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  t50(I1)
;;								## 23
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.6, $b0.1   ## bblock 8, line 493,  t45,  t50(I1),  t45,  t47,  t50(I1)
	c0    addcg $r0.8, $b0.3 = $r0.4, $r0.4, $b0.3   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  t51(I1)
;;								## 24
	c0    divs $r0.2, $b0.3 = $r0.2, $r0.6, $b0.3   ## bblock 8, line 493,  t45,  t51(I1),  t45,  t47,  t51(I1)
	c0    addcg $r0.4, $b0.1 = $r0.8, $r0.8, $b0.1   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  t50(I1)
;;								## 25
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.6, $b0.1   ## bblock 8, line 493,  t45,  t50(I1),  t45,  t47,  t50(I1)
	c0    addcg $r0.8, $b0.3 = $r0.4, $r0.4, $b0.3   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  t51(I1)
;;								## 26
	c0    divs $r0.2, $b0.3 = $r0.2, $r0.6, $b0.3   ## bblock 8, line 493,  t45,  t51(I1),  t45,  t47,  t51(I1)
	c0    addcg $r0.4, $b0.1 = $r0.8, $r0.8, $b0.1   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  t50(I1)
;;								## 27
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.6, $b0.1   ## bblock 8, line 493,  t45,  t50(I1),  t45,  t47,  t50(I1)
	c0    addcg $r0.8, $b0.3 = $r0.4, $r0.4, $b0.3   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  t51(I1)
;;								## 28
	c0    divs $r0.2, $b0.3 = $r0.2, $r0.6, $b0.3   ## bblock 8, line 493,  t45,  t51(I1),  t45,  t47,  t51(I1)
	c0    addcg $r0.4, $b0.1 = $r0.8, $r0.8, $b0.1   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  t50(I1)
;;								## 29
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.6, $b0.1   ## bblock 8, line 493,  t45,  t50(I1),  t45,  t47,  t50(I1)
	c0    addcg $r0.8, $b0.3 = $r0.4, $r0.4, $b0.3   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  t51(I1)
;;								## 30
	c0    divs $r0.2, $b0.3 = $r0.2, $r0.6, $b0.3   ## bblock 8, line 493,  t45,  t51(I1),  t45,  t47,  t51(I1)
	c0    addcg $r0.4, $b0.1 = $r0.8, $r0.8, $b0.1   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  t50(I1)
;;								## 31
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.6, $b0.1   ## bblock 8, line 493,  t45,  t50(I1),  t45,  t47,  t50(I1)
	c0    addcg $r0.8, $b0.3 = $r0.4, $r0.4, $b0.3   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  t51(I1)
;;								## 32
	c0    divs $r0.2, $b0.3 = $r0.2, $r0.6, $b0.3   ## bblock 8, line 493,  t45,  t51(I1),  t45,  t47,  t51(I1)
	c0    addcg $r0.4, $b0.1 = $r0.8, $r0.8, $b0.1   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  t50(I1)
;;								## 33
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.6, $b0.1   ## bblock 8, line 493,  t45,  t50(I1),  t45,  t47,  t50(I1)
	c0    addcg $r0.8, $b0.3 = $r0.4, $r0.4, $b0.3   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  t51(I1)
;;								## 34
	c0    divs $r0.2, $b0.3 = $r0.2, $r0.6, $b0.3   ## bblock 8, line 493,  t45,  t51(I1),  t45,  t47,  t51(I1)
	c0    addcg $r0.4, $b0.1 = $r0.8, $r0.8, $b0.1   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  t50(I1)
;;								## 35
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.6, $b0.1   ## bblock 8, line 493,  t45,  t50(I1),  t45,  t47,  t50(I1)
	c0    addcg $r0.8, $b0.3 = $r0.4, $r0.4, $b0.3   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  t51(I1)
;;								## 36
	c0    divs $r0.2, $b0.3 = $r0.2, $r0.6, $b0.3   ## bblock 8, line 493,  t45,  t51(I1),  t45,  t47,  t51(I1)
	c0    addcg $r0.4, $b0.1 = $r0.8, $r0.8, $b0.1   ## bblock 8, line 493,  t49,  t50(I1),  t49,  t49,  t50(I1)
;;								## 37
	c0    addcg $r0.8, $b0.3 = $r0.4, $r0.4, $b0.3   ## bblock 8, line 493,  t49,  t51(I1),  t49,  t49,  t51(I1)
	c0    cmpge $r0.2 = $r0.2, $r0.0   ## bblock 8, line 493,  t52,  t45,  0(I32)
;;								## 38
	c0    orc $r0.8 = $r0.8, $r0.0   ## bblock 8, line 493,  t53,  t49,  0(I32)
;;								## 39
	c0    sh1add $r0.8 = $r0.8, $r0.2   ## bblock 8, line 493,  t54,  t53,  t52
;;								## 40
	c0    sub $r0.2 = $r0.0, $r0.8   ## bblock 8, line 493,  t56,  0(I32),  t54
;;								## 41
	c0    slct $r0.3 = $b0.2, $r0.8, $r0.2   ## bblock 8, line 493,  t25,  t55,  t54,  t56
	c0    goto L158?3 ## goto
;;								## 42
.trace 3
L156?3:
	c0    ldw $r0.2 = ((in_count + 0) + 0)[$r0.0]   ## bblock 1, line 499, t8, 0(I32)
	c0    mtb $b0.0 = $r0.0   ## 0(I32)
;;								## 0
	c0    ldw $r0.4 = ((bytes_out + 0) + 0)[$r0.0]   ## bblock 1, line 499, t10, 0(I32)
;;								## 1
	c0    shl $r0.2 = $r0.2, 8   ## bblock 1, line 499,  t9,  t8,  8(SI32)
;;								## 2
	c0    cmplt $r0.7 = $r0.4, $r0.0   ## bblock 1, line 499,  t30,  t10,  0(I32)
	c0    sub $r0.8 = $r0.0, $r0.4   ## bblock 1, line 499,  t28,  0(I32),  t10
	c0    cmplt $r0.5 = $r0.2, $r0.0   ## bblock 1, line 499,  t32,  t9,  0(I32)
	c0    sub $r0.6 = $r0.0, $r0.2   ## bblock 1, line 499,  t27,  0(I32),  t9
;;								## 3
	c0    cmpeq $b0.3 = $r0.7, $r0.5   ## bblock 1, line 499,  t39,  t30,  t32
	c0    mtb $b0.1 = $r0.5   ## t32
	c0    mtb $b0.2 = $r0.7   ## t30
;;								## 4
	c0    slct $r0.8 = $b0.2, $r0.8, $r0.4   ## bblock 1, line 499,  t31,  t30,  t28,  t10
	c0    slct $r0.6 = $b0.1, $r0.6, $r0.2   ## bblock 1, line 499,  t33,  t32,  t27,  t9
;;								## 5
	c0    addcg $r0.2, $b0.1 = $r0.6, $r0.6, $b0.0   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  0(I32)
;;								## 6
	c0    divs $r0.2, $b0.1 = $r0.0, $r0.8, $b0.1   ## bblock 1, line 499,  t29,  t34(I1),  0(I32),  t31,  t34(I1)
	c0    addcg $r0.6, $b0.2 = $r0.2, $r0.2, $b0.0   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  0(I32)
;;								## 7
	c0    divs $r0.2, $b0.2 = $r0.2, $r0.8, $b0.2   ## bblock 1, line 499,  t29,  t35(I1),  t29,  t31,  t35(I1)
	c0    addcg $r0.4, $b0.1 = $r0.6, $r0.6, $b0.1   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  t34(I1)
;;								## 8
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.8, $b0.1   ## bblock 1, line 499,  t29,  t34(I1),  t29,  t31,  t34(I1)
	c0    addcg $r0.6, $b0.2 = $r0.4, $r0.4, $b0.2   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  t35(I1)
;;								## 9
	c0    divs $r0.2, $b0.2 = $r0.2, $r0.8, $b0.2   ## bblock 1, line 499,  t29,  t35(I1),  t29,  t31,  t35(I1)
	c0    addcg $r0.4, $b0.1 = $r0.6, $r0.6, $b0.1   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  t34(I1)
;;								## 10
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.8, $b0.1   ## bblock 1, line 499,  t29,  t34(I1),  t29,  t31,  t34(I1)
	c0    addcg $r0.6, $b0.2 = $r0.4, $r0.4, $b0.2   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  t35(I1)
;;								## 11
	c0    divs $r0.2, $b0.2 = $r0.2, $r0.8, $b0.2   ## bblock 1, line 499,  t29,  t35(I1),  t29,  t31,  t35(I1)
	c0    addcg $r0.4, $b0.1 = $r0.6, $r0.6, $b0.1   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  t34(I1)
;;								## 12
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.8, $b0.1   ## bblock 1, line 499,  t29,  t34(I1),  t29,  t31,  t34(I1)
	c0    addcg $r0.6, $b0.2 = $r0.4, $r0.4, $b0.2   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  t35(I1)
;;								## 13
	c0    divs $r0.2, $b0.2 = $r0.2, $r0.8, $b0.2   ## bblock 1, line 499,  t29,  t35(I1),  t29,  t31,  t35(I1)
	c0    addcg $r0.4, $b0.1 = $r0.6, $r0.6, $b0.1   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  t34(I1)
;;								## 14
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.8, $b0.1   ## bblock 1, line 499,  t29,  t34(I1),  t29,  t31,  t34(I1)
	c0    addcg $r0.6, $b0.2 = $r0.4, $r0.4, $b0.2   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  t35(I1)
;;								## 15
	c0    divs $r0.2, $b0.2 = $r0.2, $r0.8, $b0.2   ## bblock 1, line 499,  t29,  t35(I1),  t29,  t31,  t35(I1)
	c0    addcg $r0.4, $b0.1 = $r0.6, $r0.6, $b0.1   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  t34(I1)
;;								## 16
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.8, $b0.1   ## bblock 1, line 499,  t29,  t34(I1),  t29,  t31,  t34(I1)
	c0    addcg $r0.6, $b0.2 = $r0.4, $r0.4, $b0.2   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  t35(I1)
;;								## 17
	c0    divs $r0.2, $b0.2 = $r0.2, $r0.8, $b0.2   ## bblock 1, line 499,  t29,  t35(I1),  t29,  t31,  t35(I1)
	c0    addcg $r0.4, $b0.1 = $r0.6, $r0.6, $b0.1   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  t34(I1)
;;								## 18
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.8, $b0.1   ## bblock 1, line 499,  t29,  t34(I1),  t29,  t31,  t34(I1)
	c0    addcg $r0.6, $b0.2 = $r0.4, $r0.4, $b0.2   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  t35(I1)
;;								## 19
	c0    divs $r0.2, $b0.2 = $r0.2, $r0.8, $b0.2   ## bblock 1, line 499,  t29,  t35(I1),  t29,  t31,  t35(I1)
	c0    addcg $r0.4, $b0.1 = $r0.6, $r0.6, $b0.1   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  t34(I1)
;;								## 20
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.8, $b0.1   ## bblock 1, line 499,  t29,  t34(I1),  t29,  t31,  t34(I1)
	c0    addcg $r0.6, $b0.2 = $r0.4, $r0.4, $b0.2   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  t35(I1)
;;								## 21
	c0    divs $r0.2, $b0.2 = $r0.2, $r0.8, $b0.2   ## bblock 1, line 499,  t29,  t35(I1),  t29,  t31,  t35(I1)
	c0    addcg $r0.4, $b0.1 = $r0.6, $r0.6, $b0.1   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  t34(I1)
;;								## 22
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.8, $b0.1   ## bblock 1, line 499,  t29,  t34(I1),  t29,  t31,  t34(I1)
	c0    addcg $r0.6, $b0.2 = $r0.4, $r0.4, $b0.2   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  t35(I1)
;;								## 23
	c0    divs $r0.2, $b0.2 = $r0.2, $r0.8, $b0.2   ## bblock 1, line 499,  t29,  t35(I1),  t29,  t31,  t35(I1)
	c0    addcg $r0.4, $b0.1 = $r0.6, $r0.6, $b0.1   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  t34(I1)
;;								## 24
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.8, $b0.1   ## bblock 1, line 499,  t29,  t34(I1),  t29,  t31,  t34(I1)
	c0    addcg $r0.6, $b0.2 = $r0.4, $r0.4, $b0.2   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  t35(I1)
;;								## 25
	c0    divs $r0.2, $b0.2 = $r0.2, $r0.8, $b0.2   ## bblock 1, line 499,  t29,  t35(I1),  t29,  t31,  t35(I1)
	c0    addcg $r0.4, $b0.1 = $r0.6, $r0.6, $b0.1   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  t34(I1)
;;								## 26
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.8, $b0.1   ## bblock 1, line 499,  t29,  t34(I1),  t29,  t31,  t34(I1)
	c0    addcg $r0.6, $b0.2 = $r0.4, $r0.4, $b0.2   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  t35(I1)
;;								## 27
	c0    divs $r0.2, $b0.2 = $r0.2, $r0.8, $b0.2   ## bblock 1, line 499,  t29,  t35(I1),  t29,  t31,  t35(I1)
	c0    addcg $r0.4, $b0.1 = $r0.6, $r0.6, $b0.1   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  t34(I1)
;;								## 28
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.8, $b0.1   ## bblock 1, line 499,  t29,  t34(I1),  t29,  t31,  t34(I1)
	c0    addcg $r0.6, $b0.2 = $r0.4, $r0.4, $b0.2   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  t35(I1)
;;								## 29
	c0    divs $r0.2, $b0.2 = $r0.2, $r0.8, $b0.2   ## bblock 1, line 499,  t29,  t35(I1),  t29,  t31,  t35(I1)
	c0    addcg $r0.4, $b0.1 = $r0.6, $r0.6, $b0.1   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  t34(I1)
;;								## 30
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.8, $b0.1   ## bblock 1, line 499,  t29,  t34(I1),  t29,  t31,  t34(I1)
	c0    addcg $r0.6, $b0.2 = $r0.4, $r0.4, $b0.2   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  t35(I1)
;;								## 31
	c0    divs $r0.2, $b0.2 = $r0.2, $r0.8, $b0.2   ## bblock 1, line 499,  t29,  t35(I1),  t29,  t31,  t35(I1)
	c0    addcg $r0.4, $b0.1 = $r0.6, $r0.6, $b0.1   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  t34(I1)
;;								## 32
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.8, $b0.1   ## bblock 1, line 499,  t29,  t34(I1),  t29,  t31,  t34(I1)
	c0    addcg $r0.6, $b0.2 = $r0.4, $r0.4, $b0.2   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  t35(I1)
;;								## 33
	c0    divs $r0.2, $b0.2 = $r0.2, $r0.8, $b0.2   ## bblock 1, line 499,  t29,  t35(I1),  t29,  t31,  t35(I1)
	c0    addcg $r0.4, $b0.1 = $r0.6, $r0.6, $b0.1   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  t34(I1)
;;								## 34
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.8, $b0.1   ## bblock 1, line 499,  t29,  t34(I1),  t29,  t31,  t34(I1)
	c0    addcg $r0.6, $b0.2 = $r0.4, $r0.4, $b0.2   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  t35(I1)
;;								## 35
	c0    divs $r0.2, $b0.2 = $r0.2, $r0.8, $b0.2   ## bblock 1, line 499,  t29,  t35(I1),  t29,  t31,  t35(I1)
	c0    addcg $r0.4, $b0.1 = $r0.6, $r0.6, $b0.1   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  t34(I1)
;;								## 36
	c0    divs $r0.2, $b0.1 = $r0.2, $r0.8, $b0.1   ## bblock 1, line 499,  t29,  t34(I1),  t29,  t31,  t34(I1)
	c0    addcg $r0.6, $b0.2 = $r0.4, $r0.4, $b0.2   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  t35(I1)
;;								## 37
	c0    divs $r0.2, $b0.2 = $r0.2, $r0.8, $b0.2   ## bblock 1, line 499,  t29,  t35(I1),  t29,  t31,  t35(I1)
	c0    addcg $r0.4, $b0.1 = $r0.6, $r0.6, $b0.1   ## bblock 1, line 499,  t33,  t34(I1),  t33,  t33,  t34(I1)
;;								## 38
	c0    addcg $r0.6, $b0.2 = $r0.4, $r0.4, $b0.2   ## bblock 1, line 499,  t33,  t35(I1),  t33,  t33,  t35(I1)
	c0    cmpge $r0.2 = $r0.2, $r0.0   ## bblock 1, line 499,  t36,  t29,  0(I32)
;;								## 39
	c0    orc $r0.6 = $r0.6, $r0.0   ## bblock 1, line 499,  t37,  t33,  0(I32)
;;								## 40
	c0    sh1add $r0.6 = $r0.6, $r0.2   ## bblock 1, line 499,  t38,  t37,  t36
;;								## 41
	c0    sub $r0.2 = $r0.0, $r0.6   ## bblock 1, line 499,  t40,  0(I32),  t38
;;								## 42
	c0    slct $r0.3 = $b0.3, $r0.6, $r0.2   ## bblock 1, line 499,  t25,  t39,  t38,  t40
	c0    goto L158?3 ## goto
;;								## 43
.endp
.section .bss
.section .data
.equ ?2.13?2scratch.0, 0x0
.equ ?2.13?2ras_p, 0x10
.section .data
.section .text
.equ ?2.13?2auto_size, 0x20
 ## End cl_block
.equ _?1TEMPLATEPACKET.9, 0x0
 ## Begin cl_hash
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:s32)
cl_hash::
.trace 5
	      ## auto_size == 0
	c0    sh2add $r0.7 = $r0.3, (htab + 0)   ## bblock 0, line 521,  t1,  t0,  addr(htab?1.0)(P32)
	c0    add $r0.8 = $r0.3, -16   ## bblock 0, line 524,  t2,  t0,  -16(SI32)
	c0    add $r0.4 = $r0.3, (~0x1f)   ## bblock 0, line 0,  t127,  t0,  (~0x1f)(I32)
;;								## 0
	c0    add $r0.2 = $r0.7, (~0x3f)   ## bblock 0, line 0,  t125,  t1,  (~0x3f)(I32)
;;								## 1
.trace 1
L161?3:
	c0    mov $r0.3 = $r0.2   ## bblock 1, line 0,  t46,  t125
	c0    mov $r0.5 = $r0.4   ## bblock 1, line 0,  t47,  t127
	c0    cmplt $b0.0 = $r0.4, $r0.0   ## bblock 1, line 546,  t142(I1),  t127,  0(SI32)
	c0    cmplt $b0.1 = $r0.4, 16   ## [spec] bblock 8, line 546-1,  t146(I1),  t127,  16(SI32)
	c0    add $r0.4 = $r0.4, (~0x2f)   ## [spec] bblock 6, line 0,  t127,  t127,  (~0x2f)(I32)
	c0    mov $r0.6 = -1   ## -1(SI32)
;;								## 0
	c0    stw 0[$r0.2] = $r0.6   ## bblock 1, line 527, t125, -1(SI32)
;;								## 1
	c0    stw 4[$r0.2] = $r0.6   ## bblock 1, line 528, t125, -1(SI32)
;;								## 2
	c0    stw 8[$r0.2] = $r0.6   ## bblock 1, line 529, t125, -1(SI32)
;;								## 3
	c0    stw 12[$r0.2] = $r0.6   ## bblock 1, line 530, t125, -1(SI32)
;;								## 4
	c0    stw 16[$r0.2] = $r0.6   ## bblock 1, line 531, t125, -1(SI32)
;;								## 5
	c0    stw 20[$r0.2] = $r0.6   ## bblock 1, line 532, t125, -1(SI32)
;;								## 6
	c0    stw 24[$r0.2] = $r0.6   ## bblock 1, line 533, t125, -1(SI32)
;;								## 7
	c0    stw 28[$r0.2] = $r0.6   ## bblock 1, line 534, t125, -1(SI32)
;;								## 8
	c0    stw 32[$r0.2] = $r0.6   ## bblock 1, line 535, t125, -1(SI32)
;;								## 9
	c0    stw 36[$r0.2] = $r0.6   ## bblock 1, line 536, t125, -1(SI32)
;;								## 10
	c0    stw 40[$r0.2] = $r0.6   ## bblock 1, line 537, t125, -1(SI32)
;;								## 11
	c0    stw 44[$r0.2] = $r0.6   ## bblock 1, line 538, t125, -1(SI32)
;;								## 12
	c0    stw 48[$r0.2] = $r0.6   ## bblock 1, line 539, t125, -1(SI32)
;;								## 13
	c0    stw 52[$r0.2] = $r0.6   ## bblock 1, line 540, t125, -1(SI32)
;;								## 14
	c0    stw 56[$r0.2] = $r0.6   ## bblock 1, line 541, t125, -1(SI32)
;;								## 15
	c0    stw 60[$r0.2] = $r0.6   ## bblock 1, line 542, t125, -1(SI32)
	c0    br $b0.0, L162?3   ## bblock 1, line 546,  t142(I1)
;;								## 16
	c0    stw (~0x3f)[$r0.2] = $r0.6   ## bblock 8, line 527-1, t125, -1(SI32)
;;								## 17
	c0    stw (~0x3b)[$r0.2] = $r0.6   ## bblock 8, line 528-1, t125, -1(SI32)
;;								## 18
	c0    stw (~0x37)[$r0.2] = $r0.6   ## bblock 8, line 529-1, t125, -1(SI32)
;;								## 19
	c0    stw (~0x33)[$r0.2] = $r0.6   ## bblock 8, line 530-1, t125, -1(SI32)
;;								## 20
	c0    stw (~0x2f)[$r0.2] = $r0.6   ## bblock 8, line 531-1, t125, -1(SI32)
;;								## 21
	c0    stw (~0x2b)[$r0.2] = $r0.6   ## bblock 8, line 532-1, t125, -1(SI32)
;;								## 22
	c0    stw (~0x27)[$r0.2] = $r0.6   ## bblock 8, line 533-1, t125, -1(SI32)
;;								## 23
	c0    stw (~0x23)[$r0.2] = $r0.6   ## bblock 8, line 534-1, t125, -1(SI32)
;;								## 24
	c0    stw (~0x1f)[$r0.2] = $r0.6   ## bblock 8, line 535-1, t125, -1(SI32)
;;								## 25
	c0    stw (~0x1b)[$r0.2] = $r0.6   ## bblock 8, line 536-1, t125, -1(SI32)
;;								## 26
	c0    stw (~0x17)[$r0.2] = $r0.6   ## bblock 8, line 537-1, t125, -1(SI32)
;;								## 27
	c0    stw (~0x13)[$r0.2] = $r0.6   ## bblock 8, line 538-1, t125, -1(SI32)
;;								## 28
	c0    stw (~0xf)[$r0.2] = $r0.6   ## bblock 8, line 539-1, t125, -1(SI32)
;;								## 29
	c0    stw (~0xb)[$r0.2] = $r0.6   ## bblock 8, line 540-1, t125, -1(SI32)
;;								## 30
	c0    stw (~0x7)[$r0.2] = $r0.6   ## bblock 8, line 541-1, t125, -1(SI32)
;;								## 31
	c0    stw (~0x3)[$r0.2] = $r0.6   ## bblock 8, line 542-1, t125, -1(SI32)
	c0    br $b0.1, L163?3   ## bblock 8, line 546-1,  t146(I1)
;;								## 32
	c0    stw (~0x7f)[$r0.2] = $r0.6   ## bblock 6, line 527-2, t125, -1(SI32)
	c0    add $r0.8 = $r0.8, -48   ## bblock 6, line 546-2,  t2,  t2,  -48(SI32)
	c0    add $r0.7 = $r0.7, -192   ## bblock 6, line 527-2,  t1,  t1,  -192(SI32)
;;								## 33
	c0    stw (~0x7b)[$r0.2] = $r0.6   ## bblock 6, line 528-2, t125, -1(SI32)
	c0    cmplt $b0.0 = $r0.8, $r0.0   ## bblock 6, line 546-2,  t145(I1),  t2,  0(SI32)
;;								## 34
	c0    stw (~0x77)[$r0.2] = $r0.6   ## bblock 6, line 529-2, t125, -1(SI32)
;;								## 35
	c0    stw (~0x73)[$r0.2] = $r0.6   ## bblock 6, line 530-2, t125, -1(SI32)
;;								## 36
	c0    stw (~0x6f)[$r0.2] = $r0.6   ## bblock 6, line 531-2, t125, -1(SI32)
;;								## 37
	c0    stw (~0x6b)[$r0.2] = $r0.6   ## bblock 6, line 532-2, t125, -1(SI32)
;;								## 38
	c0    stw (~0x67)[$r0.2] = $r0.6   ## bblock 6, line 533-2, t125, -1(SI32)
;;								## 39
	c0    stw (~0x63)[$r0.2] = $r0.6   ## bblock 6, line 534-2, t125, -1(SI32)
;;								## 40
	c0    stw (~0x5f)[$r0.2] = $r0.6   ## bblock 6, line 535-2, t125, -1(SI32)
;;								## 41
	c0    stw (~0x5b)[$r0.2] = $r0.6   ## bblock 6, line 536-2, t125, -1(SI32)
;;								## 42
	c0    stw (~0x57)[$r0.2] = $r0.6   ## bblock 6, line 537-2, t125, -1(SI32)
;;								## 43
	c0    stw (~0x53)[$r0.2] = $r0.6   ## bblock 6, line 538-2, t125, -1(SI32)
;;								## 44
	c0    stw (~0x4f)[$r0.2] = $r0.6   ## bblock 6, line 539-2, t125, -1(SI32)
;;								## 45
	c0    stw (~0x4b)[$r0.2] = $r0.6   ## bblock 6, line 540-2, t125, -1(SI32)
;;								## 46
	c0    stw (~0x47)[$r0.2] = $r0.6   ## bblock 6, line 541-2, t125, -1(SI32)
;;								## 47
	c0    stw (~0x43)[$r0.2] = $r0.6   ## bblock 6, line 542-2, t125, -1(SI32)
	c0    add $r0.2 = $r0.2, (~0xbf)   ## bblock 6, line 0,  t125,  t125,  (~0xbf)(I32)
	c0    br $b0.0, L164?3   ## bblock 6, line 546-2,  t145(I1)
	      ## goto
;;
	c0    goto L161?3 ## goto
;;								## 48
.trace 9
L164?3:
	c0    add $r0.7 = $r0.3, (~0x7f)   ## bblock 7, line 0,  t45,  t46,  (~0x7f)(I32)
	c0    add $r0.8 = $r0.5, (~0x1f)   ## bblock 7, line 0,  t44,  t47,  (~0x1f)(I32)
	c0    goto L165?3 ## goto
;;								## 0
.trace 2
L166?3:
	c0    cmpgt $b0.0 = $r0.2, $r0.0   ## bblock 3, line 547,  t143(I1),  t43,  0(SI32)
	c0    cmpgt $b0.1 = $r0.2, 1   ## [spec] bblock 5, line 547-1,  t144(I1),  t43,  1(SI32)
	c0    cmpgt $b0.2 = $r0.2, 2   ## [spec] bblock 30, line 547-2,  t152(I1),  t43,  2(SI32)
	c0    cmpgt $b0.3 = $r0.2, 3   ## [spec] bblock 27, line 547-3,  t151(I1),  t43,  3(SI32)
	c0    cmpgt $b0.4 = $r0.2, 4   ## [spec] bblock 24, line 547-4,  t150(I1),  t43,  4(SI32)
	c0    cmpgt $b0.5 = $r0.2, 5   ## [spec] bblock 21, line 547-5,  t149(I1),  t43,  5(SI32)
	c0    cmpgt $b0.6 = $r0.2, 6   ## [spec] bblock 18, line 547-6,  t148(I1),  t43,  6(SI32)
	c0    mov $r0.6 = -1   ## -1(SI32)
;;								## 0
	c0    cmpgt $b0.0 = $r0.2, 7   ## [spec] bblock 15, line 547-7,  t147(I1),  t43,  7(SI32)
	c0    add $r0.2 = $r0.2, -8   ## [spec] bblock 12, line 547-7,  t43,  t43,  -8(SI32)
	c0    brf $b0.0, L167?3   ## bblock 3, line 547,  t143(I1)
;;								## 1
	c0    stw 28[$r0.3] = $r0.6   ## bblock 5, line 548, t78, -1(SI32)
	c0    brf $b0.1, L167?3   ## bblock 5, line 547-1,  t144(I1)
;;								## 2
	c0    stw 24[$r0.3] = $r0.6   ## bblock 30, line 548-1, t78, -1(SI32)
	c0    brf $b0.2, L167?3   ## bblock 30, line 547-2,  t152(I1)
;;								## 3
	c0    stw 20[$r0.3] = $r0.6   ## bblock 27, line 548-2, t78, -1(SI32)
	c0    brf $b0.3, L167?3   ## bblock 27, line 547-3,  t151(I1)
;;								## 4
	c0    stw 16[$r0.3] = $r0.6   ## bblock 24, line 548-3, t78, -1(SI32)
	c0    brf $b0.4, L167?3   ## bblock 24, line 547-4,  t150(I1)
;;								## 5
	c0    stw 12[$r0.3] = $r0.6   ## bblock 21, line 548-4, t78, -1(SI32)
	c0    brf $b0.5, L167?3   ## bblock 21, line 547-5,  t149(I1)
;;								## 6
	c0    stw 8[$r0.3] = $r0.6   ## bblock 18, line 548-5, t78, -1(SI32)
	c0    brf $b0.6, L167?3   ## bblock 18, line 547-6,  t148(I1)
;;								## 7
	c0    stw 4[$r0.3] = $r0.6   ## bblock 15, line 548-6, t78, -1(SI32)
	c0    brf $b0.0, L167?3   ## bblock 15, line 547-7,  t147(I1)
;;								## 8
	c0    stw 0[$r0.3] = $r0.6   ## bblock 12, line 548-7, t78, -1(SI32)
	c0    add $r0.3 = $r0.3, (~0x1f)   ## bblock 12, line 0,  t78,  t78,  (~0x1f)(I32)
	c0    goto L166?3 ## goto
;;								## 9
.trace 7
L167?3:
.return ret()
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 4, line 549,  t30,  ?2.14?2auto_size(I32),  t29
;;								## 0
.trace 8
L163?3:
	c0    add $r0.7 = $r0.7, (~0x7f)   ## bblock 9, line 0,  t45,  t1,  (~0x7f)(I32)
	c0    add $r0.8 = $r0.8, (~0x1f)   ## bblock 9, line 0,  t44,  t2,  (~0x1f)(I32)
	c0    goto L165?3 ## goto
;;								## 0
.trace 6
L162?3:
	c0    add $r0.7 = $r0.7, (~0x3f)   ## bblock 10, line 0,  t45,  t1,  (~0x3f)(I32)
	c0    add $r0.8 = $r0.8, (~0xf)   ## bblock 10, line 0,  t44,  t2,  (~0xf)(I32)
;;								## 0
L165?3:
	c0    add $r0.2 = $r0.8, 16   ## bblock 2, line 547,  t43,  t44,  16(SI32)
	c0    add $r0.3 = $r0.7, (~0x1f)   ## bblock 2, line 0,  t78,  t45,  (~0x1f)(I32)
	c0    goto L166?3 ## goto
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.14?2auto_size, 0x0
 ## End cl_hash
 ## Begin prratio
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:s32,$r0.4:s32)
prratio::
.trace 1
	      ## auto_size == 0
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 571,  t18,  ?2.15?2auto_size(I32),  t17
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.15?2auto_size, 0x0
 ## End prratio
 ## Begin version
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg()
version::
.trace 1
	      ## auto_size == 0
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 576,  t1,  ?2.16?2auto_size(I32),  t0
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.16?2auto_size, 0x0
 ## End version
.section .bss
compress_27933.offset::
    .skip 4
compress_27933.buf::
    .skip 12
.section .data
.skip 1
compress_27933.Buf::
    .data1 47
    .data1 42
    .data1 32
    .data1 82
    .data1 101
    .data1 112
    .data1 108
    .data1 97
    .data1 99
    .data1 101
    .data1 109
    .data1 101
    .data1 110
    .data1 116
    .data1 32
    .data1 114
    .data1 111
    .data1 117
    .data1 116
    .data1 105
    .data1 110
    .data1 101
    .data1 115
    .data1 32
    .data1 102
    .data1 111
    .data1 114
    .data1 32
    .data1 115
    .data1 116
    .data1 97
    .data1 110
    .data1 100
    .data1 97
    .data1 114
    .data1 100
    .data1 32
    .data1 67
    .data1 32
    .data1 114
    .data1 111
    .data1 117
    .data1 116
    .data1 105
    .data1 110
    .data1 101
    .data1 115
    .data1 46
    .data1 32
    .data1 42
    .data1 47
    .data1 0
    .data1 35
    .data1 100
    .data1 101
    .data1 102
    .data1 105
    .data1 110
    .data1 101
    .data1 32
    .data1 67
    .data1 79
    .data1 78
    .data1 83
    .data1 79
    .data1 76
    .data1 69
    .data1 32
    .data1 48
    .data1 0
    .data1 35
    .data1 105
    .data1 102
    .data1 110
    .data1 100
    .data1 101
    .data1 102
    .data1 32
    .data1 83
    .data1 85
    .data1 78
    .data1 0
    .data1 35
    .data1 100
    .data1 101
    .data1 102
    .data1 105
    .data1 110
    .data1 101
    .data1 32
    .data1 115
    .data1 116
    .data1 100
    .data1 101
    .data1 114
    .data1 114
    .data1 32
    .data1 67
    .data1 79
    .data1 78
    .data1 83
    .data1 79
    .data1 76
    .data1 69
    .data1 0
    .data1 35
    .data1 100
    .data1 101
    .data1 102
    .data1 105
    .data1 110
    .data1 101
    .data1 32
    .data1 69
    .data1 79
    .data1 70
    .data1 32
    .data1 40
    .data1 45
    .data1 49
    .data1 41
    .data1 0
    .data1 35
    .data1 101
    .data1 110
    .data1 100
    .data1 105
    .data1 102
    .data1 32
    .data1 47
    .data1 42
    .data1 32
    .data1 83
    .data1 85
    .data1 78
    .data1 32
    .data1 42
    .data1 47
    .data1 0
    .data1 0
    .data1 35
    .data1 105
    .data1 110
    .data1 99
    .data1 108
    .data1 117
    .data1 100
    .data1 101
    .data1 32
    .data1 34
    .data1 98
    .data1 117
    .data1 102
    .data1 46
    .data1 99
    .data1 34
    .data1 0
    .data1 0
    .data1 99
    .data1 104
    .data1 97
    .data1 114
    .data1 42
    .data1 32
    .data1 111
    .data1 117
    .data1 116
    .data1 98
    .data1 117
    .data1 102
    .data1 32
    .data1 61
    .data1 32
    .data1 48
    .data1 59
    .data1 0
    .data1 0
    .data1 105
    .data1 110
    .data1 116
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 99
    .data1 104
    .data1 97
    .data1 114
    .data1 40
    .data1 41
    .data1 0
    .data1 123
    .data1 32
    .data1 115
    .data1 116
    .data1 97
    .data1 116
    .data1 105
    .data1 99
    .data1 32
    .data1 99
    .data1 104
    .data1 97
    .data1 114
    .data1 32
    .data1 42
    .data1 98
    .data1 117
    .data1 102
    .data1 112
    .data1 32
    .data1 61
    .data1 32
    .data1 66
    .data1 117
    .data1 102
    .data1 59
    .data1 0
    .data1 32
    .data1 32
    .data1 115
    .data1 116
    .data1 97
    .data1 116
    .data1 105
    .data1 99
    .data1 32
    .data1 105
    .data1 110
    .data1 116
    .data1 32
    .data1 110
    .data1 32
    .data1 61
    .data1 32
    .data1 66
    .data1 117
    .data1 102
    .data1 108
    .data1 101
    .data1 110
    .data1 59
    .data1 0
    .data1 35
    .data1 105
    .data1 102
    .data1 100
    .data1 101
    .data1 102
    .data1 32
    .data1 84
    .data1 69
    .data1 83
    .data1 84
    .data1 0
    .data1 32
    .data1 32
    .data1 105
    .data1 102
    .data1 32
    .data1 40
    .data1 32
    .data1 110
    .data1 32
    .data1 61
    .data1 61
    .data1 32
    .data1 48
    .data1 32
    .data1 41
    .data1 32
    .data1 123
    .data1 32
    .data1 32
    .data1 32
    .data1 47
    .data1 42
    .data1 32
    .data1 98
    .data1 117
    .data1 102
    .data1 102
    .data1 101
    .data1 114
    .data1 32
    .data1 105
    .data1 115
    .data1 32
    .data1 101
    .data1 109
    .data1 112
    .data1 116
    .data1 121
    .data1 32
    .data1 42
    .data1 47
    .data1 0
    .data1 32
    .data1 32
    .data1 32
    .data1 32
    .data1 110
    .data1 32
    .data1 61
    .data1 32
    .data1 115
    .data1 116
    .data1 114
    .data1 116
    .data1 111
    .data1 108
    .data1 32
    .data1 40
    .data1 32
    .data1 98
    .data1 117
    .data1 102
    .data1 112
    .data1 44
    .data1 32
    .data1 38
    .data1 98
    .data1 117
    .data1 102
    .data1 112
    .data1 44
    .data1 32
    .data1 49
    .data1 48
    .data1 32
    .data1 41
    .data1 59
    .data1 32
    .data1 47
    .data1 42
    .data1 32
    .data1 114
    .data1 101
    .data1 97
    .data1 100
    .data1 32
    .data1 99
    .data1 104
    .data1 97
    .data1 114
    .data1 32
    .data1 115
    .data1 105
    .data1 122
    .data1 101
    .data1 32
    .data1 102
    .data1 114
    .data1 111
    .data1 109
    .data1 32
    .data1 49
    .data1 115
    .data1 116
    .data1 32
    .data1 115
    .data1 116
    .data1 114
    .data1 105
    .data1 110
    .data1 103
    .data1 46
    .data1 32
    .data1 42
    .data1 47
    .data1 0
    .data1 32
    .data1 32
    .data1 32
    .data1 32
    .data1 125
    .data1 0
    .data1 35
    .data1 101
    .data1 110
    .data1 100
    .data1 105
    .data1 102
    .data1 32
    .data1 84
    .data1 69
    .data1 83
    .data1 84
    .data1 0
    .data1 32
    .data1 32
    .data1 114
    .data1 101
    .data1 116
    .data1 117
    .data1 114
    .data1 110
    .data1 32
    .data1 40
    .data1 32
    .data1 45
    .data1 45
    .data1 110
    .data1 32
    .data1 62
    .data1 61
    .data1 32
    .data1 48
    .data1 32
    .data1 41
    .data1 32
    .data1 63
    .data1 32
    .data1 40
    .data1 117
    .data1 110
    .data1 115
    .data1 105
    .data1 103
    .data1 110
    .data1 101
    .data1 100
    .data1 32
    .data1 99
    .data1 104
    .data1 97
    .data1 114
    .data1 41
    .data1 32
    .data1 42
    .data1 98
    .data1 117
    .data1 102
    .data1 112
    .data1 43
    .data1 43
    .data1 32
    .data1 58
    .data1 32
    .data1 69
    .data1 79
    .data1 70
    .data1 59
    .data1 0
    .data1 125
    .data1 32
    .data1 32
    .data1 0
    .data1 0
    .data1 47
    .data1 42
    .data1 118
    .data1 111
    .data1 105
    .data1 100
    .data1 32
    .data1 112
    .data1 117
    .data1 116
    .data1 99
    .data1 104
    .data1 97
    .data1 114
    .data1 32
    .data1 40
    .data1 32
    .data1 99
    .data1 41
    .data1 0
    .data1 32
    .data1 32
    .data1 99
    .data1 104
    .data1 97
    .data1 114
    .data1 32
    .data1 99
    .data1 59
    .data1 0
    .data1 123
    .data1 32
    .data1 0
    .data1 32
    .data1 32
    .data1 102
    .data1 112
    .data1 114
    .data1 105
    .data1 110
    .data1 116
    .data1 102
    .data1 40
    .data1 115
    .data1 116
    .data1 100
    .data1 101
    .data1 114
    .data1 114
    .data1 44
    .data1 34
    .data1 112
    .data1 117
    .data1 116
    .data1 99
    .data1 104
    .data1 97
    .data1 114
    .data1 58
    .data1 32
    .data1 99
    .data1 32
    .data1 61
    .data1 32
    .data1 37
    .data1 120
    .data1 32
    .data1 92
    .data1 110
    .data1 34
    .data1 44
    .data1 32
    .data1 99
    .data1 41
    .data1 59
    .data1 0
    .data1 32
    .data1 32
    .data1 42
    .data1 111
    .data1 117
    .data1 116
    .data1 98
    .data1 117
    .data1 102
    .data1 43
    .data1 43
    .data1 32
    .data1 61
    .data1 32
    .data1 99
    .data1 59
    .data1 0
    .data1 125
    .data1 0
    .data1 32
    .data1 42
    .data1 47
    .data1 0
    .data1 35
    .data1 105
    .data1 102
    .data1 110
    .data1 100
    .data1 101
    .data1 102
    .data1 32
    .data1 83
    .data1 85
    .data1 78
    .data1 0
    .data1 118
    .data1 111
    .data1 105
    .data1 100
    .data1 32
    .data1 101
    .data1 120
    .data1 105
    .data1 116
    .data1 40
    .data1 32
    .data1 120
    .data1 32
    .data1 41
    .data1 0
    .data1 32
    .data1 32
    .data1 105
    .data1 110
    .data1 116
    .data1 32
    .data1 120
    .data1 59
    .data1 0
    .data1 123
    .data1 0
    .data1 32
    .data1 32
    .data1 102
    .data1 112
    .data1 114
    .data1 105
    .data1 110
    .data1 116
    .data1 102
    .data1 32
    .data1 40
    .data1 115
    .data1 116
    .data1 100
    .data1 101
    .data1 114
    .data1 114
    .data1 44
    .data1 32
    .data1 34
    .data1 101
    .data1 120
    .data1 105
    .data1 116
    .data1 40
    .data1 48
    .data1 120
    .data1 37
    .data1 120
    .data1 41
    .data1 92
    .data1 110
    .data1 34
    .data1 44
    .data1 32
    .data1 120
    .data1 41
    .data1 59
    .data1 0
    .data1 35
    .data1 105
    .data1 102
    .data1 100
    .data1 101
    .data1 102
    .data1 32
    .data1 88
    .data1 73
    .data1 78
    .data1 85
    .data1 0
    .data1 32
    .data1 32
    .data1 117
    .data1 115
    .data1 101
    .data1 114
    .data1 114
    .data1 101
    .data1 116
    .data1 40
    .data1 41
    .data1 59
    .data1 32
    .data1 32
    .data1 32
    .data1 32
    .data1 32
    .data1 32
    .data1 32
    .data1 32
    .data1 32
    .data1 32
    .data1 32
    .data1 32
    .data1 32
    .data1 32
    .data1 32
    .data1 47
    .data1 42
    .data1 32
    .data1 77
    .data1 117
    .data1 115
    .data1 116
    .data1 32
    .data1 108
    .data1 105
    .data1 110
    .data1 107
    .data1 32
    .data1 119
    .data1 105
    .data1 116
    .data1 104
    .data1 32
    .data1 88
    .data1 73
    .data1 78
    .data1 85
    .data1 63
    .data1 32
    .data1 42
    .data1 47
    .data1 0
    .data1 35
    .data1 101
    .data1 110
    .data1 100
    .data1 105
    .data1 102
    .data1 32
    .data1 47
    .data1 42
    .data1 32
    .data1 88
    .data1 73
    .data1 78
    .data1 85
    .data1 32
    .data1 42
    .data1 47
    .data1 0
    .data1 125
    .data1 0
    .data1 32
    .data1 0
    .data1 105
    .data1 110
    .data1 116
    .data1 32
    .data1 112
    .data1 117
    .data1 116
    .data1 99
    .data1 40
    .data1 32
    .data1 100
    .data1 101
    .data1 118
    .data1 44
    .data1 32
    .data1 32
    .data1 99
    .data1 41
    .data1 32
    .data1 32
    .data1 32
    .data1 47
    .data1 42
    .data1 32
    .data1 112
    .data1 117
    .data1 116
    .data1 99
    .data1 32
    .data1 100
    .data1 101
    .data1 102
    .data1 105
    .data1 110
    .data1 101
    .data1 100
    .data1 32
    .data1 98
    .data1 117
    .data1 32
    .data1 88
    .data1 73
    .data1 78
    .data1 85
    .data1 46
    .data1 32
    .data1 42
    .data1 47
    .data1 0
    .data1 32
    .data1 32
    .data1 105
    .data1 110
    .data1 116
    .data1 32
    .data1 100
    .data1 101
    .data1 118
    .data1 59
    .data1 0
    .data1 32
    .data1 32
    .data1 99
    .data1 104
    .data1 97
    .data1 114
    .data1 32
    .data1 99
    .data1 59
    .data1 0
    .data1 123
    .data1 0
    .data1 47
    .data1 42
    .data1 32
    .data1 105
    .data1 102
    .data1 32
    .data1 40
    .data1 100
    .data1 101
    .data1 118
    .data1 32
    .data1 61
    .data1 61
    .data1 32
    .data1 67
    .data1 79
    .data1 78
    .data1 83
    .data1 79
    .data1 76
    .data1 69
    .data1 41
    .data1 32
    .data1 32
    .data1 42
    .data1 47
    .data1 0
    .data1 125
    .data1 0
    .data1 35
    .data1 101
    .data1 110
    .data1 100
    .data1 105
    .data1 102
    .data1 32
    .data1 47
    .data1 42
    .data1 32
    .data1 83
    .data1 85
    .data1 78
    .data1 32
    .data1 42
    .data1 47
    .data1 0
    .data1 120
    .data1 102
    .data1 102
    .data1 0
    .data1 120
    .data1 102
    .data1 102
    .data1 0
    .data1 120
    .data1 102
    .data1 102
    .data1 0
    .data1 120
    .data1 102
    .data1 102
    .data1 0
    .data1 120
    .data1 102
    .data1 102
    .data1 0
    .data1 120
    .data1 102
    .data1 102
    .data1 0
    .data1 120
    .data1 102
    .data1 102
    .data1 0
    .data1 120
    .data1 102
    .data1 102
    .data1 0
    .data1 0
compress_27933.rcs_ident::
    .data1 72
    .data1 101
    .data1 97
    .data1 100
    .data1 101
    .data1 114
    .data1 58
    .data1 32
    .data1 99
    .data1 111
    .data1 109
    .data1 112
    .data1 114
    .data1 101
    .data1 115
    .data1 115
    .data1 46
    .data1 99
    .data1 44
    .data1 118
    .data1 32
    .data1 0
.skip 2
do_decomp::
    .data4 0
quiet::
    .data4 1
nomagic::
    .data4 0
block_compress::
    .data4 128
zcat_flg::
    .data4 0
maxbits::
    .data4 12
maxmaxcode::
    .data4 4096
hsize::
    .data4 5003
magic_header::
    .data1 31
    .data1 -99
    .data1 0
.skip 1
free_ent::
    .data4 0
checkpoint::
    .data4 10000
in_count::
    .data4 1
ratio::
    .data4 0
clear_flg::
    .data4 0
out_count::
    .data4 0
exit_stat::
    .data4 0
lmask::
    .data1 255
    .data1 254
    .data1 252
    .data1 248
    .data1 240
    .data1 224
    .data1 192
    .data1 128
    .data1 0
.skip 3
rmask::
    .data1 0
    .data1 1
    .data1 3
    .data1 7
    .data1 15
    .data1 31
    .data1 63
    .data1 127
    .data1 255
.skip 3
force::
    .data4 0
.section .data
.comm bytes_out, 0x4, 4
.comm bgnd_flag, 0x4, 4
.comm fsize, 0x4, 4
.comm codetab, 0x2716, 4
.comm htab, 0x4e2c, 4
.comm maxcode, 0x4, 4
.comm n_bits, 0x4, 4
.comm buflen, 0x4, 4
.comm bufp, 0x4, 4
.comm outbuf, 0x4, 4
.comm CompBuf, 0x320, 4
.comm UnComp, 0x348, 4
.section .text
.import _bcopy
.type _bcopy,@function
.import prratio
.type prratio,@function
.import cl_block
.type cl_block,@function
.import output
.type output,@function
.import cl_hash
.type cl_hash,@function
.import decompress
.type decompress,@function
.import compressf
.type compressf,@function
.import version
.type version,@function
.import rindex
.type rindex,@function
.import Usage
.type Usage,@function
.import compressgetcode
.type compressgetcode,@function
.import puts
.type puts,@function
.import Compress
.type Compress,@function
