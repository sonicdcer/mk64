glabel func_802B6214
/* 11F824 802B6214 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 11F828 802B6218 AFB0001C */  sw    $s0, 0x1c($sp)
/* 11F82C 802B621C 00808025 */  move  $s0, $a0
/* 11F830 802B6220 AFBF0024 */  sw    $ra, 0x24($sp)
/* 11F834 802B6224 AFB10020 */  sw    $s1, 0x20($sp)
/* 11F838 802B6228 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 11F83C 802B622C AFA50044 */  sw    $a1, 0x44($sp)
/* 11F840 802B6230 00C08825 */  move  $s1, $a2
/* 11F844 802B6234 0C0AE006 */  jal   sins
/* 11F848 802B6238 94C40000 */   lhu   $a0, ($a2)
/* 11F84C 802B623C E7A0003C */  swc1  $f0, 0x3c($sp)
/* 11F850 802B6240 0C0AE00E */  jal   coss
/* 11F854 802B6244 96240000 */   lhu   $a0, ($s1)
/* 11F858 802B6248 46000506 */  mov.s $f20, $f0
/* 11F85C 802B624C 0C0AE006 */  jal   sins
/* 11F860 802B6250 96240002 */   lhu   $a0, 2($s1)
/* 11F864 802B6254 96240002 */  lhu   $a0, 2($s1)
/* 11F868 802B6258 0C0AE00E */  jal   coss
/* 11F86C 802B625C E7A00034 */   swc1  $f0, 0x34($sp)
/* 11F870 802B6260 96240004 */  lhu   $a0, 4($s1)
/* 11F874 802B6264 0C0AE006 */  jal   sins
/* 11F878 802B6268 E7A00030 */   swc1  $f0, 0x30($sp)
/* 11F87C 802B626C 96240004 */  lhu   $a0, 4($s1)
/* 11F880 802B6270 0C0AE00E */  jal   coss
/* 11F884 802B6274 E7A0002C */   swc1  $f0, 0x2c($sp)
/* 11F888 802B6278 C7AE0034 */  lwc1  $f14, 0x34($sp)
/* 11F88C 802B627C C7B2003C */  lwc1  $f18, 0x3c($sp)
/* 11F890 802B6280 C7B00030 */  lwc1  $f16, 0x30($sp)
/* 11F894 802B6284 C7A2002C */  lwc1  $f2, 0x2c($sp)
/* 11F898 802B6288 460E9302 */  mul.s $f12, $f18, $f14
/* 11F89C 802B628C 46008287 */  neg.s $f10, $f16
/* 11F8A0 802B6290 8FA20044 */  lw    $v0, 0x44($sp)
/* 11F8A4 802B6294 46008102 */  mul.s $f4, $f16, $f0
/* 11F8A8 802B6298 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 11F8AC 802B629C 46026182 */  mul.s $f6, $f12, $f2
/* 11F8B0 802B62A0 46062200 */  add.s $f8, $f4, $f6
/* 11F8B4 802B62A4 46025102 */  mul.s $f4, $f10, $f2
/* 11F8B8 802B62A8 00000000 */  nop   
/* 11F8BC 802B62AC 46006182 */  mul.s $f6, $f12, $f0
/* 11F8C0 802B62B0 E6080000 */  swc1  $f8, ($s0)
/* 11F8C4 802B62B4 460EA282 */  mul.s $f10, $f20, $f14
/* 11F8C8 802B62B8 46062200 */  add.s $f8, $f4, $f6
/* 11F8CC 802B62BC E60A0020 */  swc1  $f10, 0x20($s0)
/* 11F8D0 802B62C0 E6080010 */  swc1  $f8, 0x10($s0)
/* 11F8D4 802B62C4 844E0000 */  lh    $t6, ($v0)
/* 11F8D8 802B62C8 4602A202 */  mul.s $f8, $f20, $f2
/* 11F8DC 802B62CC 448E2000 */  mtc1  $t6, $f4
/* 11F8E0 802B62D0 4600A282 */  mul.s $f10, $f20, $f0
/* 11F8E4 802B62D4 E6080004 */  swc1  $f8, 4($s0)
/* 11F8E8 802B62D8 46109302 */  mul.s $f12, $f18, $f16
/* 11F8EC 802B62DC E60A0014 */  swc1  $f10, 0x14($s0)
/* 11F8F0 802B62E0 46007287 */  neg.s $f10, $f14
/* 11F8F4 802B62E4 468021A0 */  cvt.s.w $f6, $f4
/* 11F8F8 802B62E8 46009107 */  neg.s $f4, $f18
/* 11F8FC 802B62EC E6060030 */  swc1  $f6, 0x30($s0)
/* 11F900 802B62F0 E6040024 */  swc1  $f4, 0x24($s0)
/* 11F904 802B62F4 844F0002 */  lh    $t7, 2($v0)
/* 11F908 802B62F8 46005102 */  mul.s $f4, $f10, $f0
/* 11F90C 802B62FC 448F3000 */  mtc1  $t7, $f6
/* 11F910 802B6300 00000000 */  nop   
/* 11F914 802B6304 46803220 */  cvt.s.w $f8, $f6
/* 11F918 802B6308 46026182 */  mul.s $f6, $f12, $f2
/* 11F91C 802B630C 00000000 */  nop   
/* 11F920 802B6310 46027282 */  mul.s $f10, $f14, $f2
/* 11F924 802B6314 E6080034 */  swc1  $f8, 0x34($s0)
/* 11F928 802B6318 46062200 */  add.s $f8, $f4, $f6
/* 11F92C 802B631C 46006102 */  mul.s $f4, $f12, $f0
/* 11F930 802B6320 44800000 */  mtc1  $zero, $f0
/* 11F934 802B6324 E6080008 */  swc1  $f8, 8($s0)
/* 11F938 802B6328 4610A202 */  mul.s $f8, $f20, $f16
/* 11F93C 802B632C 46045180 */  add.s $f6, $f10, $f4
/* 11F940 802B6330 E6080028 */  swc1  $f8, 0x28($s0)
/* 11F944 802B6334 E6060018 */  swc1  $f6, 0x18($s0)
/* 11F948 802B6338 84580004 */  lh    $t8, 4($v0)
/* 11F94C 802B633C 44813000 */  mtc1  $at, $f6
/* 11F950 802B6340 E600000C */  swc1  $f0, 0xc($s0)
/* 11F954 802B6344 44985000 */  mtc1  $t8, $f10
/* 11F958 802B6348 E600001C */  swc1  $f0, 0x1c($s0)
/* 11F95C 802B634C E600002C */  swc1  $f0, 0x2c($s0)
/* 11F960 802B6350 46805120 */  cvt.s.w $f4, $f10
/* 11F964 802B6354 E606003C */  swc1  $f6, 0x3c($s0)
/* 11F968 802B6358 E6040038 */  swc1  $f4, 0x38($s0)
/* 11F96C 802B635C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 11F970 802B6360 8FB10020 */  lw    $s1, 0x20($sp)
/* 11F974 802B6364 8FB0001C */  lw    $s0, 0x1c($sp)
/* 11F978 802B6368 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 11F97C 802B636C 03E00008 */  jr    $ra
/* 11F980 802B6370 27BD0040 */   addiu $sp, $sp, 0x40