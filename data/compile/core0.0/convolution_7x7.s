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
 ## Begin max
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:s32,$r0.4:s32)
max::
.trace 1
	      ## auto_size == 0
	c0    cmpgt $b0.0 = $r0.3, $r0.4   ## bblock 0, line 19,  t19(I1),  t17,  t18
;;								## 0
	c0    brf $b0.0, L0?3   ## bblock 0, line 19,  t19(I1)
;;								## 1
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 19,  t5,  ?2.1?2auto_size(I32),  t4
;;								## 2
.trace 2
L0?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 1, line 20,  t5,  ?2.1?2auto_size(I32),  t4
	c0    mov $r0.3 = $r0.4   ## t18
;;								## 0
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.1?2auto_size, 0x0
 ## End max
 ## Begin min
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:s32,$r0.4:s32)
min::
.trace 1
	      ## auto_size == 0
	c0    cmplt $b0.0 = $r0.3, $r0.4   ## bblock 0, line 25,  t19(I1),  t17,  t18
;;								## 0
	c0    brf $b0.0, L1?3   ## bblock 0, line 25,  t19(I1)
;;								## 1
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 25,  t5,  ?2.2?2auto_size(I32),  t4
;;								## 2
.trace 2
L1?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 1, line 26,  t5,  ?2.2?2auto_size(I32),  t4
	c0    mov $r0.3 = $r0.4   ## t18
;;								## 0
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.2?2auto_size, 0x0
 ## End min
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
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 46,  t1,  ?2.3?2auto_size(I32),  t0
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.3?2auto_size, 0x0
 ## End NOP
.equ _?1TEMPLATEPACKET.5, 0x0
 ## Begin main
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg()
main::
.trace 11
	c0    add $r0.1 = $r0.1, (-0x20)
;;								## 0
.call NOP, caller, arg(), ret($r0.3:s32)
	c0    call $l0.0 = NOP   ## bblock 0, line 64,  raddr(NOP)(P32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t129
;;								## 1
	c0    mov $r0.2 = (~0xfff)   ## bblock 1, line 0,  t648,  (~0xfff)(I32)
	c0    mov $r0.3 = (conv7_result + 0)   ## bblock 1, line 0,  t647,  addr(conv7_result?1.0)(P32)
	c0    ldw $r0.4 = 0x10[$r0.1]  ## restore ## t129
;;								## 2
;;								## 3
.trace 7
L2?3:
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 2, line 88,  t760(I1),  t648,  0(SI32)
	c0    add $r0.2 = $r0.2, 8   ## [spec] bblock 35, line 0,  t648,  t648,  8(I32)
;;								## 0
	c0    brf $b0.0, L3?3   ## bblock 2, line 88,  t760(I1)
;;								## 1
	c0    stw 0[$r0.3] = $r0.0   ## bblock 35, line 89, t647, 0(SI32)
;;								## 2
	c0    stw 4[$r0.3] = $r0.0   ## bblock 35, line 89-1, t647, 0(SI32)
;;								## 3
	c0    stw 8[$r0.3] = $r0.0   ## bblock 35, line 89-2, t647, 0(SI32)
;;								## 4
	c0    stw 12[$r0.3] = $r0.0   ## bblock 35, line 89-3, t647, 0(SI32)
;;								## 5
	c0    stw 16[$r0.3] = $r0.0   ## bblock 35, line 89-4, t647, 0(SI32)
;;								## 6
	c0    stw 20[$r0.3] = $r0.0   ## bblock 35, line 89-5, t647, 0(SI32)
;;								## 7
	c0    stw 24[$r0.3] = $r0.0   ## bblock 35, line 89-6, t647, 0(SI32)
;;								## 8
	c0    stw 28[$r0.3] = $r0.0   ## bblock 35, line 89-7, t647, 0(SI32)
	c0    add $r0.3 = $r0.3, 32   ## bblock 35, line 0,  t647,  t647,  32(I32)
	c0    goto L2?3 ## goto
;;								## 9
.trace 12
L3?3:
	c0    mov $r0.3 = (~0x39)   ## bblock 3, line 0,  t576,  (~0x39)(I32)
	c0    mov $r0.13 = $r0.0   ## bblock 3, line 0,  t572,  0(I32)
	c0    mov $r0.33 = ((conv7_result + 0) + 780)   ## bblock 3, line 0,  t575,  (addr(conv7_result?1.0)(P32) + 0x30c(I32))(P32)
	c0    mov $r0.35 = $r0.4   ## t129
