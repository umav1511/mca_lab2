 ## Target: VEX 1 cluster (big endian)
.comment ""
.comment "Copyright (C) 1990-2010 Hewlett-Packard Company"
.comment "VEX C compiler version 3.43 (20110131 release)"
.comment ""
.comment "-dir /home/user/tools/vex-3.43 -fmm=/home/user/workspace/assignment2/configuration.mm -width 1 -c99inline -ms -mas_g -mas_G -O3 -o a.out"
.sversion 3.43
.rta 2
.section .bss
.align 32
.section .data
.align 32
.equ _?1TEMPLATEPACKET.7, 0x0
 ## Begin swap
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:u32,$r0.4:u32)
swap::
.trace 1
	      ## auto_size == 0
;;								## 0
	c0    ldbu $r0.2 = 0[$r0.4]   ## bblock 0, line 19, t3(I8), t6
;;								## 1
	c0    ldbu $r0.5 = 0[$r0.3]   ## bblock 0, line 18, t5(I8), t4
;;								## 2
	c0    stb 0[$r0.3] = $r0.2   ## bblock 0, line 19, t4, t3(I8)
;;								## 3
	c0    stb 0[$r0.4] = $r0.5   ## bblock 0, line 20, t6, t5(I8)
;;								## 4
.return ret()
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 21,  t8,  ?2.1?2auto_size(I32),  t7
;;								## 5
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.1?2auto_size, 0x0
 ## End swap
 ## Begin NOP
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg()
NOP::
.trace 1
	      ## auto_size == 0
;;								## 0
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 1
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 22,  t1,  ?2.2?2auto_size(I32),  t0
;;								## 2
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.2?2auto_size, 0x0
 ## End NOP
.equ _?1TEMPLATEPACKET.5, 0x0
 ## Begin main
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg()
main::
.trace 12
	c0    add $r0.1 = $r0.1, (-0x40)
;;								## 0
	c0    add $r0.5 = $r0.1, 0x10   ## bblock 0, line 38,  t0,  t164,  offset(window?1.23)=0x10(P32)
	c0    stw 0x34[$r0.1] = $l0.0  ## spill ## t163
;;								## 1
.call NOP, caller, arg(), ret($r0.3:s32)
	c0    call $l0.0 = NOP   ## bblock 0, line 40,  raddr(NOP)(P32)
	c0    stw 0x38[$r0.1] = $r0.5  ## spill ## t0
;;								## 2
	c0    mov $r0.3 = (median_result + 0)   ## bblock 1, line 0,  t690,  addr(median_result?1.0)(P32)
;;								## 3
	c0    mov $r0.2 = (~0xfff)   ## bblock 1, line 0,  t691,  (~0xfff)(I32)
;;								## 4
	c0    ldw $r0.4 = 0x34[$r0.1]  ## restore ## t163
;;								## 5
	c0    ldw $r0.5 = 0x38[$r0.1]  ## restore ## t0
;;								## 6
;;								## 7
.trace 9
L0?3:
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 2, line 66,  t795(I1),  t691,  0(SI32)
	c0    add $r0.2 = $r0.2, 8   ## [spec] bblock 33, line 0,  t691,  t691,  8(I32)
;;								## 0
	c0    brf $b0.0, L1?3   ## bblock 2, line 66,  t795(I1)
;;								## 1
	c0    stw 0[$r0.3] = $r0.0   ## bblock 33, line 67, t690, 0(SI32)
;;								## 2
	c0    stw 4[$r0.3] = $r0.0   ## bblock 33, line 67-1, t690, 0(SI32)
;;								## 3
	c0    stw 8[$r0.3] = $r0.0   ## bblock 33, line 67-2, t690, 0(SI32)
;;								## 4
	c0    stw 12[$r0.3] = $r0.0   ## bblock 33, line 67-3, t690, 0(SI32)
;;								## 5
	c0    stw 16[$r0.3] = $r0.0   ## bblock 33, line 67-4, t690, 0(SI32)
;;								## 6
	c0    stw 20[$r0.3] = $r0.0   ## bblock 33, line 67-5, t690, 0(SI32)
;;								## 7
	c0    stw 24[$r0.3] = $r0.0   ## bblock 33, line 67-6, t690, 0(SI32)
