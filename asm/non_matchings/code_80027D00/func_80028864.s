glabel func_80028864
/* 029464 80028864 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 029468 80028868 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02946C 8002886C AFA50024 */  sw    $a1, 0x24($sp)
/* 029470 80028870 AFA60028 */  sw    $a2, 0x28($sp)
/* 029474 80028874 AFA7002C */  sw    $a3, 0x2c($sp)
/* 029478 80028878 94820000 */  lhu   $v0, ($a0)
/* 02947C 8002887C 24010200 */  li    $at, 512
/* 029480 80028880 304E2000 */  andi  $t6, $v0, 0x2000
/* 029484 80028884 55C000CD */  bnel  $t6, $zero, .L80028BBC
/* 029488 80028888 304E0200 */   andi  $t6, $v0, 0x200
/* 02948C 8002888C 3C02800E */  lui   $v0, %hi(D_800DC52C) # $v0, 0x800e
/* 029490 80028890 8C42C52C */  lw    $v0, %lo(D_800DC52C)($v0)
/* 029494 80028894 24030001 */  li    $v1, 1
/* 029498 80028898 3C0F8016 */  lui   $t7, %hi(D_8016557C) # $t7, 0x8016
/* 02949C 8002889C 10400009 */  beqz  $v0, .L800288C4
/* 0294A0 800288A0 00000000 */   nop   
/* 0294A4 800288A4 10430015 */  beq   $v0, $v1, .L800288FC
/* 0294A8 800288A8 24010002 */   li    $at, 2
/* 0294AC 800288AC 10410013 */  beq   $v0, $at, .L800288FC
/* 0294B0 800288B0 24010003 */   li    $at, 3
/* 0294B4 800288B4 10410031 */  beq   $v0, $at, .L8002897C
/* 0294B8 800288B8 3C088016 */   lui   $t0, %hi(D_8016557C) # $t0, 0x8016
/* 0294BC 800288BC 10000070 */  b     .L80028A80
/* 0294C0 800288C0 97AC001E */   lhu   $t4, 0x1e($sp)
.L800288C4:
/* 0294C4 800288C4 85EF557C */  lh    $t7, %lo(D_8016557C)($t7)
/* 0294C8 800288C8 3C05800E */  lui   $a1, %hi(camera1) # $a1, 0x800e
/* 0294CC 800288CC 8CA5DB40 */  lw    $a1, %lo(camera1)($a1)
/* 0294D0 800288D0 448F2000 */  mtc1  $t7, $f4
/* 0294D4 800288D4 24070000 */  li    $a3, 0
/* 0294D8 800288D8 AFA40020 */  sw    $a0, 0x20($sp)
/* 0294DC 800288DC 46802120 */  cvt.s.w $f4, $f4
/* 0294E0 800288E0 44062000 */  mfc1  $a2, $f4
/* 0294E4 800288E4 0C007EC3 */  jal   func_8001FB0C
/* 0294E8 800288E8 00000000 */   nop   
/* 0294EC 800288EC 8FA40020 */  lw    $a0, 0x20($sp)
/* 0294F0 800288F0 A7A2001E */  sh    $v0, 0x1e($sp)
/* 0294F4 800288F4 10000061 */  b     .L80028A7C
/* 0294F8 800288F8 24030001 */   li    $v1, 1
.L800288FC:
/* 0294FC 800288FC 3C188016 */  lui   $t8, %hi(D_8016557C) # $t8, 0x8016
/* 029500 80028900 8718557C */  lh    $t8, %lo(D_8016557C)($t8)
/* 029504 80028904 3C05800E */  lui   $a1, %hi(camera1) # $a1, 0x800e
/* 029508 80028908 8CA5DB40 */  lw    $a1, %lo(camera1)($a1)
/* 02950C 8002890C 44983000 */  mtc1  $t8, $f6
/* 029510 80028910 24070000 */  li    $a3, 0
/* 029514 80028914 AFA40020 */  sw    $a0, 0x20($sp)
/* 029518 80028918 468031A0 */  cvt.s.w $f6, $f6
/* 02951C 8002891C 44063000 */  mfc1  $a2, $f6
/* 029520 80028920 0C007EC3 */  jal   func_8001FB0C
/* 029524 80028924 00000000 */   nop   
/* 029528 80028928 24010001 */  li    $at, 1
/* 02952C 8002892C 8FA40020 */  lw    $a0, 0x20($sp)
/* 029530 80028930 14410003 */  bne   $v0, $at, .L80028940
/* 029534 80028934 A7A2001E */   sh    $v0, 0x1e($sp)
/* 029538 80028938 10000050 */  b     .L80028A7C
/* 02953C 8002893C 24030001 */   li    $v1, 1
.L80028940:
/* 029540 80028940 3C198016 */  lui   $t9, %hi(D_8016557C) # $t9, 0x8016
/* 029544 80028944 8739557C */  lh    $t9, %lo(D_8016557C)($t9)
/* 029548 80028948 3C05800E */  lui   $a1, %hi(camera2) # $a1, 0x800e
/* 02954C 8002894C 8CA5DB44 */  lw    $a1, %lo(camera2)($a1)
/* 029550 80028950 44994000 */  mtc1  $t9, $f8
/* 029554 80028954 24070000 */  li    $a3, 0
/* 029558 80028958 AFA40020 */  sw    $a0, 0x20($sp)
/* 02955C 8002895C 46804220 */  cvt.s.w $f8, $f8
/* 029560 80028960 44064000 */  mfc1  $a2, $f8
/* 029564 80028964 0C007EC3 */  jal   func_8001FB0C
/* 029568 80028968 00000000 */   nop   
/* 02956C 8002896C 8FA40020 */  lw    $a0, 0x20($sp)
/* 029570 80028970 A7A2001E */  sh    $v0, 0x1e($sp)
/* 029574 80028974 10000041 */  b     .L80028A7C
/* 029578 80028978 24030001 */   li    $v1, 1
.L8002897C:
/* 02957C 8002897C 8508557C */  lh    $t0, %lo(D_8016557C)($t0)
/* 029580 80028980 3C05800E */  lui   $a1, %hi(camera1) # $a1, 0x800e
/* 029584 80028984 8CA5DB40 */  lw    $a1, %lo(camera1)($a1)
/* 029588 80028988 44885000 */  mtc1  $t0, $f10
/* 02958C 8002898C 24070000 */  li    $a3, 0
/* 029590 80028990 AFA40020 */  sw    $a0, 0x20($sp)
/* 029594 80028994 468052A0 */  cvt.s.w $f10, $f10
/* 029598 80028998 44065000 */  mfc1  $a2, $f10
/* 02959C 8002899C 0C007EC3 */  jal   func_8001FB0C
/* 0295A0 800289A0 00000000 */   nop   
/* 0295A4 800289A4 24010001 */  li    $at, 1
/* 0295A8 800289A8 8FA40020 */  lw    $a0, 0x20($sp)
/* 0295AC 800289AC 14410003 */  bne   $v0, $at, .L800289BC
/* 0295B0 800289B0 A7A2001E */   sh    $v0, 0x1e($sp)
/* 0295B4 800289B4 10000031 */  b     .L80028A7C
/* 0295B8 800289B8 24030001 */   li    $v1, 1
.L800289BC:
/* 0295BC 800289BC 3C098016 */  lui   $t1, %hi(D_8016557C) # $t1, 0x8016
/* 0295C0 800289C0 8529557C */  lh    $t1, %lo(D_8016557C)($t1)
/* 0295C4 800289C4 3C05800E */  lui   $a1, %hi(camera2) # $a1, 0x800e
/* 0295C8 800289C8 8CA5DB44 */  lw    $a1, %lo(camera2)($a1)
/* 0295CC 800289CC 44898000 */  mtc1  $t1, $f16
/* 0295D0 800289D0 24070000 */  li    $a3, 0
/* 0295D4 800289D4 AFA40020 */  sw    $a0, 0x20($sp)
/* 0295D8 800289D8 46808420 */  cvt.s.w $f16, $f16
/* 0295DC 800289DC 44068000 */  mfc1  $a2, $f16
/* 0295E0 800289E0 0C007EC3 */  jal   func_8001FB0C
/* 0295E4 800289E4 00000000 */   nop   
/* 0295E8 800289E8 24010001 */  li    $at, 1
/* 0295EC 800289EC 8FA40020 */  lw    $a0, 0x20($sp)
/* 0295F0 800289F0 14410003 */  bne   $v0, $at, .L80028A00
/* 0295F4 800289F4 A7A2001E */   sh    $v0, 0x1e($sp)
/* 0295F8 800289F8 10000020 */  b     .L80028A7C
/* 0295FC 800289FC 24030001 */   li    $v1, 1
.L80028A00:
/* 029600 80028A00 3C0A8016 */  lui   $t2, %hi(D_8016557C) # $t2, 0x8016
/* 029604 80028A04 854A557C */  lh    $t2, %lo(D_8016557C)($t2)
/* 029608 80028A08 3C05800E */  lui   $a1, %hi(camera3) # $a1, 0x800e
/* 02960C 80028A0C 8CA5DB48 */  lw    $a1, %lo(camera3)($a1)
/* 029610 80028A10 448A9000 */  mtc1  $t2, $f18
/* 029614 80028A14 24070000 */  li    $a3, 0
/* 029618 80028A18 AFA40020 */  sw    $a0, 0x20($sp)
/* 02961C 80028A1C 468094A0 */  cvt.s.w $f18, $f18
/* 029620 80028A20 44069000 */  mfc1  $a2, $f18
/* 029624 80028A24 0C007EC3 */  jal   func_8001FB0C
/* 029628 80028A28 00000000 */   nop   
/* 02962C 80028A2C 24010001 */  li    $at, 1
/* 029630 80028A30 8FA40020 */  lw    $a0, 0x20($sp)
/* 029634 80028A34 14410003 */  bne   $v0, $at, .L80028A44
/* 029638 80028A38 A7A2001E */   sh    $v0, 0x1e($sp)
/* 02963C 80028A3C 1000000F */  b     .L80028A7C
/* 029640 80028A40 24030001 */   li    $v1, 1
.L80028A44:
/* 029644 80028A44 3C0B8016 */  lui   $t3, %hi(D_8016557C) # $t3, 0x8016
/* 029648 80028A48 856B557C */  lh    $t3, %lo(D_8016557C)($t3)
/* 02964C 80028A4C 3C05800E */  lui   $a1, %hi(camera4) # $a1, 0x800e
/* 029650 80028A50 8CA5DB4C */  lw    $a1, %lo(camera4)($a1)
/* 029654 80028A54 448B2000 */  mtc1  $t3, $f4
/* 029658 80028A58 24070000 */  li    $a3, 0
/* 02965C 80028A5C AFA40020 */  sw    $a0, 0x20($sp)
/* 029660 80028A60 46802120 */  cvt.s.w $f4, $f4
/* 029664 80028A64 44062000 */  mfc1  $a2, $f4
/* 029668 80028A68 0C007EC3 */  jal   func_8001FB0C
/* 02966C 80028A6C 00000000 */   nop   
/* 029670 80028A70 8FA40020 */  lw    $a0, 0x20($sp)
/* 029674 80028A74 A7A2001E */  sh    $v0, 0x1e($sp)
/* 029678 80028A78 24030001 */  li    $v1, 1
.L80028A7C:
/* 02967C 80028A7C 97AC001E */  lhu   $t4, 0x1e($sp)
.L80028A80:
/* 029680 80028A80 506C001A */  beql  $v1, $t4, .L80028AEC
/* 029684 80028A84 8C8B00BC */   lw    $t3, 0xbc($a0)
/* 029688 80028A88 948D0000 */  lhu   $t5, ($a0)
/* 02968C 80028A8C 24010100 */  li    $at, 256
/* 029690 80028A90 3C0F800E */  lui   $t7, %hi(gModeSelection) # $t7, 0x800e
/* 029694 80028A94 31AE0100 */  andi  $t6, $t5, 0x100
/* 029698 80028A98 51C10014 */  beql  $t6, $at, .L80028AEC
/* 02969C 80028A9C 8C8B00BC */   lw    $t3, 0xbc($a0)
/* 0296A0 80028AA0 8DEFC53C */  lw    $t7, %lo(gModeSelection)($t7)
/* 0296A4 80028AA4 24010003 */  li    $at, 3
/* 0296A8 80028AA8 51E10010 */  beql  $t7, $at, .L80028AEC
/* 0296AC 80028AAC 8C8B00BC */   lw    $t3, 0xbc($a0)
/* 0296B0 80028AB0 848200CA */  lh    $v0, 0xca($a0)
/* 0296B4 80028AB4 30580002 */  andi  $t8, $v0, 2
/* 0296B8 80028AB8 1700000B */  bnez  $t8, .L80028AE8
/* 0296BC 80028ABC 30590008 */   andi  $t9, $v0, 8
/* 0296C0 80028AC0 17200009 */  bnez  $t9, .L80028AE8
/* 0296C4 80028AC4 83A8002B */   lb    $t0, 0x2b($sp)
/* 0296C8 80028AC8 00084840 */  sll   $t1, $t0, 1
/* 0296CC 80028ACC 3C0A8016 */  lui   $t2, %hi(D_801633F8) # 0x8016
/* 0296D0 80028AD0 01495021 */  addu  $t2, $t2, $t1
/* 0296D4 80028AD4 854A33F8 */  lh    $t2, %lo(D_801633F8)($t2) # 0x33f8($t2)
/* 0296D8 80028AD8 8FA50024 */  lw    $a1, 0x24($sp)
/* 0296DC 80028ADC 83A6002F */  lb    $a2, 0x2f($sp)
/* 0296E0 80028AE0 146A0031 */  bne   $v1, $t2, .L80028BA8
/* 0296E4 80028AE4 00000000 */   nop   
.L80028AE8:
/* 0296E8 80028AE8 8C8B00BC */  lw    $t3, 0xbc($a0)
.L80028AEC:
/* 0296EC 80028AEC 2401EFFF */  li    $at, -4097
/* 0296F0 80028AF0 01616024 */  and   $t4, $t3, $at
/* 0296F4 80028AF4 318D0080 */  andi  $t5, $t4, 0x80
/* 0296F8 80028AF8 24010080 */  li    $at, 128
/* 0296FC 80028AFC 11A10020 */  beq   $t5, $at, .L80028B80
/* 029700 80028B00 AC8C00BC */   sw    $t4, 0xbc($a0)
/* 029704 80028B04 318E0040 */  andi  $t6, $t4, 0x40
/* 029708 80028B08 24010040 */  li    $at, 64
/* 02970C 80028B0C 11C1001C */  beq   $t6, $at, .L80028B80
/* 029710 80028B10 318F0400 */   andi  $t7, $t4, 0x400
/* 029714 80028B14 24010400 */  li    $at, 1024
/* 029718 80028B18 11E10019 */  beq   $t7, $at, .L80028B80
/* 02971C 80028B1C 31984000 */   andi  $t8, $t4, 0x4000
/* 029720 80028B20 24014000 */  li    $at, 16384
/* 029724 80028B24 13010016 */  beq   $t8, $at, .L80028B80
/* 029728 80028B28 3C030008 */   lui   $v1, 8
/* 02972C 80028B2C 0183C824 */  and   $t9, $t4, $v1
/* 029730 80028B30 10790013 */  beq   $v1, $t9, .L80028B80
/* 029734 80028B34 3C030080 */   lui   $v1, 0x80
/* 029738 80028B38 01834024 */  and   $t0, $t4, $v1
/* 02973C 80028B3C 10680010 */  beq   $v1, $t0, .L80028B80
/* 029740 80028B40 3C030100 */   lui   $v1, 0x100
/* 029744 80028B44 01834824 */  and   $t1, $t4, $v1
/* 029748 80028B48 1069000D */  beq   $v1, $t1, .L80028B80
/* 02974C 80028B4C 3C030200 */   lui   $v1, 0x200
/* 029750 80028B50 01835024 */  and   $t2, $t4, $v1
/* 029754 80028B54 106A000A */  beq   $v1, $t2, .L80028B80
/* 029758 80028B58 3C030002 */   lui   $v1, 2
/* 02975C 80028B5C 01835824 */  and   $t3, $t4, $v1
/* 029760 80028B60 506B0008 */  beql  $v1, $t3, .L80028B84
/* 029764 80028B64 8FA50024 */   lw    $a1, 0x24($sp)
/* 029768 80028B68 848C0044 */  lh    $t4, 0x44($a0)
/* 02976C 80028B6C 8FA50024 */  lw    $a1, 0x24($sp)
/* 029770 80028B70 83A6002F */  lb    $a2, 0x2f($sp)
/* 029774 80028B74 318D0800 */  andi  $t5, $t4, 0x800
/* 029778 80028B78 11A00007 */  beqz  $t5, .L80028B98
/* 02977C 80028B7C 00000000 */   nop   
.L80028B80:
/* 029780 80028B80 8FA50024 */  lw    $a1, 0x24($sp)
.L80028B84:
/* 029784 80028B84 83A6002F */  lb    $a2, 0x2f($sp)
/* 029788 80028B88 0C00B965 */  jal   func_8002E594
/* 02978C 80028B8C 83A7002B */   lb    $a3, 0x2b($sp)
/* 029790 80028B90 10000029 */  b     .L80028C38
/* 029794 80028B94 8FBF0014 */   lw    $ra, 0x14($sp)
.L80028B98:
/* 029798 80028B98 0C00B49A */  jal   func_8002D268
/* 02979C 80028B9C 83A7002B */   lb    $a3, 0x2b($sp)
/* 0297A0 80028BA0 10000025 */  b     .L80028C38
/* 0297A4 80028BA4 8FBF0014 */   lw    $ra, 0x14($sp)
.L80028BA8:
/* 0297A8 80028BA8 0C00BCD7 */  jal   control_cpu_movement
/* 0297AC 80028BAC 83A7002B */   lb    $a3, 0x2b($sp)
/* 0297B0 80028BB0 10000021 */  b     .L80028C38
/* 0297B4 80028BB4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0297B8 80028BB8 304E0200 */  andi  $t6, $v0, 0x200
.L80028BBC:
/* 0297BC 80028BBC 15C1000B */  bne   $t6, $at, .L80028BEC
/* 0297C0 80028BC0 304F0080 */   andi  $t7, $v0, 0x80
/* 0297C4 80028BC4 83A5002B */  lb    $a1, 0x2b($sp)
/* 0297C8 80028BC8 0C00B40A */  jal   func_8002D028
/* 0297CC 80028BCC AFA40020 */   sw    $a0, 0x20($sp)
/* 0297D0 80028BD0 8FA40020 */  lw    $a0, 0x20($sp)
/* 0297D4 80028BD4 8FA50024 */  lw    $a1, 0x24($sp)
/* 0297D8 80028BD8 83A6002F */  lb    $a2, 0x2f($sp)
/* 0297DC 80028BDC 0C00BDCC */  jal   func_8002F730
/* 0297E0 80028BE0 83A7002B */   lb    $a3, 0x2b($sp)
/* 0297E4 80028BE4 10000014 */  b     .L80028C38
/* 0297E8 80028BE8 8FBF0014 */   lw    $ra, 0x14($sp)
.L80028BEC:
/* 0297EC 80028BEC 11E00007 */  beqz  $t7, .L80028C0C
/* 0297F0 80028BF0 30584000 */   andi  $t8, $v0, 0x4000
/* 0297F4 80028BF4 8FA50024 */  lw    $a1, 0x24($sp)
/* 0297F8 80028BF8 83A6002F */  lb    $a2, 0x2f($sp)
/* 0297FC 80028BFC 0C00B49A */  jal   func_8002D268
/* 029800 80028C00 83A7002B */   lb    $a3, 0x2b($sp)
/* 029804 80028C04 1000000C */  b     .L80028C38
/* 029808 80028C08 8FBF0014 */   lw    $ra, 0x14($sp)
.L80028C0C:
/* 02980C 80028C0C 24014000 */  li    $at, 16384
/* 029810 80028C10 13010004 */  beq   $t8, $at, .L80028C24
/* 029814 80028C14 3C014248 */   li    $at, 0x42480000 # 50.000000
/* 029818 80028C18 44813000 */  mtc1  $at, $f6
/* 02981C 80028C1C 00000000 */  nop   
/* 029820 80028C20 E486009C */  swc1  $f6, 0x9c($a0)
.L80028C24:
/* 029824 80028C24 8C9900BC */  lw    $t9, 0xbc($a0)
/* 029828 80028C28 2401FFF7 */  li    $at, -9
/* 02982C 80028C2C 03214024 */  and   $t0, $t9, $at
/* 029830 80028C30 AC8800BC */  sw    $t0, 0xbc($a0)
/* 029834 80028C34 8FBF0014 */  lw    $ra, 0x14($sp)
.L80028C38:
/* 029838 80028C38 27BD0020 */  addiu $sp, $sp, 0x20
/* 02983C 80028C3C 03E00008 */  jr    $ra
/* 029840 80028C40 00000000 */   nop   