;;								## 0
.trace 8
L4?3:
	c0    cmplt $b0.0 = $r0.3, $r0.0   ## bblock 4, line 95,  t761(I1),  t576,  0(SI32)
	c0    mov $r0.4 = $r0.0   ## [spec] bblock 7, line 0,  t534,  0(I32)
	c0    mov $r0.2 = (~0x39)   ## [spec] bblock 7, line 0,  t537,  (~0x39)(I32)
	c0    mov $r0.34 = $r0.3   ## t576
;;								## 0
	c0    brf $b0.0, L5?3   ## bblock 4, line 95,  t761(I1)
;;								## 1
.trace 5
L6?3:
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 8, line 96,  t762(I1),  t537,  0(SI32)
	c0    mov $r0.3 = (~0x6)   ## [spec] bblock 10, line 0,  t491,  (~0x6)(I32)
	c0    mov $r0.15 = (filter7x7 + 0)   ## [spec] bblock 10, line 0,  t488,  addr(filter7x7?1.0)(P32)
	c0    mov $r0.12 = $r0.4   ## [spec] bblock 10, line 0,  t490,  t534
	c0    mov $r0.6 = $r0.0   ## [spec] bblock 10, line 98,  t154,  0(SI32)
	c0    mov $r0.5 = $r0.0   ## [spec] bblock 10, line 98,  t153,  0(SI32)
	c0    mov $r0.9 = $r0.0   ## [spec] bblock 10, line 98,  t152,  0(SI32)
;;								## 0
	c0    mov $r0.31 = $r0.2   ## t537
	c0    mov $r0.32 = $r0.4   ## t534
	c0    brf $b0.0, L7?3   ## bblock 8, line 96,  t762(I1)
;;								## 1
.trace 3
L8?3:
	c0    cmplt $b0.0 = $r0.3, $r0.0   ## bblock 11, line 102,  t763(I1),  t491,  0(SI32)
	c0    add $r0.14 = $r0.12, $r0.13   ## [spec] bblock 31, line 0,  t356,  t490,  t572
	c0    mov $r0.4 = $r0.15   ## [spec] bblock 31, line 0,  t313,  t488
	c0    mov $r0.10 = $r0.0   ## [spec] bblock 31, line 104,  t190,  0(SI32)
	c0    mov $r0.7 = $r0.0   ## [spec] bblock 31, line 104,  t205,  0(SI32)
	c0    mov $r0.8 = $r0.0   ## [spec] bblock 31, line 104,  t204,  0(SI32)
	c0    mov $r0.11 = (~0x3)   ## [spec] bblock 31, line 0,  t314,  (~0x3)(I32)
	c0    mov $r0.27 = $r0.3   ## t491
;;								## 0
	c0    add $r0.14 = $r0.14, (conv7_image + 0)   ## [spec] bblock 31, line 0,  t324,  t356,  addr(conv7_image?1.0)(P32)
	c0    mov $r0.28 = $r0.12   ## t490
	c0    mov $r0.29 = $r0.13   ## t572
	c0    mov $r0.30 = $r0.15   ## t488
	c0    brf $b0.0, L9?3   ## bblock 11, line 102,  t763(I1)
;;								## 1
	c0    mov $r0.2 = $r0.14   ## bblock 31, line 0,  t312,  t324
;;								## 2
.trace 1
L10?3:
	c0    ldw $r0.3 = 0[$r0.2]   ## bblock 32, line 111, t228, t312
	c0    cmplt $b0.0 = $r0.11, $r0.0   ## bblock 32, line 104-3,  t814(I1),  t314,  0(SI32)
	c0    add $r0.11 = $r0.11, 4   ## [spec] bblock 41, line 0,  t314,  t314,  4(I32)
;;								## 0
	c0    ldw $r0.12 = 0[$r0.4]   ## bblock 32, line 111, t225, t313
;;								## 1
	c0    shru $r0.15 = $r0.3, 16   ## bblock 32, line 111,  t229(I16),  t228,  16(SI32)
	c0    and $r0.3 = $r0.3, 255   ## bblock 32, line 113,  t232,  t228,  255(I32)
	c0    shru $r0.13 = $r0.3, 8   ## bblock 32, line 112,  t236(I24),  t228,  8(SI32)
	c0    ldw $r0.14 = 512[$r0.2]   ## bblock 32, line 111-2, t78, t312