;;								## 8
	c0    stw 28[$r0.3] = $r0.0   ## bblock 33, line 67-7, t690, 0(SI32)
	c0    add $r0.3 = $r0.3, 32   ## bblock 33, line 0,  t690,  t690,  32(I32)
	      ## goto
;;
	c0    goto L0?3 ## goto
;;								## 9
.trace 13
L1?3:
	c0    ldw.d $r0.30 = 32[$r0.5]   ## [spec] bblock 3, line 0, t244, t0
	c0    mov $r0.36 = $r0.4   ## t163
;;								## 0
	c0    ldw.d $r0.29 = 28[$r0.5]   ## [spec] bblock 3, line 0, t245, t0
	c0    mov $r0.37 = $r0.5   ## t0
;;								## 1
	c0    ldw.d $r0.28 = 24[$r0.5]   ## [spec] bblock 3, line 0, t246, t0
	c0    mov $r0.38 = $r0.30   ## bblock 3, line 0,  t209,  t244
;;								## 2
	c0    ldw.d $r0.27 = 20[$r0.5]   ## [spec] bblock 3, line 0, t247, t0
	c0    mov $r0.39 = $r0.29   ## bblock 3, line 0,  t207,  t245
;;								## 3
	c0    ldw.d $r0.19 = 16[$r0.5]   ## [spec] bblock 3, line 0, t248, t0
	c0    mov $r0.40 = $r0.28   ## bblock 3, line 0,  t205,  t246
;;								## 4
	c0    ldw.d $r0.18 = 12[$r0.5]   ## [spec] bblock 3, line 0, t249, t0
	c0    mov $r0.41 = $r0.27   ## bblock 3, line 0,  t203,  t247
;;								## 5
	c0    ldw.d $r0.17 = 8[$r0.5]   ## [spec] bblock 3, line 0, t250, t0
	c0    mov $r0.42 = $r0.19   ## bblock 3, line 0,  t201,  t248
;;								## 6
	c0    ldw.d $r0.16 = 4[$r0.5]   ## [spec] bblock 3, line 0, t251, t0
	c0    mov $r0.43 = $r0.18   ## bblock 3, line 0,  t199,  t249
;;								## 7
	c0    ldw.d $r0.31 = 0[$r0.5]   ## [spec] bblock 3, line 0, t192, t0
	c0    mov $r0.44 = $r0.17   ## bblock 3, line 0,  t197,  t250
;;								## 8
	c0    mov $r0.45 = $r0.16   ## bblock 3, line 0,  t195,  t251
	c0    mov $r0.5 = (~0x3d)   ## bblock 3, line 0,  t514,  (~0x3d)(I32)
;;								## 9
	c0    mov $r0.46 = $r0.31   ## bblock 3, line 0,  t193,  t192
;;								## 10
	c0    mov $r0.20 = ((median_result + 0) + 256)   ## bblock 3, line 0,  t537,  (addr(median_result?1.0)(P32) + 0x100(I32))(P32)
;;								## 11
	c0    mov $r0.21 = ((median_image + 0) + 252)   ## bblock 3, line 0,  t538,  (addr(median_image?1.0)(P32) + 0xfc(I32))(P32)
;;								## 12
	c0    mov $r0.22 = ((median_image + 0) + (~0xff))   ## bblock 3, line 0,  t530,  (addr(median_image?1.0)(P32) + 0xffffff00(I32))(P32)
;;								## 13
.trace 8
L2?3:
	c0    cmplt $b0.0 = $r0.5, $r0.0   ## bblock 4, line 73,  t796(I1),  t514,  0(SI32)
	c0    add $r0.15 = $r0.20, 4   ## [spec] bblock 7, line 0,  t311,  t537,  4(I32)
;;								## 0
	c0    add $r0.14 = $r0.21, 4   ## [spec] bblock 7, line 0,  t314,  t538,  4(I32)
	c0    brf $b0.0, L3?3   ## bblock 4, line 73,  t796(I1)
;;								## 1
	c0    add $r0.13 = $r0.22, 4   ## bblock 7, line 0,  t337,  t530,  4(I32)
	c0    mov $r0.2 = (~0x3d)   ## bblock 7, line 0,  t338,  (~0x3d)(I32)
;;								## 2
	c0    mov $r0.32 = $r0.5   ## t514
	c0    mov $r0.33 = $r0.20   ## t537
