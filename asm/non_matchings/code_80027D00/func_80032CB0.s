glabel func_80032CB0
/* 0338B0 80032CB0 44856000 */  mtc1  $a1, $f12
/* 0338B4 80032CB4 C484009C */  lwc1  $f4, 0x9c($a0)
/* 0338B8 80032CB8 44800000 */  mtc1  $zero, $f0
/* 0338BC 80032CBC 460C2181 */  sub.s $f6, $f4, $f12
/* 0338C0 80032CC0 E486009C */  swc1  $f6, 0x9c($a0)
/* 0338C4 80032CC4 C488009C */  lwc1  $f8, 0x9c($a0)
/* 0338C8 80032CC8 4600403E */  c.le.s $f8, $f0
/* 0338CC 80032CCC 00000000 */  nop   
/* 0338D0 80032CD0 45020003 */  bc1fl .L80032CE0
/* 0338D4 80032CD4 C48A0094 */   lwc1  $f10, 0x94($a0)
/* 0338D8 80032CD8 E480009C */  swc1  $f0, 0x9c($a0)
/* 0338DC 80032CDC C48A0094 */  lwc1  $f10, 0x94($a0)
.L80032CE0:
/* 0338E0 80032CE0 3C01800F */  lui   $at, %hi(D_800EDB98)
/* 0338E4 80032CE4 D432DB98 */  ldc1  $f18, %lo(D_800EDB98)($at)
/* 0338E8 80032CE8 46005421 */  cvt.d.s $f16, $f10
/* 0338EC 80032CEC 3C01800F */  lui   $at, %hi(D_800EDBA0)
/* 0338F0 80032CF0 4632803C */  c.lt.d $f16, $f18
/* 0338F4 80032CF4 00000000 */  nop   
/* 0338F8 80032CF8 45020003 */  bc1fl .L80032D08
/* 0338FC 80032CFC C480009C */   lwc1  $f0, 0x9c($a0)
/* 033900 80032D00 E480008C */  swc1  $f0, 0x8c($a0)
/* 033904 80032D04 C480009C */  lwc1  $f0, 0x9c($a0)
.L80032D08:
/* 033908 80032D08 C4820214 */  lwc1  $f2, 0x214($a0)
/* 03390C 80032D0C 4600103E */  c.le.s $f2, $f0
/* 033910 80032D10 00000000 */  nop   
/* 033914 80032D14 45000003 */  bc1f  .L80032D24
/* 033918 80032D18 00000000 */   nop   
/* 03391C 80032D1C E482009C */  swc1  $f2, 0x9c($a0)
/* 033920 80032D20 C480009C */  lwc1  $f0, 0x9c($a0)
.L80032D24:
/* 033924 80032D24 D426DBA0 */  ldc1  $f6, %lo(D_800EDBA0)($at)
/* 033928 80032D28 46001121 */  cvt.d.s $f4, $f2
/* 03392C 80032D2C 460002A1 */  cvt.d.s $f10, $f0
/* 033930 80032D30 46262202 */  mul.d $f8, $f4, $f6
/* 033934 80032D34 3C01EFFF */  lui   $at, (0xEFFFFFFF >> 16) # lui $at, 0xefff
/* 033938 80032D38 4628503E */  c.le.d $f10, $f8
/* 03393C 80032D3C 00000000 */  nop   
/* 033940 80032D40 45020007 */  bc1fl .L80032D60
/* 033944 80032D44 8C98000C */   lw    $t8, 0xc($a0)
/* 033948 80032D48 8C8E000C */  lw    $t6, 0xc($a0)
/* 03394C 80032D4C 3421FFFF */  ori   $at, (0xEFFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 033950 80032D50 C480009C */  lwc1  $f0, 0x9c($a0)
/* 033954 80032D54 01C17824 */  and   $t7, $t6, $at
/* 033958 80032D58 AC8F000C */  sw    $t7, 0xc($a0)
/* 03395C 80032D5C 8C98000C */  lw    $t8, 0xc($a0)
.L80032D60:
/* 033960 80032D60 46000402 */  mul.s $f16, $f0, $f0
/* 033964 80032D64 3C01FDFF */  lui   $at, (0xFDFFFFFF >> 16) # lui $at, 0xfdff
/* 033968 80032D68 3421FFFF */  ori   $at, (0xFDFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 03396C 80032D6C 0301C824 */  and   $t9, $t8, $at
/* 033970 80032D70 3C0141C8 */  li    $at, 0x41C80000 # 25.000000
/* 033974 80032D74 44819000 */  mtc1  $at, $f18
/* 033978 80032D78 84880044 */  lh    $t0, 0x44($a0)
/* 03397C 80032D7C AC99000C */  sw    $t9, 0xc($a0)
/* 033980 80032D80 46128103 */  div.s $f4, $f16, $f18
/* 033984 80032D84 3109FFDF */  andi  $t1, $t0, 0xffdf
/* 033988 80032D88 A4890044 */  sh    $t1, 0x44($a0)
/* 03398C 80032D8C 03E00008 */  jr    $ra
/* 033990 80032D90 E4840098 */   swc1  $f4, 0x98($a0)