;;								## 2
	c0    ldw $r0.16 = 8[$r0.4]   ## bblock 32, line 111-2, t246, t313
	c0    and $r0.15 = $r0.15, 255   ## bblock 32, line 111,  t230,  t229(I16),  255(I32)
	c0    mpylu $r0.17 = $r0.12, $r0.3   ## bblock 32, line 113,  t768,  t225,  t232
	c0    mpyhs $r0.3 = $r0.12, $r0.3   ## bblock 32, line 113,  t769,  t225,  t232
	c0    and $r0.13 = $r0.13, 255   ## bblock 32, line 112,  t237,  t236(I24),  255(I32)
;;								## 3
	c0    mpylu $r0.20 = $r0.12, $r0.15   ## bblock 32, line 111,  t766,  t225,  t230
	c0    mpyhs $r0.12 = $r0.12, $r0.15   ## bblock 32, line 111,  t767,  t225,  t230
	c0    mpylu $r0.18 = $r0.12, $r0.13   ## bblock 32, line 112,  t776,  t225,  t237
	c0    mpyhs $r0.13 = $r0.12, $r0.13   ## bblock 32, line 112,  t777,  t225,  t237
	c0    ldw $r0.21 = 256[$r0.2]   ## bblock 32, line 111-1, t270, t312
	c0    shru $r0.15 = $r0.14, 16   ## bblock 32, line 111-2,  t43(I16),  t78,  16(SI32)
	c0    shru $r0.19 = $r0.14, 8   ## bblock 32, line 112-2,  t61(I24),  t78,  8(SI32)
;;								## 4
	c0    add $r0.17 = $r0.17, $r0.3   ## bblock 32, line 113,  t233,  t768,  t769
	c0    ldw $r0.22 = 4[$r0.4]   ## bblock 32, line 111-1, t265, t313
	c0    and $r0.15 = $r0.15, 255   ## bblock 32, line 111-2,  t44,  t43(I16),  255(I32)
	c0    and $r0.14 = $r0.14, 255   ## bblock 32, line 113-2,  t79,  t78,  255(I32)
	c0    and $r0.19 = $r0.19, 255   ## bblock 32, line 112-2,  t62,  t61(I24),  255(I32)
;;								## 5
	c0    add $r0.20 = $r0.20, $r0.12   ## bblock 32, line 111,  t231,  t766,  t767
	c0    add $r0.18 = $r0.18, $r0.13   ## bblock 32, line 112,  t238,  t776,  t777
	c0    shru $r0.23 = $r0.21, 16   ## bblock 32, line 111-1,  t271(I16),  t270,  16(SI32)
	c0    shru $r0.13 = $r0.21, 8   ## bblock 32, line 112-1,  t278(I24),  t270,  8(SI32)
	c0    mpylu $r0.12 = $r0.16, $r0.15   ## bblock 32, line 111-2,  t796,  t246,  t44
	c0    mpyhs $r0.15 = $r0.16, $r0.15   ## bblock 32, line 111-2,  t797,  t246,  t44
	c0    mpylu $r0.3 = $r0.16, $r0.19   ## bblock 32, line 112-2,  t806,  t246,  t62
	c0    mpyhs $r0.19 = $r0.16, $r0.19   ## bblock 32, line 112-2,  t807,  t246,  t62
;;								## 6
	c0    cmplt $b0.2 = $r0.20, $r0.0   ## bblock 32, line 111,  t770,  t231,  0(I32)
	c0    add $r0.25 = $r0.20, 255   ## bblock 32, line 111,  t771,  t231,  255(I32)
	c0    cmplt $b0.3 = $r0.17, $r0.0   ## bblock 32, line 113,  t773,  t233,  0(I32)
	c0    add $r0.26 = $r0.17, 255   ## bblock 32, line 113,  t774,  t233,  255(I32)
	c0    cmplt $b0.1 = $r0.18, $r0.0   ## bblock 32, line 112,  t778,  t238,  0(I32)
	c0    add $r0.24 = $r0.18, 255   ## bblock 32, line 112,  t779,  t238,  255(I32)
	c0    and $r0.23 = $r0.23, 255   ## bblock 32, line 111-1,  t272,  t271(I16),  255(I32)
	c0    and $r0.13 = $r0.13, 255   ## bblock 32, line 112-1,  t279,  t278(I24),  255(I32)
