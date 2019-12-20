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
 ## Begin NOP
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg()
NOP::
.trace 1
	      ## auto_size == 0
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 42,  t1,  ?2.1?2auto_size(I32),  t0
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.1?2auto_size, 0x0
 ## End NOP
.equ _?1TEMPLATEPACKET.5, 0x0
 ## Begin main
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg()
main::
.trace 3
	c0    add $r0.1 = $r0.1, (-0x20)
;;								## 0
.call NOP, caller, arg(), ret($r0.3:s32)
	c0    call $l0.0 = NOP   ## bblock 0, line 48,  raddr(NOP)(P32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t154
;;								## 1
	c0    mov $r0.2 = (src + 0)   ## bblock 1, line 49,  t169,  addr(src?1.0)(P32)
	c0    mov $r0.4 = (dst + 0)   ## bblock 1, line 49,  t168,  addr(dst?1.0)(P32)
	c0    mov $r0.5 = $r0.0   ## bblock 1, line 47,  t165,  0(SI32)
	c0    ldw $r0.19 = 0x10[$r0.1]  ## restore ## t154
;;								## 2
;;								## 3
.trace 1
L0?3:
	c0    ldw $r0.3 = 0[$r0.2]   ## bblock 2, line 49, t6, t169
;;								## 0
	c0    ldw.d $r0.6 = 0[$r0.4]   ## [spec] bblock 8, line 51, t13, t168
;;								## 1
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 2, line 49,  t171(I1),  t6,  0(SI32)
	c0    ldw.d $r0.7 = 12[$r0.4]   ## [spec] bblock 8, line 69, t115, t168
;;								## 2
	c0    xor $r0.3 = $r0.3, $r0.6   ## [spec] bblock 8, line 51,  t38,  t6,  t13
	c0    ldw.d $r0.6 = 12[$r0.2]   ## [spec] bblock 8, line 69, t118, t169
	c0    brf $b0.0, L1?3   ## bblock 2, line 49,  t171(I1)
;;								## 3
	c0    and $r0.8 = $r0.3, 255   ## bblock 8, line 52,  t20,  t38,  255(I32)
	c0    shru $r0.11 = $r0.3, 8   ## bblock 8, line 53,  t25(I24),  t38,  8(SI32)
	c0    shru $r0.10 = $r0.3, 16   ## bblock 8, line 54,  t32(I16),  t38,  16(SI32)
	c0    shru $r0.3 = $r0.3, 24   ## bblock 8, line 55,  t39(I8),  t38,  24(SI32)
	c0    ldw $r0.9 = 4[$r0.4]   ## bblock 8, line 57, t47, t168
;;								## 4
	c0    ldbu $r0.8 = (poptab + 0)[$r0.8]   ## bblock 8, line 52, t22, t20
	c0    and $r0.11 = $r0.11, 255   ## bblock 8, line 53,  t26,  t25(I24),  255(I32)
	c0    and $r0.10 = $r0.10, 255   ## bblock 8, line 54,  t33,  t32(I16),  255(I32)
	c0    xor $r0.7 = $r0.7, $r0.6   ## bblock 8, line 69,  t140,  t115,  t118
;;								## 5
	c0    ldw $r0.12 = 4[$r0.2]   ## bblock 8, line 57, t50, t169
	c0    and $r0.7 = $r0.7, 255   ## bblock 8, line 70,  t122,  t140,  255(I32)
	c0    shru $r0.13 = $r0.7, 8   ## bblock 8, line 71,  t127(I24),  t140,  8(SI32)
	c0    shru $r0.14 = $r0.7, 16   ## bblock 8, line 72,  t134(I16),  t140,  16(SI32)
	c0    shru $r0.6 = $r0.7, 24   ## bblock 8, line 73,  t141(I8),  t140,  24(SI32)
;;								## 6
	c0    and $r0.13 = $r0.13, 255   ## bblock 8, line 71,  t128,  t127(I24),  255(I32)
	c0    and $r0.14 = $r0.14, 255   ## bblock 8, line 72,  t135,  t134(I16),  255(I32)
	c0    ldbu $r0.6 = (poptab + 0)[$r0.6]   ## bblock 8, line 73, t142(I8), t141(I8)
