glabel func_80099AEC
/* 09A6EC 80099AEC 27BDFF68 */  addiu $sp, $sp, -0x98
/* 09A6F0 80099AF0 3C0E800E */  lui   $t6, %hi(gGamestate) # $t6, 0x800e
/* 09A6F4 80099AF4 8DCEC50C */  lw    $t6, %lo(gGamestate)($t6)
/* 09A6F8 80099AF8 24010004 */  li    $at, 4
/* 09A6FC 80099AFC AFBF004C */  sw    $ra, 0x4c($sp)
/* 09A700 80099B00 AFBE0048 */  sw    $fp, 0x48($sp)
/* 09A704 80099B04 AFB70044 */  sw    $s7, 0x44($sp)
/* 09A708 80099B08 AFB60040 */  sw    $s6, 0x40($sp)
/* 09A70C 80099B0C AFB5003C */  sw    $s5, 0x3c($sp)
/* 09A710 80099B10 AFB40038 */  sw    $s4, 0x38($sp)
/* 09A714 80099B14 AFB30034 */  sw    $s3, 0x34($sp)
/* 09A718 80099B18 AFB20030 */  sw    $s2, 0x30($sp)
/* 09A71C 80099B1C AFB1002C */  sw    $s1, 0x2c($sp)
/* 09A720 80099B20 15C10004 */  bne   $t6, $at, .L80099B34
/* 09A724 80099B24 AFB00028 */   sw    $s0, 0x28($sp)
/* 09A728 80099B28 240F0500 */  li    $t7, 1280
/* 09A72C 80099B2C 10000003 */  b     .L80099B3C
/* 09A730 80099B30 AFAF0060 */   sw    $t7, 0x60($sp)
.L80099B34:
/* 09A734 80099B34 24181000 */  li    $t8, 4096
/* 09A738 80099B38 AFB80060 */  sw    $t8, 0x60($sp)
.L80099B3C:
/* 09A73C 80099B3C 3C028019 */  lui   $v0, %hi(D_8018E060) # 0x8019
/* 09A740 80099B40 2451E060 */  addiu $s1, $v0, %lo(D_8018E060) # -0x1fa0
/* 09A744 80099B44 8E320000 */  lw    $s2, ($s1)
/* 09A748 80099B48 3C148019 */  lui   $s4, %hi(gMenuCompressedBuffer) # $s4, 0x8019
/* 09A74C 80099B4C 0000A825 */  move  $s5, $zero
/* 09A750 80099B50 124000B4 */  beqz  $s2, .L80099E24
/* 09A754 80099B54 2694D9B4 */   addiu $s4, %lo(gMenuCompressedBuffer) # addiu $s4, $s4, -0x264c
/* 09A758 80099B58 96430010 */  lhu   $v1, 0x10($s2)
/* 09A75C 80099B5C 24101400 */  li    $s0, 5120
/* 09A760 80099B60 10600003 */  beqz  $v1, .L80099B70
/* 09A764 80099B64 00000000 */   nop   
/* 09A768 80099B68 10000001 */  b     .L80099B70
/* 09A76C 80099B6C 00608025 */   move  $s0, $v1
.L80099B70:
/* 09A770 80099B70 06010004 */  bgez  $s0, .L80099B84
/* 09A774 80099B74 32190007 */   andi  $t9, $s0, 7
/* 09A778 80099B78 13200002 */  beqz  $t9, .L80099B84
/* 09A77C 80099B7C 00000000 */   nop   
/* 09A780 80099B80 2739FFF8 */  addiu $t9, $t9, -8
.L80099B84:
/* 09A784 80099B84 53200008 */  beql  $t9, $zero, .L80099BA8
/* 09A788 80099B88 8E840000 */   lw    $a0, ($s4)
/* 09A78C 80099B8C 06010003 */  bgez  $s0, .L80099B9C
/* 09A790 80099B90 001040C3 */   sra   $t0, $s0, 3
/* 09A794 80099B94 26010007 */  addiu $at, $s0, 7
/* 09A798 80099B98 000140C3 */  sra   $t0, $at, 3
.L80099B9C:
/* 09A79C 80099B9C 000848C0 */  sll   $t1, $t0, 3
/* 09A7A0 80099BA0 25300008 */  addiu $s0, $t1, 8
/* 09A7A4 80099BA4 8E840000 */  lw    $a0, ($s4)
.L80099BA8:
/* 09A7A8 80099BA8 0C0336E0 */  jal   osInvalDCache
/* 09A7AC 80099BAC 02002825 */   move  $a1, $s0
/* 09A7B0 80099BB0 8E4A0004 */  lw    $t2, 4($s2)
/* 09A7B4 80099BB4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 09A7B8 80099BB8 8E8C0000 */  lw    $t4, ($s4)
/* 09A7BC 80099BBC 3C168015 */  lui   $s6, %hi(gDmaMesgQueue) # $s6, 0x8015
/* 09A7C0 80099BC0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 09A7C4 80099BC4 3C020073 */  lui   $v0, %hi(_textures_0aSegmentRomStart) # $v0, 0x73
/* 09A7C8 80099BC8 26D6EF58 */  addiu $s6, %lo(gDmaMesgQueue) # addiu $s6, $s6, -0x10a8
/* 09A7CC 80099BCC 24429A30 */  addiu $v0, %lo(_textures_0aSegmentRomStart) # addiu $v0, $v0, -0x65d0
/* 09A7D0 80099BD0 01415824 */  and   $t3, $t2, $at
/* 09A7D4 80099BD4 004B3821 */  addu  $a3, $v0, $t3
/* 09A7D8 80099BD8 AFA20058 */  sw    $v0, 0x58($sp)
/* 09A7DC 80099BDC AFB60018 */  sw    $s6, 0x18($sp)
/* 09A7E0 80099BE0 AFB00014 */  sw    $s0, 0x14($sp)
/* 09A7E4 80099BE4 27A4006C */  addiu $a0, $sp, 0x6c
/* 09A7E8 80099BE8 00002825 */  move  $a1, $zero
/* 09A7EC 80099BEC 00003025 */  move  $a2, $zero
/* 09A7F0 80099BF0 0C03370C */  jal   osPiStartDma
/* 09A7F4 80099BF4 AFAC0010 */   sw    $t4, 0x10($sp)
/* 09A7F8 80099BF8 27B70068 */  addiu $s7, $sp, 0x68
/* 09A7FC 80099BFC 02E02825 */  move  $a1, $s7
/* 09A800 80099C00 02C02025 */  move  $a0, $s6
/* 09A804 80099C04 0C0335D4 */  jal   osRecvMesg
/* 09A808 80099C08 24060001 */   li    $a2, 1
/* 09A80C 80099C0C 3C1E8019 */  lui   $fp, %hi(sMenuTextureMap) # $fp, 0x8019
/* 09A810 80099C10 27DEE118 */  addiu $fp, %lo(sMenuTextureMap) # addiu $fp, $fp, -0x1ee8
/* 09A814 80099C14 8E220008 */  lw    $v0, 8($s1)
.L80099C18:
/* 09A818 80099C18 8FB30060 */  lw    $s3, 0x60($sp)
/* 09A81C 80099C1C 54400006 */  bnel  $v0, $zero, .L80099C38
/* 09A820 80099C20 94430010 */   lhu   $v1, 0x10($v0)
/* 09A824 80099C24 26B50001 */  addiu $s5, $s5, 1
/* 09A828 80099C28 00156E00 */  sll   $t5, $s5, 0x18
/* 09A82C 80099C2C 10000029 */  b     .L80099CD4
/* 09A830 80099C30 000DAE03 */   sra   $s5, $t5, 0x18
/* 09A834 80099C34 94430010 */  lhu   $v1, 0x10($v0)
.L80099C38:
/* 09A838 80099C38 00137880 */  sll   $t7, $s3, 2
/* 09A83C 80099C3C 00409025 */  move  $s2, $v0
/* 09A840 80099C40 10600003 */  beqz  $v1, .L80099C50
/* 09A844 80099C44 01E09825 */   move  $s3, $t7
/* 09A848 80099C48 10000002 */  b     .L80099C54
/* 09A84C 80099C4C 00608025 */   move  $s0, $v1
.L80099C50:
/* 09A850 80099C50 24101400 */  li    $s0, 5120
.L80099C54:
/* 09A854 80099C54 06010004 */  bgez  $s0, .L80099C68
/* 09A858 80099C58 32180007 */   andi  $t8, $s0, 7
/* 09A85C 80099C5C 13000002 */  beqz  $t8, .L80099C68
/* 09A860 80099C60 00000000 */   nop   
/* 09A864 80099C64 2718FFF8 */  addiu $t8, $t8, -8
.L80099C68:
/* 09A868 80099C68 53000008 */  beql  $t8, $zero, .L80099C8C
/* 09A86C 80099C6C 8E890000 */   lw    $t1, ($s4)
/* 09A870 80099C70 06010003 */  bgez  $s0, .L80099C80
/* 09A874 80099C74 0010C8C3 */   sra   $t9, $s0, 3
/* 09A878 80099C78 26010007 */  addiu $at, $s0, 7
/* 09A87C 80099C7C 0001C8C3 */  sra   $t9, $at, 3
.L80099C80:
/* 09A880 80099C80 001940C0 */  sll   $t0, $t9, 3
/* 09A884 80099C84 25100008 */  addiu $s0, $t0, 8
/* 09A888 80099C88 8E890000 */  lw    $t1, ($s4)
.L80099C8C:
/* 09A88C 80099C8C 02002825 */  move  $a1, $s0
/* 09A890 80099C90 0C0336E0 */  jal   osInvalDCache
/* 09A894 80099C94 02692021 */   addu  $a0, $s3, $t1
/* 09A898 80099C98 8E4B0004 */  lw    $t3, 4($s2)
/* 09A89C 80099C9C 8E8D0000 */  lw    $t5, ($s4)
/* 09A8A0 80099CA0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 09A8A4 80099CA4 8FAA0058 */  lw    $t2, 0x58($sp)
/* 09A8A8 80099CA8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 09A8AC 80099CAC 01616024 */  and   $t4, $t3, $at
/* 09A8B0 80099CB0 026D7021 */  addu  $t6, $s3, $t5
/* 09A8B4 80099CB4 AFAE0010 */  sw    $t6, 0x10($sp)
/* 09A8B8 80099CB8 AFB60018 */  sw    $s6, 0x18($sp)
/* 09A8BC 80099CBC AFB00014 */  sw    $s0, 0x14($sp)
/* 09A8C0 80099CC0 27A4006C */  addiu $a0, $sp, 0x6c
/* 09A8C4 80099CC4 00002825 */  move  $a1, $zero
/* 09A8C8 80099CC8 00003025 */  move  $a2, $zero
/* 09A8CC 80099CCC 0C03370C */  jal   osPiStartDma
/* 09A8D0 80099CD0 014C3821 */   addu  $a3, $t2, $t4
.L80099CD4:
/* 09A8D4 80099CD4 8E2F0004 */  lw    $t7, 4($s1)
/* 09A8D8 80099CD8 3C098019 */  lui   $t1, %hi(gMenuTextureBuffer) # $t1, 0x8019
/* 09A8DC 80099CDC 8D29D9B0 */  lw    $t1, %lo(gMenuTextureBuffer)($t1)
/* 09A8E0 80099CE0 000FC0C0 */  sll   $t8, $t7, 3
/* 09A8E4 80099CE4 031EC821 */  addu  $t9, $t8, $fp
/* 09A8E8 80099CE8 8F220004 */  lw    $v0, 4($t9)
/* 09A8EC 80099CEC 8E840000 */  lw    $a0, ($s4)
/* 09A8F0 80099CF0 00024040 */  sll   $t0, $v0, 1
/* 09A8F4 80099CF4 0C010034 */  jal   mio0decode
/* 09A8F8 80099CF8 01092821 */   addu  $a1, $t0, $t1
/* 09A8FC 80099CFC AE200000 */  sw    $zero, ($s1)
/* 09A900 80099D00 16A00048 */  bnez  $s5, .L80099E24
/* 09A904 80099D04 26310008 */   addiu $s1, $s1, 8
/* 09A908 80099D08 8FB30060 */  lw    $s3, 0x60($sp)
/* 09A90C 80099D0C 02C02025 */  move  $a0, $s6
/* 09A910 80099D10 02E02825 */  move  $a1, $s7
/* 09A914 80099D14 00135880 */  sll   $t3, $s3, 2
/* 09A918 80099D18 01609825 */  move  $s3, $t3
/* 09A91C 80099D1C 0C0335D4 */  jal   osRecvMesg
/* 09A920 80099D20 24060001 */   li    $a2, 1
/* 09A924 80099D24 8E220008 */  lw    $v0, 8($s1)
/* 09A928 80099D28 54400006 */  bnel  $v0, $zero, .L80099D44
/* 09A92C 80099D2C 94430010 */   lhu   $v1, 0x10($v0)
/* 09A930 80099D30 26B50001 */  addiu $s5, $s5, 1
/* 09A934 80099D34 00155600 */  sll   $t2, $s5, 0x18
/* 09A938 80099D38 10000026 */  b     .L80099DD4
/* 09A93C 80099D3C 000AAE03 */   sra   $s5, $t2, 0x18
/* 09A940 80099D40 94430010 */  lhu   $v1, 0x10($v0)
.L80099D44:
/* 09A944 80099D44 00409025 */  move  $s2, $v0
/* 09A948 80099D48 24101400 */  li    $s0, 5120
/* 09A94C 80099D4C 10600003 */  beqz  $v1, .L80099D5C
/* 09A950 80099D50 00000000 */   nop   
/* 09A954 80099D54 10000001 */  b     .L80099D5C
/* 09A958 80099D58 00608025 */   move  $s0, $v1
.L80099D5C:
/* 09A95C 80099D5C 06010004 */  bgez  $s0, .L80099D70
/* 09A960 80099D60 320D0007 */   andi  $t5, $s0, 7
/* 09A964 80099D64 11A00002 */  beqz  $t5, .L80099D70
/* 09A968 80099D68 00000000 */   nop   
/* 09A96C 80099D6C 25ADFFF8 */  addiu $t5, $t5, -8
.L80099D70:
/* 09A970 80099D70 51A00008 */  beql  $t5, $zero, .L80099D94
/* 09A974 80099D74 8E840000 */   lw    $a0, ($s4)
/* 09A978 80099D78 06010003 */  bgez  $s0, .L80099D88
/* 09A97C 80099D7C 001070C3 */   sra   $t6, $s0, 3
/* 09A980 80099D80 26010007 */  addiu $at, $s0, 7
/* 09A984 80099D84 000170C3 */  sra   $t6, $at, 3
.L80099D88:
/* 09A988 80099D88 000E78C0 */  sll   $t7, $t6, 3
/* 09A98C 80099D8C 25F00008 */  addiu $s0, $t7, 8
/* 09A990 80099D90 8E840000 */  lw    $a0, ($s4)
.L80099D94:
/* 09A994 80099D94 0C0336E0 */  jal   osInvalDCache
/* 09A998 80099D98 02002825 */   move  $a1, $s0
/* 09A99C 80099D9C 8E590004 */  lw    $t9, 4($s2)
/* 09A9A0 80099DA0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 09A9A4 80099DA4 8FB80058 */  lw    $t8, 0x58($sp)
/* 09A9A8 80099DA8 8E890000 */  lw    $t1, ($s4)
/* 09A9AC 80099DAC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 09A9B0 80099DB0 03214024 */  and   $t0, $t9, $at
/* 09A9B4 80099DB4 AFB60018 */  sw    $s6, 0x18($sp)
/* 09A9B8 80099DB8 AFB00014 */  sw    $s0, 0x14($sp)
/* 09A9BC 80099DBC 27A4006C */  addiu $a0, $sp, 0x6c
/* 09A9C0 80099DC0 00002825 */  move  $a1, $zero
/* 09A9C4 80099DC4 00003025 */  move  $a2, $zero
/* 09A9C8 80099DC8 03083821 */  addu  $a3, $t8, $t0
/* 09A9CC 80099DCC 0C03370C */  jal   osPiStartDma
/* 09A9D0 80099DD0 AFA90010 */   sw    $t1, 0x10($sp)
.L80099DD4:
/* 09A9D4 80099DD4 8E2B0004 */  lw    $t3, 4($s1)
/* 09A9D8 80099DD8 3C0F8019 */  lui   $t7, %hi(gMenuTextureBuffer) # $t7, 0x8019
/* 09A9DC 80099DDC 8DEFD9B0 */  lw    $t7, %lo(gMenuTextureBuffer)($t7)
/* 09A9E0 80099DE0 000B50C0 */  sll   $t2, $t3, 3
/* 09A9E4 80099DE4 015E6021 */  addu  $t4, $t2, $fp
/* 09A9E8 80099DE8 8D820004 */  lw    $v0, 4($t4)
/* 09A9EC 80099DEC 8E8D0000 */  lw    $t5, ($s4)
/* 09A9F0 80099DF0 00027040 */  sll   $t6, $v0, 1
/* 09A9F4 80099DF4 01CF2821 */  addu  $a1, $t6, $t7
/* 09A9F8 80099DF8 0C010034 */  jal   mio0decode
/* 09A9FC 80099DFC 026D2021 */   addu  $a0, $s3, $t5
/* 09AA00 80099E00 AE200000 */  sw    $zero, ($s1)
/* 09AA04 80099E04 16A00007 */  bnez  $s5, .L80099E24
/* 09AA08 80099E08 26310008 */   addiu $s1, $s1, 8
/* 09AA0C 80099E0C 02C02025 */  move  $a0, $s6
/* 09AA10 80099E10 02E02825 */  move  $a1, $s7
/* 09AA14 80099E14 0C0335D4 */  jal   osRecvMesg
/* 09AA18 80099E18 24060001 */   li    $a2, 1
/* 09AA1C 80099E1C 1000FF7E */  b     .L80099C18
/* 09AA20 80099E20 8E220008 */   lw    $v0, 8($s1)
.L80099E24:
/* 09AA24 80099E24 8FBF004C */  lw    $ra, 0x4c($sp)
/* 09AA28 80099E28 8FB00028 */  lw    $s0, 0x28($sp)
/* 09AA2C 80099E2C 8FB1002C */  lw    $s1, 0x2c($sp)
/* 09AA30 80099E30 8FB20030 */  lw    $s2, 0x30($sp)
/* 09AA34 80099E34 8FB30034 */  lw    $s3, 0x34($sp)
/* 09AA38 80099E38 8FB40038 */  lw    $s4, 0x38($sp)
/* 09AA3C 80099E3C 8FB5003C */  lw    $s5, 0x3c($sp)
/* 09AA40 80099E40 8FB60040 */  lw    $s6, 0x40($sp)
/* 09AA44 80099E44 8FB70044 */  lw    $s7, 0x44($sp)
/* 09AA48 80099E48 8FBE0048 */  lw    $fp, 0x48($sp)
/* 09AA4C 80099E4C 03E00008 */  jr    $ra
/* 09AA50 80099E50 27BD0098 */   addiu $sp, $sp, 0x98
.size func_80099AEC, . - func_80099AEC
