.section .rodata

glabel D_800F0C54
.asciiz "'"
.balign 4
.size D_800F0C54, . - D_800F0C54

glabel D_800F0C58
.asciiz "\""
.balign 4
.size D_800F0C58, . - D_800F0C58

.section .late_rodata

glabel D_800F1DC8
.float 0.65
.size D_800F1DC8, . - D_800F1DC8

.section .text

glabel render_lap_times
/* 0A534C 800A474C 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0A5350 800A4750 3C0E800E */  lui   $t6, %hi(gGamestate) # $t6, 0x800e
/* 0A5354 800A4754 8DCEC50C */  lw    $t6, %lo(gGamestate)($t6)
/* 0A5358 800A4758 24010004 */  li    $at, 4
/* 0A535C 800A475C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0A5360 800A4760 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 0A5364 800A4764 AFA40050 */  sw    $a0, 0x50($sp)
/* 0A5368 800A4768 AFA50054 */  sw    $a1, 0x54($sp)
/* 0A536C 800A476C 15C10003 */  bne   $t6, $at, .L800A477C
/* 0A5370 800A4770 AFA60058 */   sw    $a2, 0x58($sp)
/* 0A5374 800A4774 10000003 */  b     .L800A4784
/* 0A5378 800A4778 AFA00030 */   sw    $zero, 0x30($sp)
.L800A477C:
/* 0A537C 800A477C 240F0001 */  li    $t7, 1
/* 0A5380 800A4780 AFAF0030 */  sw    $t7, 0x30($sp)
.L800A4784:
/* 0A5384 800A4784 8FB80050 */  lw    $t8, 0x50($sp)
/* 0A5388 800A4788 2B010005 */  slti  $at, $t8, 5
/* 0A538C 800A478C 50200012 */  beql  $at, $zero, .L800A47D8
/* 0A5390 800A4790 8FA80030 */   lw    $t0, 0x30($sp)
/* 0A5394 800A4794 8FB90030 */  lw    $t9, 0x30($sp)
/* 0A5398 800A4798 8FA40050 */  lw    $a0, 0x50($sp)
/* 0A539C 800A479C 3C058019 */  lui   $a1, %hi(gTimeTrialDataCourseIndex) # $a1, 0x8019
/* 0A53A0 800A47A0 17200005 */  bnez  $t9, .L800A47B8
/* 0A53A4 800A47A4 00000000 */   nop   
/* 0A53A8 800A47A8 0C02D389 */  jal   func_800B4E24
/* 0A53AC 800A47AC 03002025 */   move  $a0, $t8
/* 0A53B0 800A47B0 10000004 */  b     .L800A47C4
/* 0A53B4 800A47B4 AFA20048 */   sw    $v0, 0x48($sp)
.L800A47B8:
/* 0A53B8 800A47B8 0C02D3AD */  jal   func_800B4EB4
/* 0A53BC 800A47BC 80A5EDF7 */   lb    $a1, %lo(gTimeTrialDataCourseIndex)($a1)
/* 0A53C0 800A47C0 AFA20048 */  sw    $v0, 0x48($sp)
.L800A47C4:
/* 0A53C4 800A47C4 0C024C36 */  jal   set_text_color
/* 0A53C8 800A47C8 24040001 */   li    $a0, 1
/* 0A53CC 800A47CC 1000000D */  b     .L800A4804
/* 0A53D0 800A47D0 8FA90050 */   lw    $t1, 0x50($sp)
/* 0A53D4 800A47D4 8FA80030 */  lw    $t0, 0x30($sp)
.L800A47D8:
/* 0A53D8 800A47D8 3C048019 */  lui   $a0, %hi(gTimeTrialDataCourseIndex) # $a0, 0x8019
/* 0A53DC 800A47DC 15000005 */  bnez  $t0, .L800A47F4
/* 0A53E0 800A47E0 00000000 */   nop   
/* 0A53E4 800A47E4 0C02D3CB */  jal   func_800B4F2C
/* 0A53E8 800A47E8 00000000 */   nop   
/* 0A53EC 800A47EC 10000004 */  b     .L800A4800
/* 0A53F0 800A47F0 AFA20048 */   sw    $v0, 0x48($sp)
.L800A47F4:
/* 0A53F4 800A47F4 0C02D3EC */  jal   func_800B4FB0
/* 0A53F8 800A47F8 8084EDF7 */   lb    $a0, %lo(gTimeTrialDataCourseIndex)($a0)
/* 0A53FC 800A47FC AFA20048 */  sw    $v0, 0x48($sp)
.L800A4800:
/* 0A5400 800A4800 8FA90050 */  lw    $t1, 0x50($sp)
.L800A4804:
/* 0A5404 800A4804 3C01800F */  lui   $at, %hi(D_800F1DC8) # $at, 0x800f
/* 0A5408 800A4808 C4341DC8 */  lwc1  $f20, %lo(D_800F1DC8)($at)
/* 0A540C 800A480C 8FA40054 */  lw    $a0, 0x54($sp)
/* 0A5410 800A4810 3C06800E */  lui   $a2, %hi(D_800E7744)
/* 0A5414 800A4814 00095080 */  sll   $t2, $t1, 2
/* 0A5418 800A4818 00CA3021 */  addu  $a2, $a2, $t2
/* 0A541C 800A481C 8CC67744 */  lw    $a2, %lo(D_800E7744)($a2)
/* 0A5420 800A4820 8FA50058 */  lw    $a1, 0x58($sp)
/* 0A5424 800A4824 24070002 */  li    $a3, 2
/* 0A5428 800A4828 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A542C 800A482C E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A5430 800A4830 0C024E72 */  jal   func_800939C8
/* 0A5434 800A4834 24840014 */   addiu $a0, $a0, 0x14
/* 0A5438 800A4838 8FAB0030 */  lw    $t3, 0x30($sp)
/* 0A543C 800A483C 55600024 */  bnel  $t3, $zero, .L800A48D0
/* 0A5440 800A4840 24020003 */   li    $v0, 3
/* 0A5444 800A4844 0C02ABBD */  jal   find_menu_items_dupe
/* 0A5448 800A4848 240400BB */   li    $a0, 187
/* 0A544C 800A484C 8FAC0050 */  lw    $t4, 0x50($sp)
/* 0A5450 800A4850 29810005 */  slti  $at, $t4, 5
/* 0A5454 800A4854 50200010 */  beql  $at, $zero, .L800A4898
/* 0A5458 800A4858 8C590020 */   lw    $t9, 0x20($v0)
/* 0A545C 800A485C 8C4D001C */  lw    $t5, 0x1c($v0)
/* 0A5460 800A4860 3C0E800E */  lui   $t6, %hi(gGlobalTimer) # $t6, 0x800e
/* 0A5464 800A4864 24020003 */  li    $v0, 3
/* 0A5468 800A4868 158D0008 */  bne   $t4, $t5, .L800A488C
/* 0A546C 800A486C 00000000 */   nop   
/* 0A5470 800A4870 8DCEC54C */  lw    $t6, %lo(gGlobalTimer)($t6)
/* 0A5474 800A4874 24010003 */  li    $at, 3
/* 0A5478 800A4878 01C1001A */  div   $zero, $t6, $at
/* 0A547C 800A487C 00007810 */  mfhi  $t7
/* 0A5480 800A4880 AFAF0040 */  sw    $t7, 0x40($sp)
/* 0A5484 800A4884 10000013 */  b     .L800A48D4
/* 0A5488 800A4888 00000000 */   nop   
.L800A488C:
/* 0A548C 800A488C 10000011 */  b     .L800A48D4
/* 0A5490 800A4890 AFA20040 */   sw    $v0, 0x40($sp)
/* 0A5494 800A4894 8C590020 */  lw    $t9, 0x20($v0)
.L800A4898:
/* 0A5498 800A4898 24020003 */  li    $v0, 3
/* 0A549C 800A489C 13200009 */  beqz  $t9, .L800A48C4
/* 0A54A0 800A48A0 00000000 */   nop   
/* 0A54A4 800A48A4 3C02800E */  lui   $v0, %hi(gGlobalTimer) # $v0, 0x800e
/* 0A54A8 800A48A8 8C42C54C */  lw    $v0, %lo(gGlobalTimer)($v0)
/* 0A54AC 800A48AC 24010003 */  li    $at, 3
/* 0A54B0 800A48B0 0041001A */  div   $zero, $v0, $at
/* 0A54B4 800A48B4 0000C010 */  mfhi  $t8
/* 0A54B8 800A48B8 AFB80040 */  sw    $t8, 0x40($sp)
/* 0A54BC 800A48BC 10000005 */  b     .L800A48D4
/* 0A54C0 800A48C0 00000000 */   nop   
.L800A48C4:
/* 0A54C4 800A48C4 10000003 */  b     .L800A48D4
/* 0A54C8 800A48C8 AFA20040 */   sw    $v0, 0x40($sp)
/* 0A54CC 800A48CC 24020003 */  li    $v0, 3
.L800A48D0:
/* 0A54D0 800A48D0 AFA20040 */  sw    $v0, 0x40($sp)
.L800A48D4:
/* 0A54D4 800A48D4 0C024C36 */  jal   set_text_color
/* 0A54D8 800A48D8 8FA40040 */   lw    $a0, 0x40($sp)
/* 0A54DC 800A48DC 8FA40048 */  lw    $a0, 0x48($sp)
/* 0A54E0 800A48E0 3C01000F */  lui   $at, (0x000FFFFF >> 16) # lui $at, 0xf
/* 0A54E4 800A48E4 3421FFFF */  ori   $at, (0x000FFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0A54E8 800A48E8 00814024 */  and   $t0, $a0, $at
/* 0A54EC 800A48EC 01002025 */  move  $a0, $t0
/* 0A54F0 800A48F0 AFA8002C */  sw    $t0, 0x2c($sp)
/* 0A54F4 800A48F4 0C029E3D */  jal   get_time_record_minutes
/* 0A54F8 800A48F8 27A50038 */   addiu $a1, $sp, 0x38
/* 0A54FC 800A48FC 8FA40054 */  lw    $a0, 0x54($sp)
/* 0A5500 800A4900 8FA50058 */  lw    $a1, 0x58($sp)
/* 0A5504 800A4904 27A60038 */  addiu $a2, $sp, 0x38
/* 0A5508 800A4908 00003825 */  move  $a3, $zero
/* 0A550C 800A490C E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5510 800A4910 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A5514 800A4914 0C024E72 */  jal   func_800939C8
/* 0A5518 800A4918 24840027 */   addiu $a0, $a0, 0x27
/* 0A551C 800A491C 8FA40054 */  lw    $a0, 0x54($sp)
/* 0A5520 800A4920 3C06800F */  lui   $a2, %hi(D_800F0C54) # $a2, 0x800f
/* 0A5524 800A4924 24C60C54 */  addiu $a2, %lo(D_800F0C54) # addiu $a2, $a2, 0xc54
/* 0A5528 800A4928 8FA50058 */  lw    $a1, 0x58($sp)
/* 0A552C 800A492C 00003825 */  move  $a3, $zero
/* 0A5530 800A4930 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5534 800A4934 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A5538 800A4938 0C024CC9 */  jal   print_text_mode_1
/* 0A553C 800A493C 24840032 */   addiu $a0, $a0, 0x32
/* 0A5540 800A4940 8FA4002C */  lw    $a0, 0x2c($sp)
/* 0A5544 800A4944 0C029E51 */  jal   get_time_record_seconds
/* 0A5548 800A4948 27A50038 */   addiu $a1, $sp, 0x38
/* 0A554C 800A494C 8FA40054 */  lw    $a0, 0x54($sp)
/* 0A5550 800A4950 8FA50058 */  lw    $a1, 0x58($sp)
/* 0A5554 800A4954 27A60038 */  addiu $a2, $sp, 0x38
/* 0A5558 800A4958 00003825 */  move  $a3, $zero
/* 0A555C 800A495C E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5560 800A4960 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A5564 800A4964 0C024E72 */  jal   func_800939C8
/* 0A5568 800A4968 2484003B */   addiu $a0, $a0, 0x3b
/* 0A556C 800A496C 8FA40054 */  lw    $a0, 0x54($sp)
/* 0A5570 800A4970 3C06800F */  lui   $a2, %hi(D_800F0C58) # $a2, 0x800f
/* 0A5574 800A4974 24C60C58 */  addiu $a2, %lo(D_800F0C58) # addiu $a2, $a2, 0xc58
/* 0A5578 800A4978 8FA50058 */  lw    $a1, 0x58($sp)
/* 0A557C 800A497C 00003825 */  move  $a3, $zero
/* 0A5580 800A4980 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5584 800A4984 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A5588 800A4988 0C024CC9 */  jal   print_text_mode_1
/* 0A558C 800A498C 24840046 */   addiu $a0, $a0, 0x46
/* 0A5590 800A4990 8FA4002C */  lw    $a0, 0x2c($sp)
/* 0A5594 800A4994 0C029E69 */  jal   get_time_record_centiseconds
/* 0A5598 800A4998 27A50038 */   addiu $a1, $sp, 0x38
/* 0A559C 800A499C 8FA40054 */  lw    $a0, 0x54($sp)
/* 0A55A0 800A49A0 8FA50058 */  lw    $a1, 0x58($sp)
/* 0A55A4 800A49A4 27A60038 */  addiu $a2, $sp, 0x38
/* 0A55A8 800A49A8 00003825 */  move  $a3, $zero
/* 0A55AC 800A49AC E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A55B0 800A49B0 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A55B4 800A49B4 0C024E72 */  jal   func_800939C8
/* 0A55B8 800A49B8 24840050 */   addiu $a0, $a0, 0x50
/* 0A55BC 800A49BC 8FA9002C */  lw    $t1, 0x2c($sp)
/* 0A55C0 800A49C0 3C010009 */  lui   $at, (0x000927C0 >> 16) # lui $at, 9
/* 0A55C4 800A49C4 342127C0 */  ori   $at, (0x000927C0 & 0xFFFF) # ori $at, $at, 0x27c0
/* 0A55C8 800A49C8 0121082B */  sltu  $at, $t1, $at
/* 0A55CC 800A49CC 10200005 */  beqz  $at, .L800A49E4
/* 0A55D0 800A49D0 8FA40054 */   lw    $a0, 0x54($sp)
/* 0A55D4 800A49D4 8FA20048 */  lw    $v0, 0x48($sp)
/* 0A55D8 800A49D8 00025502 */  srl   $t2, $v0, 0x14
/* 0A55DC 800A49DC 10000002 */  b     .L800A49E8
/* 0A55E0 800A49E0 01401025 */   move  $v0, $t2
.L800A49E4:
/* 0A55E4 800A49E4 24020008 */  li    $v0, 8
.L800A49E8:
/* 0A55E8 800A49E8 00025880 */  sll   $t3, $v0, 2
/* 0A55EC 800A49EC 3C06800E */  lui   $a2, %hi(D_800E76A8)
/* 0A55F0 800A49F0 00CB3021 */  addu  $a2, $a2, $t3
/* 0A55F4 800A49F4 8CC676A8 */  lw    $a2, %lo(D_800E76A8)($a2)
/* 0A55F8 800A49F8 24840078 */  addiu $a0, $a0, 0x78
/* 0A55FC 800A49FC 8FA50058 */  lw    $a1, 0x58($sp)
/* 0A5600 800A4A00 00003825 */  move  $a3, $zero
/* 0A5604 800A4A04 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5608 800A4A08 0C024DBB */  jal   print_text1_center_mode_1
/* 0A560C 800A4A0C E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A5610 800A4A10 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0A5614 800A4A14 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 0A5618 800A4A18 27BD0050 */  addiu $sp, $sp, 0x50
/* 0A561C 800A4A1C 03E00008 */  jr    $ra
/* 0A5620 800A4A20 00000000 */   nop   
.size render_lap_times, . - render_lap_times