;;								## 3
	c0    mov $r0.34 = $r0.21   ## t538
	c0    mov $r0.35 = $r0.22   ## t530
;;								## 4
.trace 5
L4?3:
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 8, line 74,  t797(I1),  t338,  0(SI32)
	c0    ldw.d $r0.21 = 0[$r0.15]   ## [spec] bblock 10, line 0, t210, t311
;;								## 0
	c0    mov $r0.5 = (~0x2)   ## [spec] bblock 10, line 0,  t305,  (~0x2)(I32)
	c0    brf $b0.0, L5?3   ## bblock 8, line 74,  t797(I1)
;;								## 1
	c0    ldw $r0.12 = 4[$r0.13]   ## bblock 10, line 99, t251, t337
	c0    mov $r0.26 = $r0.21   ## bblock 10, line 0,  t211,  t210
;;								## 2
	c0    ldw $r0.9 = 8[$r0.13]   ## bblock 10, line 100, t250, t337
	c0    mov $r0.22 = $r0.2   ## t338
;;								## 3
	c0    ldw $r0.10 = 0[$r0.14]   ## bblock 10, line 101, t249, t314
	c0    mov $r0.23 = $r0.13   ## t337
;;								## 4
	c0    ldw $r0.3 = 4[$r0.14]   ## bblock 10, line 102, t248, t314
	c0    mov $r0.24 = $r0.14   ## t314
;;								## 5
	c0    ldw $r0.4 = 8[$r0.14]   ## bblock 10, line 103, t247, t314
	c0    mov $r0.25 = $r0.15   ## t311
;;								## 6
	c0    ldw $r0.7 = 512[$r0.13]   ## bblock 10, line 104, t246, t337
;;								## 7
	c0    ldw $r0.6 = 516[$r0.13]   ## bblock 10, line 105, t245, t337
;;								## 8
	c0    ldw $r0.8 = 520[$r0.13]   ## bblock 10, line 106, t244, t337
;;								## 9
	c0    ldw $r0.11 = 0[$r0.13]   ## bblock 10, line 98, t192, t337
;;								## 10
	c0    mov $r0.20 = 16711680   ## bblock 10, line 118,  t1(SI24),  16711680(SI32)
;;								## 11
.trace 3
L6?3:
	c0    cmplt $b0.0 = $r0.5, $r0.0   ## bblock 11, line 119,  t798(I1),  t305,  0(SI32)
	c0    mov $r0.2 = (~0x3)   ## [spec] bblock 13, line 0,  t298,  (~0x3)(I32)
;;								## 0
	c0    mov $r0.19 = $r0.5   ## t305
	c0    brf $b0.0, L7?3   ## bblock 11, line 119,  t798(I1)
;;								## 1
.trace 1
L8?3:
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 14, line 145,  t799(I1),  t298,  0(SI32)
	c0    maxu $r0.5 = $r0.3, $r0.4   ## [spec] bblock 16, line 161,  t270,  t248,  t247
;;								## 0
	c0    minu $r0.13 = $r0.6, $r0.7   ## [spec] bblock 16, line 167,  t268,  t245,  t246
	c0    brf $b0.0, L9?3   ## bblock 14, line 145,  t799(I1)
;;								## 1
	c0    maxu $r0.14 = $r0.5, $r0.13   ## bblock 16, line 187,  t265,  t270,  t268
	c0    maxu $r0.7 = $r0.7, $r0.6   ## bblock 16, line 167,  t266,  t246,  t245
;;								## 2
	c0    minu $r0.15 = $r0.8, $r0.7   ## bblock 16, line 193,  t286,  t244,  t266
	c0    maxu $r0.7 = $r0.7, $r0.8   ## bblock 16, line 193,  t263,  t266,  t244
;;								## 3
	c0    maxu $r0.17 = $r0.9, $r0.10   ## bblock 16, line 155,  t291,  t250,  t249
	c0    maxu $r0.16 = $r0.14, $r0.15   ## bblock 16, line 167-1,  t238,  t265,  t286
;;								## 4
	c0    minu $r0.6 = $r0.7, $r0.16   ## bblock 16, line 193-1,  t245,  t263,  t238
	c0    maxu $r0.8 = $r0.16, $r0.7   ## bblock 16, line 193-1,  t244,  t238,  t263