;;								## 7
	c0    xor $r0.9 = $r0.9, $r0.12   ## bblock 8, line 57,  t72,  t47,  t50
	c0    ldw $r0.12 = 8[$r0.4]   ## bblock 8, line 63, t81, t168
	c0    add $r0.4 = $r0.4, 16   ## bblock 8, line 49,  t168,  t168,  16(SI32)
;;								## 8
	c0    and $r0.9 = $r0.9, 255   ## bblock 8, line 58,  t54,  t72,  255(I32)
	c0    shru $r0.16 = $r0.9, 8   ## bblock 8, line 59,  t59(I24),  t72,  8(SI32)
	c0    shru $r0.17 = $r0.9, 16   ## bblock 8, line 60,  t66(I16),  t72,  16(SI32)
	c0    shru $r0.6 = $r0.9, 24   ## bblock 8, line 61,  t73(I8),  t72,  24(SI32)
	c0    ldw $r0.15 = 8[$r0.2]   ## bblock 8, line 63, t84, t169
	c0    add $r0.8 = $r0.8, $r0.6   ## bblock 8, line 74,  t172,  t22,  t142(I8)
	c0    add $r0.2 = $r0.2, 16   ## bblock 8, line 49,  t169,  t169,  16(SI32)
;;								## 9
	c0    and $r0.16 = $r0.16, 255   ## bblock 8, line 59,  t60,  t59(I24),  255(I32)
	c0    and $r0.17 = $r0.17, 255   ## bblock 8, line 60,  t67,  t66(I16),  255(I32)
	c0    ldbu $r0.6 = (poptab + 0)[$r0.6]   ## bblock 8, line 61, t74(I8), t73(I8)
;;								## 10
	c0    ldbu $r0.10 = (poptab + 0)[$r0.10]   ## bblock 8, line 54, t34(I8), t33
	c0    xor $r0.12 = $r0.12, $r0.15   ## bblock 8, line 63,  t106,  t81,  t84
;;								## 11
	c0    and $r0.18 = $r0.12, 255   ## bblock 8, line 64,  t88,  t106,  255(I32)
	c0    shru $r0.15 = $r0.12, 8   ## bblock 8, line 65,  t93(I24),  t106,  8(SI32)
	c0    shru $r0.12 = $r0.12, 16   ## bblock 8, line 66,  t100(I16),  t106,  16(SI32)
	c0    shru $r0.6 = $r0.12, 24   ## bblock 8, line 67,  t107(I8),  t106,  24(SI32)
	c0    ldbu $r0.13 = (poptab + 0)[$r0.13]   ## bblock 8, line 71, t129(I8), t128
	c0    add $r0.8 = $r0.8, $r0.6   ## bblock 8, line 74,  t180,  t172,  t74(I8)
;;								## 12
	c0    and $r0.15 = $r0.15, 255   ## bblock 8, line 65,  t94,  t93(I24),  255(I32)
	c0    and $r0.12 = $r0.12, 255   ## bblock 8, line 66,  t101,  t100(I16),  255(I32)
	c0    ldbu $r0.6 = (poptab + 0)[$r0.6]   ## bblock 8, line 67, t108(I8), t107(I8)
;;								## 13
	c0    ldbu $r0.16 = (poptab + 0)[$r0.16]   ## bblock 8, line 59, t61(I8), t60
	c0    add $r0.10 = $r0.10, $r0.13   ## bblock 8, line 74,  t174,  t34(I8),  t129(I8)
;;								## 14
	c0    ldbu $r0.15 = (poptab + 0)[$r0.15]   ## bblock 8, line 65, t95(I8), t94
	c0    add $r0.5 = $r0.5, $r0.6   ## bblock 8, line 74,  t176,  t165,  t108(I8)
;;								## 15
	c0    ldbu $r0.11 = (poptab + 0)[$r0.11]   ## bblock 8, line 53, t27(I8), t26
	c0    add $r0.8 = $r0.8, $r0.5   ## bblock 8, line 74,  t184,  t180,  t176
;;								## 16
	c0    ldbu $r0.14 = (poptab + 0)[$r0.14]   ## bblock 8, line 72, t136(I8), t135
	c0    add $r0.16 = $r0.16, $r0.15   ## bblock 8, line 74,  t178,  t61(I8),  t95(I8)
