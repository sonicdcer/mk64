glabel func_8028E0F0
/* 0F7700 8028E0F0 27BDFF98 */  addiu $sp, $sp, -0x68
/* 0F7704 8028E0F4 AFB70034 */  sw    $s7, 0x34($sp)
/* 0F7708 8028E0F8 AFB40028 */  sw    $s4, 0x28($sp)
/* 0F770C 8028E0FC AFB00018 */  sw    $s0, 0x18($sp)
/* 0F7710 8028E100 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0F7714 8028E104 AFB60030 */  sw    $s6, 0x30($sp)
/* 0F7718 8028E108 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0F771C 8028E10C AFB30024 */  sw    $s3, 0x24($sp)
/* 0F7720 8028E110 AFB20020 */  sw    $s2, 0x20($sp)
/* 0F7724 8028E114 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0F7728 8028E118 3C10800F */  lui   $s0, %hi(gPlayers) # $s0, 0x800f
/* 0F772C 8028E11C 3C14800E */  lui   $s4, %hi(D_800DC4DC) # $s4, 0x800e
/* 0F7730 8028E120 3C178019 */  lui   $s7, %hi(D_8018D8C0) # $s7, 0x8019
/* 0F7734 8028E124 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0F7738 8028E128 00009825 */  move  $s3, $zero
/* 0F773C 8028E12C 00009025 */  move  $s2, $zero
/* 0F7740 8028E130 26F7D8C0 */  addiu $s7, %lo(D_8018D8C0) # addiu $s7, $s7, -0x2740
/* 0F7744 8028E134 2694C4DC */  addiu $s4, %lo(D_800DC4DC) # addiu $s4, $s4, -0x3b24
/* 0F7748 8028E138 26106990 */  addiu $s0, %lo(gPlayers) # addiu $s0, $s0, 0x6990
/* 0F774C 8028E13C 00008825 */  move  $s1, $zero
/* 0F7750 8028E140 24150DD8 */  li    $s5, 3544
/* 0F7754 8028E144 24160004 */  li    $s6, 4
/* 0F7758 8028E148 27BE0050 */  addiu $fp, $sp, 0x50
.L8028E14C:
/* 0F775C 8028E14C 96020000 */  lhu   $v0, ($s0)
/* 0F7760 8028E150 304E8000 */  andi  $t6, $v0, 0x8000
/* 0F7764 8028E154 11C00034 */  beqz  $t6, .L8028E228
/* 0F7768 8028E158 304F0800 */   andi  $t7, $v0, 0x800
/* 0F776C 8028E15C 15E00032 */  bnez  $t7, .L8028E228
/* 0F7770 8028E160 0011C040 */   sll   $t8, $s1, 1
/* 0F7774 8028E164 02F8C821 */  addu  $t9, $s7, $t8
/* 0F7778 8028E168 87280000 */  lh    $t0, ($t9)
/* 0F777C 8028E16C 00135040 */  sll   $t2, $s3, 1
/* 0F7780 8028E170 03AA5821 */  addu  $t3, $sp, $t2
/* 0F7784 8028E174 0503001B */  bgezl $t0, .L8028E1E4
/* 0F7788 8028E178 8E990000 */   lw    $t9, ($s4)
/* 0F778C 8028E17C 8E8A0000 */  lw    $t2, ($s4)
/* 0F7790 8028E180 00126840 */  sll   $t5, $s2, 1
/* 0F7794 8028E184 26520001 */  addiu $s2, $s2, 1
/* 0F7798 8028E188 020A5823 */  subu  $t3, $s0, $t2
/* 0F779C 8028E18C 0175001A */  div   $zero, $t3, $s5
/* 0F77A0 8028E190 34490800 */  ori   $t1, $v0, 0x800
/* 0F77A4 8028E194 00006012 */  mflo  $t4
/* 0F77A8 8028E198 03CD7021 */  addu  $t6, $fp, $t5
/* 0F77AC 8028E19C 00127C00 */  sll   $t7, $s2, 0x10
/* 0F77B0 8028E1A0 A6090000 */  sh    $t1, ($s0)
/* 0F77B4 8028E1A4 16A00002 */  bnez  $s5, .L8028E1B0
/* 0F77B8 8028E1A8 00000000 */   nop   
/* 0F77BC 8028E1AC 0007000D */  break 7
.L8028E1B0:
/* 0F77C0 8028E1B0 2401FFFF */  li    $at, -1
/* 0F77C4 8028E1B4 16A10004 */  bne   $s5, $at, .L8028E1C8
/* 0F77C8 8028E1B8 3C018000 */   lui   $at, 0x8000
/* 0F77CC 8028E1BC 15610002 */  bne   $t3, $at, .L8028E1C8
/* 0F77D0 8028E1C0 00000000 */   nop   
/* 0F77D4 8028E1C4 0006000D */  break 6
.L8028E1C8:
/* 0F77D8 8028E1C8 A5CC0000 */  sh    $t4, ($t6)
/* 0F77DC 8028E1CC 000F9403 */  sra   $s2, $t7, 0x10
/* 0F77E0 8028E1D0 0C032846 */  jal   func_800CA118
/* 0F77E4 8028E1D4 322400FF */   andi  $a0, $s1, 0xff
/* 0F77E8 8028E1D8 10000014 */  b     .L8028E22C
/* 0F77EC 8028E1DC 26310001 */   addiu $s1, $s1, 1
/* 0F77F0 8028E1E0 8E990000 */  lw    $t9, ($s4)
.L8028E1E4:
/* 0F77F4 8028E1E4 26730001 */  addiu $s3, $s3, 1
/* 0F77F8 8028E1E8 00136C00 */  sll   $t5, $s3, 0x10
/* 0F77FC 8028E1EC 02194023 */  subu  $t0, $s0, $t9
/* 0F7800 8028E1F0 0115001A */  div   $zero, $t0, $s5
/* 0F7804 8028E1F4 00004812 */  mflo  $t1
/* 0F7808 8028E1F8 000D6403 */  sra   $t4, $t5, 0x10
/* 0F780C 8028E1FC A5690058 */  sh    $t1, 0x58($t3)
/* 0F7810 8028E200 16A00002 */  bnez  $s5, .L8028E20C
/* 0F7814 8028E204 00000000 */   nop   
/* 0F7818 8028E208 0007000D */  break 7
.L8028E20C:
/* 0F781C 8028E20C 2401FFFF */  li    $at, -1
/* 0F7820 8028E210 16A10004 */  bne   $s5, $at, .L8028E224
/* 0F7824 8028E214 3C018000 */   lui   $at, 0x8000
/* 0F7828 8028E218 15010002 */  bne   $t0, $at, .L8028E224
/* 0F782C 8028E21C 00000000 */   nop   
/* 0F7830 8028E220 0006000D */  break 6
.L8028E224:
/* 0F7834 8028E224 01809825 */  move  $s3, $t4
.L8028E228:
/* 0F7838 8028E228 26310001 */  addiu $s1, $s1, 1
.L8028E22C:
/* 0F783C 8028E22C 1636FFC7 */  bne   $s1, $s6, .L8028E14C
/* 0F7840 8028E230 26100DD8 */   addiu $s0, $s0, 0xdd8
/* 0F7844 8028E234 24010001 */  li    $at, 1
/* 0F7848 8028E238 16610006 */  bne   $s3, $at, .L8028E254
/* 0F784C 8028E23C 87AE0058 */   lh    $t6, 0x58($sp)
/* 0F7850 8028E240 3C01800E */  lui   $at, %hi(D_800DC5E8) # $at, 0x800e
/* 0F7854 8028E244 0C0A380A */  jal   func_8028E028
/* 0F7858 8028E248 AC2EC5E8 */   sw    $t6, %lo(D_800DC5E8)($at)
/* 0F785C 8028E24C 10000007 */  b     .L8028E26C
/* 0F7860 8028E250 8FBF003C */   lw    $ra, 0x3c($sp)
.L8028E254:
/* 0F7864 8028E254 16600004 */  bnez  $s3, .L8028E268
/* 0F7868 8028E258 87AF0050 */   lh    $t7, 0x50($sp)
/* 0F786C 8028E25C 3C01800E */  lui   $at, %hi(D_800DC5E8) # $at, 0x800e
/* 0F7870 8028E260 0C0A380A */  jal   func_8028E028
/* 0F7874 8028E264 AC2FC5E8 */   sw    $t7, %lo(D_800DC5E8)($at)
.L8028E268:
/* 0F7878 8028E268 8FBF003C */  lw    $ra, 0x3c($sp)
.L8028E26C:
/* 0F787C 8028E26C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0F7880 8028E270 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0F7884 8028E274 8FB20020 */  lw    $s2, 0x20($sp)
/* 0F7888 8028E278 8FB30024 */  lw    $s3, 0x24($sp)
/* 0F788C 8028E27C 8FB40028 */  lw    $s4, 0x28($sp)
/* 0F7890 8028E280 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0F7894 8028E284 8FB60030 */  lw    $s6, 0x30($sp)
/* 0F7898 8028E288 8FB70034 */  lw    $s7, 0x34($sp)
/* 0F789C 8028E28C 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0F78A0 8028E290 03E00008 */  jr    $ra
/* 0F78A4 8028E294 27BD0068 */   addiu $sp, $sp, 0x68