;;								## 5
	c0    minu $r0.4 = $r0.4, $r0.3   ## bblock 16, line 161,  t272,  t247,  t248
	c0    minu $r0.13 = $r0.13, $r0.5   ## bblock 16, line 187,  t264,  t268,  t270
;;								## 6
	c0    maxu $r0.5 = $r0.17, $r0.4   ## bblock 16, line 181,  t289,  t291,  t272
	c0    minu $r0.15 = $r0.15, $r0.14   ## bblock 16, line 167-1,  t234,  t286,  t265
;;								## 7
	c0    maxu $r0.16 = $r0.11, $r0.12   ## bblock 16, line 149,  t229,  t192,  t251
	c0    maxu $r0.14 = $r0.5, $r0.13   ## bblock 16, line 161-1,  t235,  t289,  t264
;;								## 8
	c0    minu $r0.10 = $r0.10, $r0.9   ## bblock 16, line 155,  t274,  t249,  t250
	c0    maxu $r0.7 = $r0.14, $r0.15   ## bblock 16, line 187-1,  t246,  t235,  t234
;;								## 9
	c0    minu $r0.4 = $r0.15, $r0.14   ## bblock 16, line 187-1,  t247,  t234,  t235
	c0    mov $r0.18 = $r0.4   ## t272
;;								## 10
	c0    maxu $r0.14 = $r0.16, $r0.10   ## bblock 16, line 175,  t290,  t229,  t274
	c0    minu $r0.18 = $r0.18, $r0.17   ## bblock 16, line 181,  t271,  t272,  t291
;;								## 11
	c0    maxu $r0.15 = $r0.14, $r0.18   ## bblock 16, line 155-1,  t232,  t290,  t271
	c0    minu $r0.13 = $r0.13, $r0.5   ## bblock 16, line 161-1,  t231,  t264,  t289
;;								## 12
	c0    maxu $r0.3 = $r0.15, $r0.13   ## bblock 16, line 181-1,  t248,  t232,  t231
	c0    mov $r0.5 = $r0.10   ## t274
;;								## 13
	c0    minu $r0.5 = $r0.5, $r0.16   ## bblock 16, line 175,  t275,  t274,  t229
	c0    minu $r0.10 = $r0.13, $r0.15   ## bblock 16, line 181-1,  t249,  t231,  t232
;;								## 14
	c0    minu $r0.12 = $r0.12, $r0.11   ## bblock 16, line 149,  t277,  t251,  t192
	c0    minu $r0.18 = $r0.18, $r0.14   ## bblock 16, line 155-1,  t228,  t271,  t290
;;								## 15
	c0    maxu $r0.13 = $r0.12, $r0.5   ## bblock 16, line 149-1,  t296,  t277,  t275
	c0    minu $r0.11 = $r0.5, $r0.12   ## bblock 16, line 149-1,  t192,  t275,  t277
;;								## 16
	c0    minu $r0.12 = $r0.18, $r0.13   ## bblock 16, line 175-1,  t251,  t228,  t296
	c0    maxu $r0.9 = $r0.13, $r0.18   ## bblock 16, line 175-1,  t250,  t296,  t228
;;								## 17
	c0    add $r0.2 = $r0.2, 2   ## bblock 16, line 0,  t298,  t298,  2(I32)
	c0    goto L8?3 ## goto
;;								## 18
.trace 4
L9?3:
	c0    or $r0.21 = $r0.3, $r0.21   ## bblock 63, line 226,  t210,  t248,  t210
	c0    andc $r0.11 = $r0.20, $r0.11   ## bblock 63, line 231,  t192,  t1(SI24),  t192
;;								## 0
	c0    andc $r0.3 = $r0.20, $r0.3   ## bblock 63, line 235,  t248,  t1(SI24),  t248
	c0    andc $r0.12 = $r0.20, $r0.12   ## bblock 63, line 232,  t251,  t1(SI24),  t251
;;								## 1
	c0    andc $r0.9 = $r0.20, $r0.9   ## bblock 63, line 233,  t250,  t1(SI24),  t250
	c0    andc $r0.10 = $r0.20, $r0.10   ## bblock 63, line 234,  t249,  t1(SI24),  t249
;;								## 2
	c0    andc $r0.4 = $r0.20, $r0.4   ## bblock 63, line 236,  t247,  t1(SI24),  t247
	c0    andc $r0.7 = $r0.20, $r0.7   ## bblock 63, line 237,  t246,  t1(SI24),  t246
