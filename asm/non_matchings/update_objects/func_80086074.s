glabel func_80086074
/* 086C74 80086074 00057880 */  sll   $t7, $a1, 2
/* 086C78 80086078 01E57823 */  subu  $t7, $t7, $a1
/* 086C7C 8008607C 3C19800E */  lui   $t9, %hi(D_800E6734) # $t9, 0x800e
/* 086C80 80086080 27396734 */  addiu $t9, %lo(D_800E6734) # addiu $t9, $t9, 0x6734
/* 086C84 80086084 000FC080 */  sll   $t8, $t7, 2
/* 086C88 80086088 03191021 */  addu  $v0, $t8, $t9
/* 086C8C 8008608C 3C018019 */  lui   $at, %hi(xOrientation) # $at, 0x8019
/* 086C90 80086090 C426D01C */  lwc1  $f6, %lo(xOrientation)($at)
/* 086C94 80086094 C4440000 */  lwc1  $f4, ($v0)
/* 086C98 80086098 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 086C9C 8008609C AFA50024 */  sw    $a1, 0x24($sp)
/* 086CA0 800860A0 46062202 */  mul.s $f8, $f4, $f6
/* 086CA4 800860A4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 086CA8 800860A8 AFA40020 */  sw    $a0, 0x20($sp)
/* 086CAC 800860AC 8C460004 */  lw    $a2, 4($v0)
/* 086CB0 800860B0 8C470008 */  lw    $a3, 8($v0)
/* 086CB4 800860B4 44054000 */  mfc1  $a1, $f8
/* 086CB8 800860B8 0C022DF5 */  jal   set_obj_origin_pos
/* 086CBC 800860BC 00000000 */   nop   
/* 086CC0 800860C0 8FA80024 */  lw    $t0, 0x24($sp)
/* 086CC4 800860C4 3C0A0600 */  lui   $t2, %hi(d_course_rainbow_road_static_tluts) # $t2, 0x600
/* 086CC8 800860C8 3C0C0601 */  lui   $t4, %hi(d_course_rainbow_road_static_textures) # $t4, 0x601
/* 086CCC 800860CC 258CB000 */  addiu $t4, %lo(d_course_rainbow_road_static_textures) # addiu $t4, $t4, -0x5000
/* 086CD0 800860D0 254A7200 */  addiu $t2, %lo(d_course_rainbow_road_static_tluts) # addiu $t2, $t2, 0x7200
/* 086CD4 800860D4 240D0040 */  li    $t5, 64
/* 086CD8 800860D8 00084A40 */  sll   $t1, $t0, 9
/* 086CDC 800860DC 00085B00 */  sll   $t3, $t0, 0xc
/* 086CE0 800860E0 016C3021 */  addu  $a2, $t3, $t4
/* 086CE4 800860E4 012A2821 */  addu  $a1, $t1, $t2
/* 086CE8 800860E8 AFAD0010 */  sw    $t5, 0x10($sp)
/* 086CEC 800860EC 8FA40020 */  lw    $a0, 0x20($sp)
/* 086CF0 800860F0 0C01CD11 */  jal   init_texture_object
/* 086CF4 800860F4 24070040 */   li    $a3, 64
/* 086CF8 800860F8 0C0216ED */  jal   func_80085BB4
/* 086CFC 800860FC 8FA40020 */   lw    $a0, 0x20($sp)
/* 086D00 80086100 8FBF001C */  lw    $ra, 0x1c($sp)
/* 086D04 80086104 27BD0020 */  addiu $sp, $sp, 0x20
/* 086D08 80086108 03E00008 */  jr    $ra
/* 086D0C 8008610C 00000000 */   nop   
.size func_80086074, . - func_80086074
