glabel player_select_menu_act
/* 0B4154 800B3554 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0B4158 800B3558 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B415C 800B355C AFB00018 */  sw    $s0, 0x18($sp)
/* 0B4160 800B3560 AFA50044 */  sw    $a1, 0x44($sp)
/* 0B4164 800B3564 948F000C */  lhu   $t7, 0xc($a0)
/* 0B4168 800B3568 948E0006 */  lhu   $t6, 6($a0)
/* 0B416C 800B356C 3C19800E */  lui   $t9, %hi(gEnableDebugMode) # $t9, 0x800e
/* 0B4170 800B3570 9739C520 */  lhu   $t9, %lo(gEnableDebugMode)($t9)
/* 0B4174 800B3574 01CF1825 */  or    $v1, $t6, $t7
/* 0B4178 800B3578 3078FFFF */  andi  $t8, $v1, 0xffff
/* 0B417C 800B357C 17200007 */  bnez  $t9, .L800B359C
/* 0B4180 800B3580 03001825 */   move  $v1, $t8
/* 0B4184 800B3584 33081000 */  andi  $t0, $t8, 0x1000
/* 0B4188 800B3588 11000004 */  beqz  $t0, .L800B359C
/* 0B418C 800B358C 00000000 */   nop
/* 0B4190 800B3590 37038000 */  ori   $v1, $t8, 0x8000
/* 0B4194 800B3594 3069FFFF */  andi  $t1, $v1, 0xffff
/* 0B4198 800B3598 01201825 */  move  $v1, $t1
.L800B359C:
/* 0B419C 800B359C 0C02D148 */  jal   is_screen_being_faded
/* 0B41A0 800B35A0 A7A30036 */   sh    $v1, 0x36($sp)
/* 0B41A4 800B35A4 14400167 */  bnez  $v0, .L800B3B44
/* 0B41A8 800B35A8 97A30036 */   lhu   $v1, 0x36($sp)
/* 0B41AC 800B35AC 3C028019 */  lui   $v0, %hi(gPlayerSelectMenuSelection) # $v0, 0x8019
/* 0B41B0 800B35B0 8042EDEE */  lb    $v0, %lo(gPlayerSelectMenuSelection)($v0)
/* 0B41B4 800B35B4 24010001 */  li    $at, 1
/* 0B41B8 800B35B8 97AB0046 */  lhu   $t3, 0x46($sp)
/* 0B41BC 800B35BC 1041000A */  beq   $v0, $at, .L800B35E8
/* 0B41C0 800B35C0 24010002 */   li    $at, 2
/* 0B41C4 800B35C4 10410125 */  beq   $v0, $at, .L800B3A5C
/* 0B41C8 800B35C8 97A90046 */   lhu   $t1, 0x46($sp)
/* 0B41CC 800B35CC 24010003 */  li    $at, 3
/* 0B41D0 800B35D0 10410122 */  beq   $v0, $at, .L800B3A5C
/* 0B41D4 800B35D4 97AA0046 */   lhu   $t2, 0x46($sp)
/* 0B41D8 800B35D8 3C038019 */  lui   $v1, %hi(gCharacterGridSelections) # 0x8019
/* 0B41DC 800B35DC 006A1821 */  addu  $v1, $v1, $t2
/* 0B41E0 800B35E0 10000150 */  b     .L800B3B24
/* 0B41E4 800B35E4 8063EDE4 */   lb    $v1, %lo(gCharacterGridSelections)($v1) # -0x121c($v1)
.L800B35E8: # case 1
/* 0B41E8 800B35E8 3C108019 */  lui   $s0, %hi(gCharacterGridSelections) # $s0, 0x8019
/* 0B41EC 800B35EC 2610EDE4 */  addiu $s0, %lo(gCharacterGridSelections) # addiu $s0, $s0, -0x121c
/* 0B41F0 800B35F0 020B6021 */  addu  $t4, $s0, $t3
/* 0B41F4 800B35F4 AFAC0028 */  sw    $t4, 0x28($sp)
/* 0B41F8 800B35F8 818E0000 */  lb    $t6, ($t4)
/* 0B41FC 800B35FC 00603025 */  move  $a2, $v1
/* 0B4200 800B3600 306F4000 */  andi  $t7, $v1, 0x4000
/* 0B4204 800B3604 15C0000A */  bnez  $t6, .L800B3630
/* 0B4208 800B3608 30D84000 */   andi  $t8, $a2, 0x4000
/* 0B420C 800B360C 51E0014E */  beql  $t7, $zero, .L800B3B48
/* 0B4210 800B3610 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0B4214 800B3614 0C027882 */  jal   func_8009E208
/* 0B4218 800B3618 00000000 */   nop
/* 0B421C 800B361C 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0B4220 800B3620 0C032384 */  jal   play_sound2
/* 0B4224 800B3624 34848002 */   ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0B4228 800B3628 10000147 */  b     .L800B3B48
/* 0B422C 800B362C 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B3630:
/* 0B4230 800B3630 13000014 */  beqz  $t8, .L800B3684
/* 0B4234 800B3634 97B90046 */   lhu   $t9, 0x46($sp)
/* 0B4238 800B3638 3C038019 */  lui   $v1, %hi(gCharacterGridIsSelected) # $v1, 0x8019
/* 0B423C 800B363C 2463EDE8 */  addiu $v1, %lo(gCharacterGridIsSelected) # addiu $v1, $v1, -0x1218
/* 0B4240 800B3640 00793821 */  addu  $a3, $v1, $t9
/* 0B4244 800B3644 80E80000 */  lb    $t0, ($a3)
/* 0B4248 800B3648 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0B424C 800B364C 34848002 */  ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0B4250 800B3650 11000006 */  beqz  $t0, .L800B366C
/* 0B4254 800B3654 00000000 */   nop
/* 0B4258 800B3658 A0E00000 */  sb    $zero, ($a3)
/* 0B425C 800B365C 0C032384 */  jal   play_sound2
/* 0B4260 800B3660 AFA6002C */   sw    $a2, 0x2c($sp)
/* 0B4264 800B3664 10000007 */  b     .L800B3684
/* 0B4268 800B3668 8FA6002C */   lw    $a2, 0x2c($sp)
.L800B366C:
/* 0B426C 800B366C 0C027882 */  jal   func_8009E208
/* 0B4270 800B3670 AFA6002C */   sw    $a2, 0x2c($sp)
/* 0B4274 800B3674 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0B4278 800B3678 0C032384 */  jal   play_sound2
/* 0B427C 800B367C 34848002 */   ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0B4280 800B3680 8FA6002C */  lw    $a2, 0x2c($sp)
.L800B3684:
/* 0B4284 800B3684 97A90046 */  lhu   $t1, 0x46($sp)
/* 0B4288 800B3688 3C038019 */  lui   $v1, %hi(gCharacterGridIsSelected) # $v1, 0x8019
/* 0B428C 800B368C 2463EDE8 */  addiu $v1, %lo(gCharacterGridIsSelected) # addiu $v1, $v1, -0x1218
/* 0B4290 800B3690 30CA8000 */  andi  $t2, $a2, 0x8000
/* 0B4294 800B3694 11400017 */  beqz  $t2, .L800B36F4
/* 0B4298 800B3698 00693821 */   addu  $a3, $v1, $t1
/* 0B429C 800B369C 80EB0000 */  lb    $t3, ($a3)
/* 0B42A0 800B36A0 240C0001 */  li    $t4, 1
/* 0B42A4 800B36A4 3C05800F */  lui   $a1, %hi((sCharacterGridOrder - 1)) # 0x800f
/* 0B42A8 800B36A8 55600013 */  bnel  $t3, $zero, .L800B36F8
/* 0B42AC 800B36AC 00002025 */   move  $a0, $zero
/* 0B42B0 800B36B0 8FAD0028 */  lw    $t5, 0x28($sp)
/* 0B42B4 800B36B4 A0EC0000 */  sb    $t4, ($a3)
/* 0B42B8 800B36B8 3C012900 */  lui   $at, (0x2900800E >> 16) # lui $at, 0x2900
/* 0B42BC 800B36BC 81AE0000 */  lb    $t6, ($t5)
/* 0B42C0 800B36C0 3421800E */  ori   $at, (0x2900800E & 0xFFFF) # ori $at, $at, 0x800e
/* 0B42C4 800B36C4 AFA70020 */  sw    $a3, 0x20($sp)
/* 0B42C8 800B36C8 00AE2821 */  addu  $a1, $a1, $t6
/* 0B42CC 800B36CC 80A52BAB */  lb    $a1, %lo((sCharacterGridOrder - 1))($a1) # 0x2bab($a1)
/* 0B42D0 800B36D0 AFA6002C */  sw    $a2, 0x2c($sp)
/* 0B42D4 800B36D4 93A40047 */  lbu   $a0, 0x47($sp)
/* 0B42D8 800B36D8 00057900 */  sll   $t7, $a1, 4
/* 0B42DC 800B36DC 0C03243D */  jal   func_800C90F4
/* 0B42E0 800B36E0 01E12821 */   addu  $a1, $t7, $at
/* 0B42E4 800B36E4 3C038019 */  lui   $v1, %hi(gCharacterGridIsSelected) # $v1, 0x8019
/* 0B42E8 800B36E8 2463EDE8 */  addiu $v1, %lo(gCharacterGridIsSelected) # addiu $v1, $v1, -0x1218
/* 0B42EC 800B36EC 8FA6002C */  lw    $a2, 0x2c($sp)
/* 0B42F0 800B36F0 8FA70020 */  lw    $a3, 0x20($sp)
.L800B36F4:
/* 0B42F4 800B36F4 00002025 */  move  $a0, $zero
.L800B36F8:
/* 0B42F8 800B36F8 00001025 */  move  $v0, $zero
/* 0B42FC 800B36FC 0202C021 */  addu  $t8, $s0, $v0
.L800B3700:
/* 0B4300 800B3700 83190000 */  lb    $t9, ($t8)
/* 0B4304 800B3704 00624021 */  addu  $t0, $v1, $v0
/* 0B4308 800B3708 24420001 */  addiu $v0, $v0, 1
/* 0B430C 800B370C 13200006 */  beqz  $t9, .L800B3728
/* 0B4310 800B3710 00025600 */   sll   $t2, $v0, 0x18
/* 0B4314 800B3714 81090000 */  lb    $t1, ($t0)
/* 0B4318 800B3718 55200004 */  bnel  $t1, $zero, .L800B372C
/* 0B431C 800B371C 000A1603 */   sra   $v0, $t2, 0x18
/* 0B4320 800B3720 10000005 */  b     .L800B3738
/* 0B4324 800B3724 24040001 */   li    $a0, 1
.L800B3728:
/* 0B4328 800B3728 000A1603 */  sra   $v0, $t2, 0x18
.L800B372C:
/* 0B432C 800B372C 28410004 */  slti  $at, $v0, 4
/* 0B4330 800B3730 5420FFF3 */  bnel  $at, $zero, .L800B3700
/* 0B4334 800B3734 0202C021 */   addu  $t8, $s0, $v0
.L800B3738:
/* 0B4338 800B3738 1480000B */  bnez  $a0, .L800B3768
/* 0B433C 800B373C 240C0002 */   li    $t4, 2
/* 0B4340 800B3740 3C018019 */  lui   $at, %hi(gPlayerSelectMenuSelection) # $at, 0x8019
/* 0B4344 800B3744 A02CEDEE */  sb    $t4, %lo(gPlayerSelectMenuSelection)($at)
/* 0B4348 800B3748 AFA6002C */  sw    $a2, 0x2c($sp)
/* 0B434C 800B374C 0C02D12B */  jal   reset_cycle_flash_menu
/* 0B4350 800B3750 AFA70020 */   sw    $a3, 0x20($sp)
/* 0B4354 800B3754 3C038019 */  lui   $v1, %hi(gMenuTimingCounter) # $v1, 0x8019
/* 0B4358 800B3758 2463EE00 */  addiu $v1, %lo(gMenuTimingCounter) # addiu $v1, $v1, -0x1200
/* 0B435C 800B375C 8FA6002C */  lw    $a2, 0x2c($sp)
/* 0B4360 800B3760 8FA70020 */  lw    $a3, 0x20($sp)
/* 0B4364 800B3764 AC600000 */  sw    $zero, ($v1)
.L800B3768:
/* 0B4368 800B3768 80EE0000 */  lb    $t6, ($a3)
/* 0B436C 800B376C 8FAD0028 */  lw    $t5, 0x28($sp)
/* 0B4370 800B3770 30C20100 */  andi  $v0, $a2, 0x100
/* 0B4374 800B3774 15C000EB */  bnez  $t6, .L800B3B24
/* 0B4378 800B3778 81A30000 */   lb    $v1, ($t5)
/* 0B437C 800B377C 00038600 */  sll   $s0, $v1, 0x18
/* 0B4380 800B3780 00107E03 */  sra   $t7, $s0, 0x18
/* 0B4384 800B3784 10400017 */  beqz  $v0, .L800B37E4
/* 0B4388 800B3788 01E08025 */   move  $s0, $t7
/* 0B438C 800B378C 30D80400 */  andi  $t8, $a2, 0x400
/* 0B4390 800B3790 13000014 */  beqz  $t8, .L800B37E4
/* 0B4394 800B3794 24010001 */   li    $at, 1
/* 0B4398 800B3798 10610005 */  beq   $v1, $at, .L800B37B0
/* 0B439C 800B379C 00601025 */   move  $v0, $v1
/* 0B43A0 800B37A0 24010002 */  li    $at, 2
/* 0B43A4 800B37A4 10410002 */  beq   $v0, $at, .L800B37B0
/* 0B43A8 800B37A8 24010003 */   li    $at, 3
/* 0B43AC 800B37AC 144100E5 */  bne   $v0, $at, .L800B3B44
.L800B37B0:
/* 0B43B0 800B37B0 24700005 */   addiu $s0, $v1, 5
/* 0B43B4 800B37B4 0010CE00 */  sll   $t9, $s0, 0x18
/* 0B43B8 800B37B8 00192603 */  sra   $a0, $t9, 0x18
/* 0B43BC 800B37BC 0C02CD3A */  jal   is_character_spot_free
/* 0B43C0 800B37C0 00808025 */   move  $s0, $a0
/* 0B43C4 800B37C4 104000DF */  beqz  $v0, .L800B3B44
/* 0B43C8 800B37C8 8FA90028 */   lw    $t1, 0x28($sp)
/* 0B43CC 800B37CC 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B43D0 800B37D0 A1300000 */  sb    $s0, ($t1)
/* 0B43D4 800B37D4 0C032384 */  jal   play_sound2
/* 0B43D8 800B37D8 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B43DC 800B37DC 100000DA */  b     .L800B3B48
/* 0B43E0 800B37E0 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B37E4:
/* 0B43E4 800B37E4 30C40200 */  andi  $a0, $a2, 0x200
/* 0B43E8 800B37E8 10800016 */  beqz  $a0, .L800B3844
/* 0B43EC 800B37EC 30CA0400 */   andi  $t2, $a2, 0x400
/* 0B43F0 800B37F0 11400014 */  beqz  $t2, .L800B3844
/* 0B43F4 800B37F4 24010002 */   li    $at, 2
/* 0B43F8 800B37F8 10610005 */  beq   $v1, $at, .L800B3810
/* 0B43FC 800B37FC 00601025 */   move  $v0, $v1
/* 0B4400 800B3800 24010003 */  li    $at, 3
/* 0B4404 800B3804 10410002 */  beq   $v0, $at, .L800B3810
/* 0B4408 800B3808 24010004 */   li    $at, 4
/* 0B440C 800B380C 144100CD */  bne   $v0, $at, .L800B3B44
.L800B3810:
/* 0B4410 800B3810 24700003 */   addiu $s0, $v1, 3
/* 0B4414 800B3814 00105E00 */  sll   $t3, $s0, 0x18
/* 0B4418 800B3818 000B2603 */  sra   $a0, $t3, 0x18
/* 0B441C 800B381C 0C02CD3A */  jal   is_character_spot_free
/* 0B4420 800B3820 00808025 */   move  $s0, $a0
/* 0B4424 800B3824 104000C7 */  beqz  $v0, .L800B3B44
/* 0B4428 800B3828 8FAD0028 */   lw    $t5, 0x28($sp)
/* 0B442C 800B382C 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B4430 800B3830 A1B00000 */  sb    $s0, ($t5)
/* 0B4434 800B3834 0C032384 */  jal   play_sound2
/* 0B4438 800B3838 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B443C 800B383C 100000C2 */  b     .L800B3B48
/* 0B4440 800B3840 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B3844:
/* 0B4444 800B3844 10400016 */  beqz  $v0, .L800B38A0
/* 0B4448 800B3848 30CE0800 */   andi  $t6, $a2, 0x800
/* 0B444C 800B384C 11C00014 */  beqz  $t6, .L800B38A0
/* 0B4450 800B3850 24010005 */   li    $at, 5
/* 0B4454 800B3854 10610005 */  beq   $v1, $at, .L800B386C
/* 0B4458 800B3858 00601025 */   move  $v0, $v1
/* 0B445C 800B385C 24010006 */  li    $at, 6
/* 0B4460 800B3860 10410002 */  beq   $v0, $at, .L800B386C
/* 0B4464 800B3864 24010007 */   li    $at, 7
/* 0B4468 800B3868 144100B6 */  bne   $v0, $at, .L800B3B44
.L800B386C:
/* 0B446C 800B386C 2470FFFD */   addiu $s0, $v1, -3
/* 0B4470 800B3870 00107E00 */  sll   $t7, $s0, 0x18
/* 0B4474 800B3874 000F2603 */  sra   $a0, $t7, 0x18
/* 0B4478 800B3878 0C02CD3A */  jal   is_character_spot_free
/* 0B447C 800B387C 00808025 */   move  $s0, $a0
/* 0B4480 800B3880 104000B0 */  beqz  $v0, .L800B3B44
/* 0B4484 800B3884 8FB90028 */   lw    $t9, 0x28($sp)
/* 0B4488 800B3888 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B448C 800B388C A3300000 */  sb    $s0, ($t9)
/* 0B4490 800B3890 0C032384 */  jal   play_sound2
/* 0B4494 800B3894 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B4498 800B3898 100000AB */  b     .L800B3B48
/* 0B449C 800B389C 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B38A0:
/* 0B44A0 800B38A0 10800016 */  beqz  $a0, .L800B38FC
/* 0B44A4 800B38A4 30C80800 */   andi  $t0, $a2, 0x800
/* 0B44A8 800B38A8 11000014 */  beqz  $t0, .L800B38FC
/* 0B44AC 800B38AC 24010006 */   li    $at, 6
/* 0B44B0 800B38B0 10610005 */  beq   $v1, $at, .L800B38C8
/* 0B44B4 800B38B4 00601025 */   move  $v0, $v1
/* 0B44B8 800B38B8 24010007 */  li    $at, 7
/* 0B44BC 800B38BC 10410002 */  beq   $v0, $at, .L800B38C8
/* 0B44C0 800B38C0 24010008 */   li    $at, 8
/* 0B44C4 800B38C4 1441009F */  bne   $v0, $at, .L800B3B44
.L800B38C8:
/* 0B44C8 800B38C8 2470FFFB */   addiu $s0, $v1, -5
/* 0B44CC 800B38CC 00104E00 */  sll   $t1, $s0, 0x18
/* 0B44D0 800B38D0 00092603 */  sra   $a0, $t1, 0x18
/* 0B44D4 800B38D4 0C02CD3A */  jal   is_character_spot_free
/* 0B44D8 800B38D8 00808025 */   move  $s0, $a0
/* 0B44DC 800B38DC 10400099 */  beqz  $v0, .L800B3B44
/* 0B44E0 800B38E0 8FAB0028 */   lw    $t3, 0x28($sp)
/* 0B44E4 800B38E4 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B44E8 800B38E8 A1700000 */  sb    $s0, ($t3)
/* 0B44EC 800B38EC 0C032384 */  jal   play_sound2
/* 0B44F0 800B38F0 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B44F4 800B38F4 10000094 */  b     .L800B3B48
/* 0B44F8 800B38F8 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B38FC:
/* 0B44FC 800B38FC 1040001E */  beqz  $v0, .L800B3978
/* 0B4500 800B3900 24010004 */   li    $at, 4
/* 0B4504 800B3904 1061008F */  beq   $v1, $at, .L800B3B44
/* 0B4508 800B3908 24010008 */   li    $at, 8
/* 0B450C 800B390C 1061008D */  beq   $v1, $at, .L800B3B44
/* 0B4510 800B3910 24700001 */   addiu $s0, $v1, 1
/* 0B4514 800B3914 00106600 */  sll   $t4, $s0, 0x18
/* 0B4518 800B3918 000C8603 */  sra   $s0, $t4, 0x18
.L800B391C:
/* 0B451C 800B391C 0C02CD3A */  jal   is_character_spot_free
/* 0B4520 800B3920 02002025 */   move  $a0, $s0
/* 0B4524 800B3924 10400008 */  beqz  $v0, .L800B3948
/* 0B4528 800B3928 24010005 */   li    $at, 5
/* 0B452C 800B392C 8FAE0028 */  lw    $t6, 0x28($sp)
/* 0B4530 800B3930 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B4534 800B3934 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B4538 800B3938 0C032384 */  jal   play_sound2
/* 0B453C 800B393C A1D00000 */   sb    $s0, ($t6)
/* 0B4540 800B3940 10000081 */  b     .L800B3B48
/* 0B4544 800B3944 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B3948:
/* 0B4548 800B3948 26100001 */  addiu $s0, $s0, 1
/* 0B454C 800B394C 00107E00 */  sll   $t7, $s0, 0x18
/* 0B4550 800B3950 000FC603 */  sra   $t8, $t7, 0x18
/* 0B4554 800B3954 1301007B */  beq   $t8, $at, .L800B3B44
/* 0B4558 800B3958 03008025 */   move  $s0, $t8
/* 0B455C 800B395C 24010009 */  li    $at, 9
/* 0B4560 800B3960 13010078 */  beq   $t8, $at, .L800B3B44
/* 0B4564 800B3964 2B01000A */   slti  $at, $t8, 0xa
/* 0B4568 800B3968 1420FFEC */  bnez  $at, .L800B391C
/* 0B456C 800B396C 00000000 */   nop
/* 0B4570 800B3970 10000075 */  b     .L800B3B48
/* 0B4574 800B3974 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B3978:
/* 0B4578 800B3978 1080001E */  beqz  $a0, .L800B39F4
/* 0B457C 800B397C 30CC0800 */   andi  $t4, $a2, 0x800
/* 0B4580 800B3980 24010001 */  li    $at, 1
/* 0B4584 800B3984 1061006F */  beq   $v1, $at, .L800B3B44
/* 0B4588 800B3988 24010005 */   li    $at, 5
/* 0B458C 800B398C 1061006D */  beq   $v1, $at, .L800B3B44
/* 0B4590 800B3990 2470FFFF */   addiu $s0, $v1, -1
/* 0B4594 800B3994 0010CE00 */  sll   $t9, $s0, 0x18
/* 0B4598 800B3998 00198603 */  sra   $s0, $t9, 0x18
.L800B399C:
/* 0B459C 800B399C 0C02CD3A */  jal   is_character_spot_free
/* 0B45A0 800B39A0 02002025 */   move  $a0, $s0
/* 0B45A4 800B39A4 10400008 */  beqz  $v0, .L800B39C8
/* 0B45A8 800B39A8 24010004 */   li    $at, 4
/* 0B45AC 800B39AC 8FA90028 */  lw    $t1, 0x28($sp)
/* 0B45B0 800B39B0 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B45B4 800B39B4 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B45B8 800B39B8 0C032384 */  jal   play_sound2
/* 0B45BC 800B39BC A1300000 */   sb    $s0, ($t1)
/* 0B45C0 800B39C0 10000061 */  b     .L800B3B48
/* 0B45C4 800B39C4 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B39C8:
/* 0B45C8 800B39C8 2610FFFF */  addiu $s0, $s0, -1
/* 0B45CC 800B39CC 00105600 */  sll   $t2, $s0, 0x18
/* 0B45D0 800B39D0 000A5E03 */  sra   $t3, $t2, 0x18
/* 0B45D4 800B39D4 1160005B */  beqz  $t3, .L800B3B44
/* 0B45D8 800B39D8 01608025 */   move  $s0, $t3
/* 0B45DC 800B39DC 5161005A */  beql  $t3, $at, .L800B3B48
/* 0B45E0 800B39E0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0B45E4 800B39E4 0561FFED */  bgez  $t3, .L800B399C
/* 0B45E8 800B39E8 00000000 */   nop
/* 0B45EC 800B39EC 10000056 */  b     .L800B3B48
/* 0B45F0 800B39F0 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B39F4:
/* 0B45F4 800B39F4 11800007 */  beqz  $t4, .L800B3A14
/* 0B45F8 800B39F8 30C20400 */   andi  $v0, $a2, 0x400
/* 0B45FC 800B39FC 28610005 */  slti  $at, $v1, 5
/* 0B4600 800B3A00 14200004 */  bnez  $at, .L800B3A14
/* 0B4604 800B3A04 00000000 */   nop
/* 0B4608 800B3A08 2470FFFC */  addiu $s0, $v1, -4
/* 0B460C 800B3A0C 00106E00 */  sll   $t5, $s0, 0x18
/* 0B4610 800B3A10 000D8603 */  sra   $s0, $t5, 0x18
.L800B3A14:
/* 0B4614 800B3A14 10400006 */  beqz  $v0, .L800B3A30
/* 0B4618 800B3A18 28610005 */   slti  $at, $v1, 5
/* 0B461C 800B3A1C 10200004 */  beqz  $at, .L800B3A30
/* 0B4620 800B3A20 00000000 */   nop
/* 0B4624 800B3A24 24700004 */  addiu $s0, $v1, 4
/* 0B4628 800B3A28 00107E00 */  sll   $t7, $s0, 0x18
/* 0B462C 800B3A2C 000F8603 */  sra   $s0, $t7, 0x18
.L800B3A30:
/* 0B4630 800B3A30 0C02CD3A */  jal   is_character_spot_free
/* 0B4634 800B3A34 02002025 */   move  $a0, $s0
/* 0B4638 800B3A38 10400005 */  beqz  $v0, .L800B3A50
/* 0B463C 800B3A3C 8FB90028 */   lw    $t9, 0x28($sp)
/* 0B4640 800B3A40 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B4644 800B3A44 A3300000 */  sb    $s0, ($t9)
/* 0B4648 800B3A48 0C032384 */  jal   play_sound2
/* 0B464C 800B3A4C 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
.L800B3A50:
/* 0B4650 800B3A50 8FA80028 */  lw    $t0, 0x28($sp)
/* 0B4654 800B3A54 10000033 */  b     .L800B3B24
/* 0B4658 800B3A58 81030000 */   lb    $v1, ($t0)
.L800B3A5C: # case 2, 3
/* 0B465C 800B3A5C 15200011 */  bnez  $t1, .L800B3AA4
/* 0B4660 800B3A60 00603025 */   move  $a2, $v1
/* 0B4664 800B3A64 3C038019 */  lui   $v1, %hi(gMenuTimingCounter) # $v1, 0x8019
/* 0B4668 800B3A68 2463EE00 */  addiu $v1, %lo(gMenuTimingCounter) # addiu $v1, $v1, -0x1200
/* 0B466C 800B3A6C 8C6A0000 */  lw    $t2, ($v1)
/* 0B4670 800B3A70 2401003C */  li    $at, 60
/* 0B4674 800B3A74 3C044900 */  lui   $a0, (0x4900900F >> 16) # lui $a0, 0x4900
/* 0B4678 800B3A78 254B0001 */  addiu $t3, $t2, 1
/* 0B467C 800B3A7C 11610005 */  beq   $t3, $at, .L800B3A94
/* 0B4680 800B3A80 AC6B0000 */   sw    $t3, ($v1)
/* 0B4684 800B3A84 2401012C */  li    $at, 300
/* 0B4688 800B3A88 0161001A */  div   $zero, $t3, $at
/* 0B468C 800B3A8C 00006010 */  mfhi  $t4
/* 0B4690 800B3A90 15800004 */  bnez  $t4, .L800B3AA4
.L800B3A94:
/* 0B4694 800B3A94 3484900F */   ori   $a0, (0x4900900F & 0xFFFF) # ori $a0, $a0, 0x900f
/* 0B4698 800B3A98 0C032384 */  jal   play_sound2
/* 0B469C 800B3A9C AFA6002C */   sw    $a2, 0x2c($sp)
/* 0B46A0 800B3AA0 8FA6002C */  lw    $a2, 0x2c($sp)
.L800B3AA4:
/* 0B46A4 800B3AA4 30CD4000 */  andi  $t5, $a2, 0x4000
/* 0B46A8 800B3AA8 11A00011 */  beqz  $t5, .L800B3AF0
/* 0B46AC 800B3AAC 30C88000 */   andi  $t0, $a2, 0x8000
/* 0B46B0 800B3AB0 97AF0046 */  lhu   $t7, 0x46($sp)
/* 0B46B4 800B3AB4 3C038019 */  lui   $v1, %hi(gCharacterGridIsSelected) # $v1, 0x8019
/* 0B46B8 800B3AB8 2463EDE8 */  addiu $v1, %lo(gCharacterGridIsSelected) # addiu $v1, $v1, -0x1218
/* 0B46BC 800B3ABC 240E0001 */  li    $t6, 1
/* 0B46C0 800B3AC0 3C018019 */  lui   $at, %hi(gPlayerSelectMenuSelection) # $at, 0x8019
/* 0B46C4 800B3AC4 A02EEDEE */  sb    $t6, %lo(gPlayerSelectMenuSelection)($at)
/* 0B46C8 800B3AC8 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0B46CC 800B3ACC 006FC021 */  addu  $t8, $v1, $t7
/* 0B46D0 800B3AD0 A3000000 */  sb    $zero, ($t8)
/* 0B46D4 800B3AD4 0C032384 */  jal   play_sound2
/* 0B46D8 800B3AD8 34848002 */   ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0B46DC 800B3ADC 97B90046 */  lhu   $t9, 0x46($sp)
/* 0B46E0 800B3AE0 3C038019 */  lui   $v1, %hi(gCharacterGridSelections) # 0x8019
/* 0B46E4 800B3AE4 00791821 */  addu  $v1, $v1, $t9
/* 0B46E8 800B3AE8 1000000E */  b     .L800B3B24
/* 0B46EC 800B3AEC 8063EDE4 */   lb    $v1, %lo(gCharacterGridSelections)($v1) # -0x121c($v1)
.L800B3AF0:
/* 0B46F0 800B3AF0 51000009 */  beql  $t0, $zero, .L800B3B18
/* 0B46F4 800B3AF4 97A90046 */   lhu   $t1, 0x46($sp)
/* 0B46F8 800B3AF8 0C027870 */  jal   func_8009E1C0
/* 0B46FC 800B3AFC 00000000 */   nop
/* 0B4700 800B3B00 3C044900 */  lui   $a0, (0x49008016 >> 16) # lui $a0, 0x4900
/* 0B4704 800B3B04 0C032384 */  jal   play_sound2
/* 0B4708 800B3B08 34848016 */   ori   $a0, (0x49008016 & 0xFFFF) # ori $a0, $a0, 0x8016
/* 0B470C 800B3B0C 0C003C49 */  jal   func_8000F124
/* 0B4710 800B3B10 00000000 */   nop
/* 0B4714 800B3B14 97A90046 */  lhu   $t1, 0x46($sp)
.L800B3B18:
/* 0B4718 800B3B18 3C038019 */  lui   $v1, %hi(gCharacterGridSelections) # 0x8019
/* 0B471C 800B3B1C 00691821 */  addu  $v1, $v1, $t1
/* 0B4720 800B3B20 8063EDE4 */  lb    $v1, %lo(gCharacterGridSelections)($v1) # -0x121c($v1)
.L800B3B24:
/* 0B4724 800B3B24 10600007 */  beqz  $v1, .L800B3B44
/* 0B4728 800B3B28 3C0A800F */   lui   $t2, %hi((sCharacterGridOrder - 1)) # 0x800f
/* 0B472C 800B3B2C 97AB0046 */  lhu   $t3, 0x46($sp)
/* 0B4730 800B3B30 01435021 */  addu  $t2, $t2, $v1
/* 0B4734 800B3B34 814A2BAB */  lb    $t2, %lo((sCharacterGridOrder - 1))($t2) # 0x2bab($t2)
/* 0B4738 800B3B38 3C01800F */  lui   $at, %hi(gCharacterSelections) # 0x800f
/* 0B473C 800B3B3C 002B0821 */  addu  $at, $at, $t3
/* 0B4740 800B3B40 A02A86A8 */  sb    $t2, %lo(gCharacterSelections)($at) # -0x7958($at)
.L800B3B44:
/* 0B4744 800B3B44 8FBF001C */  lw    $ra, 0x1c($sp)
.L800B3B48:
/* 0B4748 800B3B48 8FB00018 */  lw    $s0, 0x18($sp)
/* 0B474C 800B3B4C 27BD0040 */  addiu $sp, $sp, 0x40
/* 0B4750 800B3B50 03E00008 */  jr    $ra
/* 0B4754 800B3B54 00000000 */   nop
.size player_select_menu_act, . - player_select_menu_act