;;								## 3
	c0    andc $r0.6 = $r0.20, $r0.6   ## bblock 63, line 238,  t245,  t1(SI24),  t245
	c0    andc $r0.8 = $r0.20, $r0.8   ## bblock 63, line 239,  t244,  t1(SI24),  t244
;;								## 4
	c0    shr $r0.20 = $r0.20, 8   ## bblock 63, line 242,  t1(SI24),  t1(SI24),  8(SI32)
	c0    add $r0.5 = $r0.19, 1   ## bblock 63, line 0,  t305,  t305,  1(I32)
	      ## goto
;;
	c0    goto L6?3 ## goto
;;								## 5
.trace 6
L7?3:
	c0    cmpne $b0.0 = $r0.21, $r0.26   ## bblock 52, line 0,  t809(I1),  t210,  t211
	c0    mov $r0.16 = $r0.12   ## t251
;;								## 0
	c0    mov $r0.17 = $r0.9   ## t250
	c0    brf $b0.0, L10?3   ## bblock 52, line 0,  t809(I1)
;;								## 1
	c0    add $r0.13 = $r0.23, 4   ## bblock 12, line 0,  t337,  t337,  4(I32)
	c0    add $r0.14 = $r0.24, 4   ## bblock 12, line 0,  t314,  t314,  4(I32)
;;								## 2
	c0    add $r0.2 = $r0.22, 1   ## bblock 12, line 0,  t338,  t338,  1(I32)
	c0    mov $r0.18 = $r0.10   ## t249
;;								## 3
	c0    mov $r0.19 = $r0.3   ## t248
	c0    mov $r0.27 = $r0.4   ## t247
;;								## 4
	c0    mov $r0.28 = $r0.7   ## t246
	c0    mov $r0.29 = $r0.6   ## t245
;;								## 5
	c0    mov $r0.30 = $r0.8   ## t244
	c0    mov $r0.31 = $r0.11   ## t192
;;								## 6
	c0    stw 0[$r0.25] = $r0.21   ## bblock 53, line 0, t311, t210
	c0    add $r0.15 = $r0.25, 4   ## bblock 12, line 0,  t311,  t311,  4(I32)
	      ## goto
;;
	c0    goto L4?3 ## goto
;;								## 7
.trace 7
L10?3:
	c0    add $r0.13 = $r0.23, 4   ## bblock 12, line 0,  t337,  t337,  4(I32)
	c0    add $r0.14 = $r0.24, 4   ## bblock 12, line 0,  t314,  t314,  4(I32)
;;								## 0
	c0    add $r0.15 = $r0.25, 4   ## bblock 12, line 0,  t311,  t311,  4(I32)
	c0    add $r0.2 = $r0.22, 1   ## bblock 12, line 0,  t338,  t338,  1(I32)
;;								## 1
	c0    mov $r0.31 = $r0.11   ## t192
	c0    mov $r0.30 = $r0.8   ## t244
;;								## 2
	c0    mov $r0.29 = $r0.6   ## t245
	c0    mov $r0.28 = $r0.7   ## t246
;;								## 3
	c0    mov $r0.27 = $r0.4   ## t247
	c0    mov $r0.19 = $r0.3   ## t248
;;								## 4
	c0    mov $r0.18 = $r0.10   ## t249
	c0    goto L4?3 ## goto
;;								## 5
.trace 10
L5?3:
	c0    add $r0.20 = $r0.33, 256   ## bblock 9, line 0,  t537,  t537,  256(I32)
;;								## 0
	c0    add $r0.21 = $r0.34, 256   ## bblock 9, line 0,  t538,  t538,  256(I32)
;;								## 1
	c0    add $r0.22 = $r0.35, 4   ## bblock 9, line 0,  t530,  t530,  4(I32)
	c0    add $r0.5 = $r0.32, 1   ## bblock 9, line 0,  t514,  t514,  1(I32)
	      ## goto
;;
	c0    goto L2?3 ## goto
;;								## 2
.trace 14
L3?3:
	c0    cmpne $b0.0 = $r0.30, $r0.38   ## bblock 50, line 0,  t808(I1),  t244,  t209
	c0    stw 0x34[$r0.1] = $r0.36  ## spill ## t163