;;								## 17
	c0    ldbu $r0.17 = (poptab + 0)[$r0.17]   ## bblock 8, line 60, t68(I8), t67
	c0    add $r0.10 = $r0.10, $r0.16   ## bblock 8, line 74,  t182,  t174,  t178
;;								## 18
	c0    ldbu $r0.18 = (poptab + 0)[$r0.18]   ## bblock 8, line 64, t90, t88
	c0    add $r0.11 = $r0.11, $r0.14   ## bblock 8, line 74,  t173,  t27(I8),  t136(I8)
	c0    add $r0.8 = $r0.8, $r0.10   ## bblock 8, line 74,  t186,  t184,  t182
;;								## 19
	c0    ldbu $r0.12 = (poptab + 0)[$r0.12]   ## bblock 8, line 66, t102(I8), t101
;;								## 20
	c0    ldbu $r0.9 = (poptab + 0)[$r0.9]   ## bblock 8, line 58, t56, t54
	c0    add $r0.17 = $r0.17, $r0.18   ## bblock 8, line 74,  t179,  t68(I8),  t90
;;								## 21
	c0    ldbu $r0.3 = (poptab + 0)[$r0.3]   ## bblock 8, line 55, t40(I8), t39(I8)
	c0    add $r0.11 = $r0.11, $r0.17   ## bblock 8, line 74,  t181,  t173,  t179
;;								## 22
	c0    ldbu $r0.7 = (poptab + 0)[$r0.7]   ## bblock 8, line 70, t124, t122
	c0    add $r0.9 = $r0.9, $r0.12   ## bblock 8, line 74,  t177,  t56,  t102(I8)
;;								## 23
;;								## 24
	c0    add $r0.3 = $r0.3, $r0.7   ## bblock 8, line 74,  t175,  t40(I8),  t124
;;								## 25
	c0    add $r0.3 = $r0.3, $r0.9   ## bblock 8, line 74,  t183,  t175,  t177
;;								## 26
	c0    add $r0.11 = $r0.11, $r0.3   ## bblock 8, line 74,  t185,  t181,  t183
;;								## 27
	c0    add $r0.5 = $r0.8, $r0.11   ## bblock 8, line 74,  t165,  t186,  t185
	c0    goto L0?3 ## goto
;;								## 28
.trace 4
L1?3:
	c0    cmpne $b0.0 = $r0.5, 514   ## bblock 9, line 76,  t187(I1),  t165,  514(SI32)
	c0    mov $r0.3 = (_?1STRINGPACKET.1 + 0)   ## addr(_?1STRINGVAR.1)(P32)
	c0    stw 0x10[$r0.1] = $r0.19  ## spill ## t154
;;								## 0
	c0    brf $b0.0, L2?3   ## bblock 9, line 76,  t187(I1)
;;								## 1
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 6, line 78,  raddr(puts)(P32),  addr(_?1STRINGVAR.1)(P32)
;;								## 2
	c0    mov $r0.3 = 1   ## 1(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t154
;;								## 3
;;								## 4
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 7, line 79,  t155,  ?2.2?2auto_size(I32),  t154
;;								## 5
.trace 5
L2?3:
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 4, line 83,  raddr(puts)(P32),  addr(_?1STRINGVAR.2)(P32)
	c0    mov $r0.3 = (_?1STRINGPACKET.2 + 0)   ## addr(_?1STRINGVAR.2)(P32)
;;								## 0
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t154
;;								## 1
;;								## 2
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 5, line 84,  t155,  ?2.2?2auto_size(I32),  t154
;;								## 3
.endp
.section .bss
.section .data
_?1STRINGPACKET.1:
    .data1 98
    .data1 99
    .data1 110
    .data1 116
    .data1 58
    .data1 32
    .data1 102
    .data1 97
    .data1 105
    .data1 108
    .data1 101
    .data1 100
    .data1 10
    .data1 0
.skip 2
_?1STRINGPACKET.2:
    .data1 98
    .data1 99
    .data1 110
    .data1 116
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
.equ ?2.2?2scratch.0, 0x0
.equ ?2.2?2ras_p, 0x10
.section .data
.section .text
.equ ?2.2?2auto_size, 0x20
 ## End main
