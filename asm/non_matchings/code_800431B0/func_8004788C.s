glabel func_8004788C
/* 04848C 8004788C 44876000 */  mtc1  $a3, $f12
/* 048490 80047890 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 048494 80047894 AFBF0024 */  sw    $ra, 0x24($sp)
/* 048498 80047898 AFA60030 */  sw    $a2, 0x30($sp)
/* 04849C 8004789C 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 0484A0 800478A0 44076000 */  mfc1  $a3, $f12
/* 0484A4 800478A4 0C0108CC */  jal   func_80042330
/* 0484A8 800478A8 01C03025 */   move  $a2, $t6
/* 0484AC 800478AC 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 0484B0 800478B0 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 0484B4 800478B4 8D030000 */  lw    $v1, ($t0)
/* 0484B8 800478B8 3C190D00 */  lui   $t9, %hi(D_0D007CB8) # $t9, 0xd00
/* 0484BC 800478BC 27397CB8 */  addiu $t9, %lo(D_0D007CB8) # addiu $t9, $t9, 0x7cb8
/* 0484C0 800478C0 246F0008 */  addiu $t7, $v1, 8
/* 0484C4 800478C4 AD0F0000 */  sw    $t7, ($t0)
/* 0484C8 800478C8 3C180600 */  lui   $t8, 0x600
/* 0484CC 800478CC AC780000 */  sw    $t8, ($v1)
/* 0484D0 800478D0 AC790004 */  sw    $t9, 4($v1)
/* 0484D4 800478D4 8FAB0050 */  lw    $t3, 0x50($sp)
/* 0484D8 800478D8 8FAA004C */  lw    $t2, 0x4c($sp)
/* 0484DC 800478DC 8FA90048 */  lw    $t1, 0x48($sp)
/* 0484E0 800478E0 8FA70044 */  lw    $a3, 0x44($sp)
/* 0484E4 800478E4 8FA60040 */  lw    $a2, 0x40($sp)
/* 0484E8 800478E8 8FA5003C */  lw    $a1, 0x3c($sp)
/* 0484EC 800478EC 8FA40038 */  lw    $a0, 0x38($sp)
/* 0484F0 800478F0 AFAB0018 */  sw    $t3, 0x18($sp)
/* 0484F4 800478F4 AFAA0014 */  sw    $t2, 0x14($sp)
/* 0484F8 800478F8 0C011C1A */  jal   func_80047068
/* 0484FC 800478FC AFA90010 */   sw    $t1, 0x10($sp)
/* 048500 80047900 8FBF0024 */  lw    $ra, 0x24($sp)
/* 048504 80047904 27BD0028 */  addiu $sp, $sp, 0x28
/* 048508 80047908 03E00008 */  jr    $ra
/* 04850C 8004790C 00000000 */   nop   