;;								## 0
	c0    cmpne $b0.0 = $r0.29, $r0.39   ## [spec] bblock 48, line 0,  t807(I1),  t245,  t207
	c0    brf $b0.0, L11?3   ## bblock 50, line 0,  t808(I1)
;;								## 1
	c0    cmpne $b0.1 = $r0.28, $r0.40   ## [spec] bblock 46, line 0,  t806(I1),  t246,  t205
	c0    cmpne $b0.2 = $r0.27, $r0.41   ## [spec] bblock 44, line 0,  t805(I1),  t247,  t203
;;								## 2
	c0    cmpne $b0.3 = $r0.19, $r0.42   ## [spec] bblock 42, line 0,  t804(I1),  t248,  t201
	c0    cmpne $b0.4 = $r0.18, $r0.43   ## [spec] bblock 40, line 0,  t803(I1),  t249,  t199
;;								## 3
	c0    cmpne $b0.5 = $r0.17, $r0.44   ## [spec] bblock 38, line 0,  t802(I1),  t250,  t197
	c0    cmpne $b0.6 = $r0.16, $r0.45   ## [spec] bblock 36, line 0,  t801(I1),  t251,  t195
;;								## 4
	c0    stw 32[$r0.37] = $r0.30   ## bblock 51, line 0, t0, t244
	c0    cmpne $b0.7 = $r0.31, $r0.46   ## [spec] bblock 34, line 0,  t800(I1),  t192,  t193
;;								## 5
L12?3:
	c0    brf $b0.0, L13?3   ## bblock 48, line 0,  t807(I1)
;;								## 6
	c0    mov $r0.3 = (_?1STRINGPACKET.1 + 0)   ## addr(_?1STRINGVAR.1)(P32)
;;								## 7
	c0    stw 28[$r0.37] = $r0.29   ## bblock 49, line 0, t0, t245
	c0    brf $b0.1, L14?3   ## bblock 46, line 0,  t806(I1)
;;								## 8
L15?3:
	c0    stw 24[$r0.37] = $r0.28   ## bblock 47, line 0, t0, t246
	c0    brf $b0.2, L16?3   ## bblock 44, line 0,  t805(I1)
;;								## 9
L17?3:
	c0    stw 20[$r0.37] = $r0.27   ## bblock 45, line 0, t0, t247
	c0    brf $b0.3, L18?3   ## bblock 42, line 0,  t804(I1)
;;								## 10
L19?3:
	c0    stw 16[$r0.37] = $r0.19   ## bblock 43, line 0, t0, t248
	c0    brf $b0.4, L20?3   ## bblock 40, line 0,  t803(I1)
;;								## 11
L21?3:
	c0    stw 12[$r0.37] = $r0.18   ## bblock 41, line 0, t0, t249
	c0    brf $b0.5, L22?3   ## bblock 38, line 0,  t802(I1)
;;								## 12
L23?3:
	c0    stw 8[$r0.37] = $r0.17   ## bblock 39, line 0, t0, t250
	c0    brf $b0.6, L24?3   ## bblock 36, line 0,  t801(I1)
;;								## 13
L25?3:
	c0    stw 4[$r0.37] = $r0.16   ## bblock 37, line 0, t0, t251
	c0    brf $b0.7, L26?3   ## bblock 34, line 0,  t800(I1)
;;								## 14
L27?3:
.call puts, caller, arg($r0.3:u32), ret()
	c0    stw 0[$r0.37] = $r0.31   ## bblock 35, line 0, t0, t192
	c0    call $l0.0 = puts   ## bblock 5, line 295,  raddr(puts)(P32),  addr(_?1STRINGVAR.1)(P32)
;;								## 15
L28?3:
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x34[$r0.1]  ## restore ## t163
	      xnop 1
;;								## 17
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 6, line 297,  t164,  ?2.3?2auto_size(I32),  t163
;;								## 18
.trace 15
L26?3:
	c0    mov $r0.3 = (_?1STRINGPACKET.1 + 0)   ## addr(_?1STRINGVAR.1)(P32)
;;								## 0
.call puts, caller, arg($r0.3:u32), ret()
	c0    call $l0.0 = puts   ## bblock 5, line 295,  raddr(puts)(P32),  addr(_?1STRINGVAR.1)(P32)
	      ## goto
;;
	c0    goto L28?3 ## goto
;;								## 1
.trace 16
L24?3:
	c0    brf $b0.7, L26?3   ## bblock 34, line 0,  t800(I1)