;;								## 7
	c0    slct $r0.25 = $b0.2, $r0.25, $r0.20   ## bblock 32, line 111,  t772,  t770,  t771,  t231
	c0    slct $r0.24 = $b0.1, $r0.24, $r0.18   ## bblock 32, line 112,  t780,  t778,  t779,  t238
	c0    mpylu $r0.18 = $r0.22, $r0.23   ## bblock 32, line 111-1,  t781,  t265,  t272
	c0    mpyhs $r0.23 = $r0.22, $r0.23   ## bblock 32, line 111-1,  t782,  t265,  t272
	c0    mpylu $r0.15 = $r0.22, $r0.13   ## bblock 32, line 112-1,  t791,  t265,  t279
	c0    mpyhs $r0.13 = $r0.22, $r0.13   ## bblock 32, line 112-1,  t792,  t265,  t279
	c0    add $r0.12 = $r0.12, $r0.15   ## bblock 32, line 111-2,  t45,  t796,  t797
	c0    add $r0.3 = $r0.3, $r0.19   ## bblock 32, line 112-2,  t63,  t806,  t807
;;								## 8
	c0    shr $r0.25 = $r0.25, 8   ## bblock 32, line 111,  t234,  t772,  8(I32)
	c0    slct $r0.26 = $b0.3, $r0.26, $r0.17   ## bblock 32, line 113,  t775,  t773,  t774,  t233
	c0    shr $r0.24 = $r0.24, 8   ## bblock 32, line 112,  t239,  t780,  8(I32)
	c0    cmplt $b0.2 = $r0.12, $r0.0   ## bblock 32, line 111-2,  t798,  t45,  0(I32)
	c0    add $r0.20 = $r0.12, 255   ## bblock 32, line 111-2,  t799,  t45,  255(I32)
	c0    mpylu $r0.17 = $r0.16, $r0.14   ## bblock 32, line 113-2,  t801,  t246,  t79
	c0    cmplt $b0.1 = $r0.3, $r0.0   ## bblock 32, line 112-2,  t808,  t63,  0(I32)
	c0    add $r0.19 = $r0.3, 255   ## bblock 32, line 112-2,  t809,  t63,  255(I32)
;;								## 9
	c0    shr $r0.26 = $r0.26, 8   ## bblock 32, line 113,  t235,  t775,  8(I32)
	c0    add $r0.18 = $r0.18, $r0.23   ## bblock 32, line 111-1,  t273,  t781,  t782
	c0    and $r0.21 = $r0.21, 255   ## bblock 32, line 113-1,  t274,  t270,  255(I32)
	c0    add $r0.15 = $r0.15, $r0.13   ## bblock 32, line 112-1,  t280,  t791,  t792
	c0    slct $r0.20 = $b0.2, $r0.20, $r0.12   ## bblock 32, line 111-2,  t800,  t798,  t799,  t45
	c0    mpyhs $r0.16 = $r0.16, $r0.14   ## bblock 32, line 113-2,  t802,  t246,  t79
	c0    slct $r0.19 = $b0.1, $r0.19, $r0.3   ## bblock 32, line 112-2,  t810,  t808,  t809,  t63
	c0    ldw.d $r0.3 = 12[$r0.4]   ## [spec] bblock 41, line 111-3, t70, t313
;;								## 10
	c0    cmplt $b0.2 = $r0.18, $r0.0   ## bblock 32, line 111-1,  t783,  t273,  0(I32)
	c0    add $r0.13 = $r0.18, 255   ## bblock 32, line 111-1,  t784,  t273,  255(I32)
	c0    mpylu $r0.14 = $r0.22, $r0.21   ## bblock 32, line 113-1,  t786,  t265,  t274
	c0    mpyhs $r0.22 = $r0.22, $r0.21   ## bblock 32, line 113-1,  t787,  t265,  t274
	c0    cmplt $b0.1 = $r0.15, $r0.0   ## bblock 32, line 112-1,  t793,  t280,  0(I32)
	c0    add $r0.12 = $r0.15, 255   ## bblock 32, line 112-1,  t794,  t280,  255(I32)
	c0    shr $r0.20 = $r0.20, 8   ## bblock 32, line 111-2,  t46,  t800,  8(I32)
	c0    shr $r0.19 = $r0.19, 8   ## bblock 32, line 112-2,  t64,  t810,  8(I32)