.section .bss
.section .data
.skip 1
src::
    .data4 22136
    .data4 305397760
    .data4 33818120
    .data4 1
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 22136
    .data4 305397760
    .data4 33818120
    .data4 1
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 22136
    .data4 305397760
    .data4 33818120
    .data4 1
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 22136
    .data4 305397760
    .data4 33818120
    .data4 1
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 22136
    .data4 305397760
    .data4 33818120
    .data4 1
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 22136
    .data4 305397760
    .data4 33818120
    .data4 1
    .data4 269488144
    .data4 305419896
    .data4 269488144
    .data4 305419896
    .data4 22136
    .data4 305397760
    .data4 33818120
    .data4 1
    .data4 269488144
    .data4 305419896
    .data4 269488144
    .data4 305419896
    .data4 22136
    .data4 305397760
    .data4 33818120
    .data4 1
    .data4 269488144
    .data4 305419896
    .data4 269488144
    .data4 305419896
    .data4 0
    .data4 0:959
poptab::
    .data1 0
    .data1 1
    .data1 1
    .data1 2
    .data1 1
    .data1 2
    .data1 2
    .data1 3
    .data1 1
    .data1 2
    .data1 2
    .data1 3
    .data1 2
    .data1 3
    .data1 3
    .data1 4
    .data1 1
    .data1 2
    .data1 2
    .data1 3
    .data1 2
    .data1 3
    .data1 3
    .data1 4
    .data1 2
    .data1 3
    .data1 3
    .data1 4
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 1
    .data1 2
    .data1 2
    .data1 3
    .data1 2
    .data1 3
    .data1 3
    .data1 4
    .data1 2
    .data1 3
    .data1 3
    .data1 4
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 2
    .data1 3
    .data1 3
    .data1 4
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 4
    .data1 5
    .data1 5
    .data1 6
    .data1 1
    .data1 2
    .data1 2
    .data1 3
    .data1 2
    .data1 3
    .data1 3
    .data1 4
    .data1 2
    .data1 3
    .data1 3
    .data1 4
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 2
    .data1 3
    .data1 3
    .data1 4
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 4
    .data1 5
    .data1 5
    .data1 6
    .data1 2
    .data1 3
    .data1 3
    .data1 4
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 4
    .data1 5
    .data1 5
    .data1 6
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 4
    .data1 5
    .data1 5
    .data1 6
    .data1 4
    .data1 5
    .data1 5
    .data1 6
    .data1 5
    .data1 6
    .data1 6
    .data1 7
    .data1 1
    .data1 2
    .data1 2
    .data1 3
    .data1 2
    .data1 3
    .data1 3
    .data1 4
    .data1 2
    .data1 3
    .data1 3
    .data1 4
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 2
    .data1 3
    .data1 3
    .data1 4
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 4
    .data1 5
    .data1 5
    .data1 6
    .data1 2
    .data1 3
    .data1 3
    .data1 4
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 4
    .data1 5
    .data1 5
    .data1 6
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 4
    .data1 5
    .data1 5
    .data1 6
    .data1 4
    .data1 5
    .data1 5
    .data1 6
    .data1 5
    .data1 6
    .data1 6
    .data1 7
    .data1 2
    .data1 3
    .data1 3
    .data1 4
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 4
    .data1 5
    .data1 5
    .data1 6
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 4
    .data1 5
    .data1 5
    .data1 6
    .data1 4
    .data1 5
    .data1 5
    .data1 6
    .data1 5
    .data1 6
    .data1 6
    .data1 7
    .data1 3
    .data1 4
    .data1 4
    .data1 5
    .data1 4
    .data1 5
    .data1 5
    .data1 6
    .data1 4
    .data1 5
    .data1 5
    .data1 6
    .data1 5
    .data1 6
    .data1 6
    .data1 7
    .data1 4
    .data1 5
    .data1 5
    .data1 6
    .data1 5
    .data1 6
    .data1 6
    .data1 7
    .data1 5
    .data1 6
    .data1 6
    .data1 7
    .data1 6
    .data1 7
    .data1 7
    .data1 8
.section .data
.comm dst, 0x1000, 4
.section .text
.import puts
.type puts,@function
.import NOP
.type NOP,@function
