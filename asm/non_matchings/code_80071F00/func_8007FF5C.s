glabel func_8007FF5C
/* 080B5C 8007FF5C 000470C0 */  sll   $t6, $a0, 3
/* 080B60 8007FF60 01C47023 */  subu  $t6, $t6, $a0
/* 080B64 8007FF64 000E7140 */  sll   $t6, $t6, 5
/* 080B68 8007FF68 3C028016 */  lui   $v0, %hi(D_80165CF5) # 0x8016
/* 080B6C 8007FF6C 004E1021 */  addu  $v0, $v0, $t6
/* 080B70 8007FF70 90425CF5 */  lbu   $v0, %lo(D_80165CF5)($v0) # 0x5cf5($v0)
/* 080B74 8007FF74 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 080B78 8007FF78 24010001 */  li    $at, 1
/* 080B7C 8007FF7C 10410006 */  beq   $v0, $at, .L8007FF98
/* 080B80 8007FF80 AFBF0014 */   sw    $ra, 0x14($sp)
/* 080B84 8007FF84 24010002 */  li    $at, 2
/* 080B88 8007FF88 10410007 */  beq   $v0, $at, .L8007FFA8
/* 080B8C 8007FF8C 00000000 */   nop   
/* 080B90 8007FF90 10000008 */  b     .L8007FFB4
/* 080B94 8007FF94 8FBF0014 */   lw    $ra, 0x14($sp)
.L8007FF98:
/* 080B98 8007FF98 0C01FED2 */  jal   func_8007FB48
/* 080B9C 8007FF9C 00000000 */   nop   
/* 080BA0 8007FFA0 10000004 */  b     .L8007FFB4
/* 080BA4 8007FFA4 8FBF0014 */   lw    $ra, 0x14($sp)
.L8007FFA8:
/* 080BA8 8007FFA8 0C01FFA9 */  jal   func_8007FEA4
/* 080BAC 8007FFAC 00000000 */   nop   
/* 080BB0 8007FFB0 8FBF0014 */  lw    $ra, 0x14($sp)
.L8007FFB4:
/* 080BB4 8007FFB4 27BD0018 */  addiu $sp, $sp, 0x18
/* 080BB8 8007FFB8 03E00008 */  jr    $ra
/* 080BBC 8007FFBC 00000000 */   nop   