;;								## 11
	c0    slct $r0.13 = $b0.2, $r0.13, $r0.18   ## bblock 32, line 111-1,  t785,  t783,  t784,  t273
	c0    slct $r0.12 = $b0.1, $r0.12, $r0.15   ## bblock 32, line 112-1,  t795,  t793,  t794,  t280
	c0    add $r0.17 = $r0.17, $r0.16   ## bblock 32, line 113-2,  t80,  t801,  t802
	c0    add $r0.24 = $r0.24, $r0.19   ## bblock 32, line 112-2,  t811,  t239,  t64
	c0    add $r0.25 = $r0.25, $r0.20   ## bblock 32, line 111-2,  t813,  t234,  t46
	c0    ldw.d $r0.15 = 768[$r0.2]   ## [spec] bblock 41, line 111-3, t216, t312
	c0    add $r0.4 = $r0.4, 16   ## [spec] bblock 41, line 0,  t313,  t313,  16(I32)
;;								## 12
	c0    shr $r0.13 = $r0.13, 8   ## bblock 32, line 111-1,  t276,  t785,  8(I32)
	c0    add $r0.14 = $r0.14, $r0.22   ## bblock 32, line 113-1,  t275,  t786,  t787
	c0    shr $r0.12 = $r0.12, 8   ## bblock 32, line 112-1,  t281,  t795,  8(I32)
	c0    cmplt $b0.1 = $r0.17, $r0.0   ## bblock 32, line 113-2,  t803,  t80,  0(I32)
	c0    add $r0.16 = $r0.17, 255   ## bblock 32, line 113-2,  t804,  t80,  255(I32)
	c0    add $r0.5 = $r0.24, $r0.5   ## bblock 32, line 112-2,  t153,  t811,  t153
	c0    add $r0.6 = $r0.25, $r0.6   ## bblock 32, line 111-2,  t154,  t813,  t154
;;								## 13
	c0    cmplt $b0.1 = $r0.14, $r0.0   ## bblock 32, line 113-1,  t788,  t275,  0(I32)
	c0    add $r0.17 = $r0.14, 255   ## bblock 32, line 113-1,  t789,  t275,  255(I32)
	c0    add $r0.18 = $r0.12, $r0.7   ## bblock 32, line 112-1,  t283,  t281,  t205
	c0    add $r0.19 = $r0.13, $r0.8   ## bblock 32, line 111-1,  t284,  t276,  t204
	c0    slct $r0.16 = $b0.1, $r0.16, $r0.17   ## bblock 32, line 113-2,  t805,  t803,  t804,  t80
	c0    shru $r0.20 = $r0.15, 16   ## [spec] bblock 41, line 111-3,  t215(I16),  t216,  16(SI32)
	c0    and $r0.15 = $r0.15, 255   ## [spec] bblock 41, line 113-3,  t212,  t216,  255(I32)
	c0    shru $r0.21 = $r0.15, 8   ## [spec] bblock 41, line 112-3,  t210(I24),  t216,  8(SI32)
;;								## 14
	c0    slct $r0.17 = $b0.1, $r0.17, $r0.14   ## bblock 32, line 113-1,  t790,  t788,  t789,  t275
	c0    shr $r0.16 = $r0.16, 8   ## bblock 32, line 113-2,  t81,  t805,  8(I32)
	c0    and $r0.20 = $r0.20, 255   ## [spec] bblock 41, line 111-3,  t214,  t215(I16),  255(I32)
	c0    mpylu $r0.14 = $r0.3, $r0.15   ## [spec] bblock 41, line 113-3,  t817,  t70,  t212
	c0    mpyhs $r0.15 = $r0.3, $r0.15   ## [spec] bblock 41, line 113-3,  t818,  t70,  t212
	c0    and $r0.21 = $r0.21, 255   ## [spec] bblock 41, line 112-3,  t209,  t210(I24),  255(I32)
	c0    add $r0.2 = $r0.2, 1024   ## [spec] bblock 41, line 0,  t312,  t312,  1024(I32)