;;								## 0
	c0    mov $r0.3 = (_?1STRINGPACKET.1 + 0)   ## addr(_?1STRINGVAR.1)(P32)
	      ## goto
;;
	c0    goto L27?3 ## goto
;;								## 1
.trace 17
L22?3:
	c0    brf $b0.6, L24?3   ## bblock 36, line 0,  t801(I1)
;;								## 0
	c0    mov $r0.3 = (_?1STRINGPACKET.1 + 0)   ## addr(_?1STRINGVAR.1)(P32)
	      ## goto
;;
	c0    goto L25?3 ## goto
;;								## 1
.trace 18
L20?3:
	c0    brf $b0.5, L22?3   ## bblock 38, line 0,  t802(I1)
;;								## 0
	c0    mov $r0.3 = (_?1STRINGPACKET.1 + 0)   ## addr(_?1STRINGVAR.1)(P32)
	      ## goto
;;
	c0    goto L23?3 ## goto
;;								## 1
.trace 19
L18?3:
	c0    brf $b0.4, L20?3   ## bblock 40, line 0,  t803(I1)
;;								## 0
	c0    mov $r0.3 = (_?1STRINGPACKET.1 + 0)   ## addr(_?1STRINGVAR.1)(P32)
	      ## goto
;;
	c0    goto L21?3 ## goto
;;								## 1
.trace 20
L16?3:
	c0    brf $b0.3, L18?3   ## bblock 42, line 0,  t804(I1)
;;								## 0
	c0    mov $r0.3 = (_?1STRINGPACKET.1 + 0)   ## addr(_?1STRINGVAR.1)(P32)
	      ## goto
;;
	c0    goto L19?3 ## goto
;;								## 1
.trace 21
L14?3:
	c0    brf $b0.2, L16?3   ## bblock 44, line 0,  t805(I1)
;;								## 0
	c0    mov $r0.3 = (_?1STRINGPACKET.1 + 0)   ## addr(_?1STRINGVAR.1)(P32)
	      ## goto
;;
	c0    goto L17?3 ## goto
;;								## 1
.trace 22
L13?3:
	c0    brf $b0.1, L14?3   ## bblock 46, line 0,  t806(I1)
;;								## 0
	c0    mov $r0.3 = (_?1STRINGPACKET.1 + 0)   ## addr(_?1STRINGVAR.1)(P32)
	      ## goto
;;
	c0    goto L15?3 ## goto
;;								## 1
.trace 23
L11?3:
	c0    cmpne $b0.1 = $r0.28, $r0.40   ## [spec] bblock 46, line 0,  t806(I1),  t246,  t205
	c0    cmpne $b0.2 = $r0.27, $r0.41   ## [spec] bblock 44, line 0,  t805(I1),  t247,  t203
;;								## 0
	c0    cmpne $b0.3 = $r0.19, $r0.42   ## [spec] bblock 42, line 0,  t804(I1),  t248,  t201
	c0    cmpne $b0.4 = $r0.18, $r0.43   ## [spec] bblock 40, line 0,  t803(I1),  t249,  t199
;;								## 1
	c0    cmpne $b0.5 = $r0.17, $r0.44   ## [spec] bblock 38, line 0,  t802(I1),  t250,  t197
	c0    cmpne $b0.6 = $r0.16, $r0.45   ## [spec] bblock 36, line 0,  t801(I1),  t251,  t195
;;								## 2
	c0    cmpne $b0.7 = $r0.31, $r0.46   ## [spec] bblock 34, line 0,  t800(I1),  t192,  t193
	c0    goto L12?3 ## goto
;;								## 3
.endp
.section .bss
.section .data
_?1STRINGPACKET.1:
    .data1 109
    .data1 101
    .data1 100
    .data1 105
    .data1 97
    .data1 110
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
.equ ?2.3?2scratch.0, 0x0
.equ _?1PACKET.13, 0x10
.equ ?2.3?2ras_p, 0x34
.equ ?2.3?2spill_p, 0x38
.section .data
.section .text
.equ ?2.3?2auto_size, 0x40
 ## End main
.section .bss
.section .data
.section .data
.comm strbuf, 0xc, 4
.comm median_result, 0x4000, 4
.comm median_image, 0x4000, 4
.section .text
.import NOP
.type NOP,@function
.import puts
.type puts,@function