;;								## 15
	c0    shr $r0.17 = $r0.17, 8   ## bblock 32, line 113-1,  t277,  t790,  8(I32)
	c0    add $r0.26 = $r0.26, $r0.16   ## bblock 32, line 113-2,  t812,  t235,  t81
	c0    mpylu $r0.16 = $r0.3, $r0.20   ## [spec] bblock 41, line 111-3,  t815,  t70,  t214
	c0    mpyhs $r0.20 = $r0.3, $r0.20   ## [spec] bblock 41, line 111-3,  t816,  t70,  t214
	c0    mpylu $r0.22 = $r0.3, $r0.21   ## [spec] bblock 41, line 112-3,  t825,  t70,  t209
	c0    mpyhs $r0.3 = $r0.3, $r0.21   ## [spec] bblock 41, line 112-3,  t826,  t70,  t209
;;								## 16
	c0    add $r0.21 = $r0.17, $r0.10   ## bblock 32, line 113-1,  t282,  t277,  t190
	c0    add $r0.9 = $r0.26, $r0.9   ## bblock 32, line 113-2,  t152,  t812,  t152
	c0    add $r0.14 = $r0.14, $r0.15   ## [spec] bblock 41, line 113-3,  t211,  t817,  t818
	c0    brf $b0.0, L11?3   ## bblock 32, line 104-3,  t814(I1)
;;								## 17
	c0    add $r0.16 = $r0.16, $r0.20   ## bblock 41, line 111-3,  t213,  t815,  t816
	c0    cmplt $b0.0 = $r0.14, $r0.0   ## bblock 41, line 113-3,  t822,  t211,  0(I32)
	c0    add $r0.3 = $r0.14, 255   ## bblock 41, line 113-3,  t823,  t211,  255(I32)
	c0    add $r0.22 = $r0.22, $r0.3   ## bblock 41, line 112-3,  t208,  t825,  t826
;;								## 18
	c0    cmplt $b0.1 = $r0.16, $r0.0   ## bblock 41, line 111-3,  t819,  t213,  0(I32)
	c0    add $r0.15 = $r0.16, 255   ## bblock 41, line 111-3,  t820,  t213,  255(I32)
	c0    slct $r0.3 = $b0.0, $r0.3, $r0.14   ## bblock 41, line 113-3,  t824,  t822,  t823,  t211
	c0    cmplt $b0.2 = $r0.22, $r0.0   ## bblock 41, line 112-3,  t827,  t208,  0(I32)
	c0    add $r0.18 = $r0.22, 255   ## bblock 41, line 112-3,  t828,  t208,  255(I32)
;;								## 19
	c0    slct $r0.15 = $b0.1, $r0.15, $r0.16   ## bblock 41, line 111-3,  t821,  t819,  t820,  t213
	c0    shr $r0.3 = $r0.3, 8   ## bblock 41, line 113-3,  t244,  t824,  8(I32)
	c0    slct $r0.18 = $b0.2, $r0.18, $r0.22   ## bblock 41, line 112-3,  t829,  t827,  t828,  t208
;;								## 20
	c0    shr $r0.15 = $r0.15, 8   ## bblock 41, line 111-3,  t243,  t821,  8(I32)
	c0    shr $r0.18 = $r0.18, 8   ## bblock 41, line 112-3,  t207,  t829,  8(I32)
	c0    add $r0.17 = $r0.17, $r0.3   ## bblock 41, line 113-3,  t832,  t277,  t244
;;								## 21
	c0    add $r0.13 = $r0.13, $r0.15   ## bblock 41, line 111-3,  t830,  t276,  t243
	c0    add $r0.12 = $r0.12, $r0.18   ## bblock 41, line 112-3,  t831,  t281,  t207
	c0    add $r0.10 = $r0.17, $r0.10   ## bblock 41, line 113-3,  t190,  t832,  t190
;;								## 22
	c0    add $r0.8 = $r0.13, $r0.8   ## bblock 41, line 111-3,  t204,  t830,  t204
	c0    add $r0.7 = $r0.12, $r0.7   ## bblock 41, line 112-3,  t205,  t831,  t205
	c0    goto L10?3 ## goto
;;								## 23
.trace 4
L11?3:
	c0    add $r0.12 = $r0.28, 4   ## bblock 42, line 0,  t490,  t490,  4(I32)
	c0    add $r0.15 = $r0.30, 28   ## bblock 42, line 0,  t488,  t488,  28(I32)
	c0    add $r0.3 = $r0.27, 1   ## bblock 42, line 0,  t491,  t491,  1(I32)
	c0    add $r0.9 = $r0.9, $r0.21   ## bblock 42, line 0,  t152,  t152,  t282
	c0    add $r0.5 = $r0.5, $r0.18   ## bblock 42, line 0,  t153,  t153,  t283
	c0    add $r0.6 = $r0.6, $r0.19   ## bblock 42, line 0,  t154,  t154,  t284
	c0    mov $r0.13 = $r0.29   ## t572
	c0    goto L8?3 ## goto
;;								## 0
.trace 6
L9?3:
	c0    max $r0.9 = $r0.9, $r0.0   ## bblock 12, line 157,  t174,  t152,  0(SI32)
	c0    max $r0.5 = $r0.5, $r0.0   ## bblock 12, line 156,  t180,  t153,  0(SI32)
	c0    max $r0.6 = $r0.6, $r0.0   ## bblock 12, line 155,  t186,  t154,  0(SI32)
	c0    add $r0.3 = $r0.32, $r0.33   ## bblock 12, line 155,  t765,  t534,  t575
	c0    add $r0.4 = $r0.32, 4   ## bblock 12, line 0,  t534,  t534,  4(I32)
	c0    add $r0.2 = $r0.31, 1   ## bblock 12, line 0,  t537,  t537,  1(I32)
	c0    mov $r0.13 = $r0.29   ## t572
;;								## 0
	c0    min $r0.9 = $r0.9, 255   ## bblock 12, line 157,  t83,  t174,  255(SI32)
	c0    min $r0.5 = $r0.5, 255   ## bblock 12, line 156,  t86,  t180,  255(SI32)
	c0    min $r0.6 = $r0.6, 255   ## bblock 12, line 155,  t90,  t186,  255(SI32)
;;								## 1
	c0    shl $r0.5 = $r0.5, 8   ## bblock 12, line 157,  t89,  t86,  8(SI32)
	c0    shl $r0.6 = $r0.6, 16   ## bblock 12, line 156,  t93,  t90,  16(SI32)
;;								## 2
	c0    or $r0.9 = $r0.9, $r0.6   ## bblock 12, line 157,  t764,  t83,  t93
;;								## 3
	c0    or $r0.9 = $r0.9, $r0.5   ## bblock 12, line 157,  t94,  t764,  t89
;;								## 4
	c0    stw 0[$r0.3] = $r0.9   ## bblock 12, line 155, t765, t94
	c0    goto L6?3 ## goto
;;								## 5
.trace 9
L7?3:
	c0    add $r0.33 = $r0.33, 256   ## bblock 9, line 0,  t575,  t575,  256(I32)
	c0    add $r0.13 = $r0.13, 256   ## bblock 9, line 0,  t572,  t572,  256(I32)
	c0    add $r0.3 = $r0.34, 1   ## bblock 9, line 0,  t576,  t576,  1(I32)
	c0    goto L4?3 ## goto
;;								## 0
.trace 13
L5?3:
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 5, line 165,  raddr(puts)(P32),  addr(_?1STRINGVAR.1)(P32)
	c0    stw 0x10[$r0.1] = $r0.35  ## spill ## t129
	c0    mov $r0.3 = (_?1STRINGPACKET.1 + 0)   ## addr(_?1STRINGVAR.1)(P32)
;;								## 0
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t129
;;								## 1
;;								## 2
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 6, line 167,  t130,  ?2.4?2auto_size(I32),  t129
;;								## 3
.endp
.section .bss
.section .data
_?1STRINGPACKET.1:
    .data1 67
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
    .data1 32
    .data1 55
    .data1 120
    .data1 55
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
.equ ?2.4?2scratch.0, 0x0
.equ ?2.4?2ras_p, 0x10
.section .data
.section .text
.equ ?2.4?2auto_size, 0x20
 ## End main
.section .bss
.section .data
.skip 2
filter7x7::
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
    .data4 32
.section .data
.comm strbuf, 0xc, 4
.comm conv7_result, 0x4000, 4
.comm conv7_image, 0x4000, 4
.section .text
.import puts
.type puts,@function
.import NOP
.type NOP,@function
