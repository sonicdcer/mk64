glabel func_800C4FE4
/* 0C5BE4 800C4FE4 3C0E800F */  lui   $t6, %hi(D_800EA1C0) # $t6, 0x800f
/* 0C5BE8 800C4FE8 91CEA1C0 */  lbu   $t6, %lo(D_800EA1C0)($t6)
/* 0C5BEC 800C4FEC 27BDFF98 */  addiu $sp, $sp, -0x68
/* 0C5BF0 800C4FF0 AFB30034 */  sw    $s3, 0x34($sp)
/* 0C5BF4 800C4FF4 000E7880 */  sll   $t7, $t6, 2
/* 0C5BF8 800C4FF8 01EE7823 */  subu  $t7, $t7, $t6
/* 0C5BFC 800C4FFC 309300FF */  andi  $s3, $a0, 0xff
/* 0C5C00 800C5000 000F7840 */  sll   $t7, $t7, 1
/* 0C5C04 800C5004 01F3C021 */  addu  $t8, $t7, $s3
/* 0C5C08 800C5008 3C03800F */  lui   $v1, %hi(D_800EA188)
/* 0C5C0C 800C500C 00781821 */  addu  $v1, $v1, $t8
/* 0C5C10 800C5010 9063A188 */  lbu   $v1, %lo(D_800EA188)($v1)
/* 0C5C14 800C5014 AFBE0048 */  sw    $fp, 0x48($sp)
/* 0C5C18 800C5018 AFB40038 */  sw    $s4, 0x38($sp)
/* 0C5C1C 800C501C 03A0F025 */  move  $fp, $sp
/* 0C5C20 800C5020 AFBF004C */  sw    $ra, 0x4c($sp)
/* 0C5C24 800C5024 AFB70044 */  sw    $s7, 0x44($sp)
/* 0C5C28 800C5028 AFB60040 */  sw    $s6, 0x40($sp)
/* 0C5C2C 800C502C AFB5003C */  sw    $s5, 0x3c($sp)
/* 0C5C30 800C5030 AFB20030 */  sw    $s2, 0x30($sp)
/* 0C5C34 800C5034 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0C5C38 800C5038 AFB00028 */  sw    $s0, 0x28($sp)
/* 0C5C3C 800C503C AFA40068 */  sw    $a0, 0x68($sp)
/* 0C5C40 800C5040 18600080 */  blez  $v1, .L800C5244
/* 0C5C44 800C5044 0000A025 */   move  $s4, $zero
/* 0C5C48 800C5048 3C088019 */  lui   $t0, %hi(D_80192AB8) # $t0, 0x8019
/* 0C5C4C 800C504C 25082AB8 */  addiu $t0, %lo(D_80192AB8) # addiu $t0, $t0, 0x2ab8
/* 0C5C50 800C5050 0013C980 */  sll   $t9, $s3, 6
/* 0C5C54 800C5054 03284821 */  addu  $t1, $t9, $t0
/* 0C5C58 800C5058 3C178019 */  lui   $s7, %hi(D_801930D0) # $s7, 0x8019
/* 0C5C5C 800C505C 3C16800F */  lui   $s6, %hi(D_800EA1C4) # $s6, 0x800f
/* 0C5C60 800C5060 3C128019 */  lui   $s2, %hi(D_80192C38) # $s2, 0x8019
/* 0C5C64 800C5064 26522C38 */  addiu $s2, %lo(D_80192C38) # addiu $s2, $s2, 0x2c38
/* 0C5C68 800C5068 26D6A1C4 */  addiu $s6, %lo(D_800EA1C4) # addiu $s6, $s6, -0x5e3c
/* 0C5C6C 800C506C 26F730D0 */  addiu $s7, %lo(D_801930D0) # addiu $s7, $s7, 0x30d0
/* 0C5C70 800C5070 AFA90050 */  sw    $t1, 0x50($sp)
/* 0C5C74 800C5074 3C150602 */  lui   $s5, 0x602
.L800C5078:
/* 0C5C78 800C5078 8FCA0050 */  lw    $t2, 0x50($fp)
/* 0C5C7C 800C507C 001458C0 */  sll   $t3, $s4, 3
/* 0C5C80 800C5080 240100FF */  li    $at, 255
/* 0C5C84 800C5084 014B6021 */  addu  $t4, $t2, $t3
/* 0C5C88 800C5088 91910004 */  lbu   $s1, 4($t4)
/* 0C5C8C 800C508C 00137100 */  sll   $t6, $s3, 4
/* 0C5C90 800C5090 3C04803B */  lui   $a0, %hi(gSequencePlayers+0x2C0) # 0x803b
/* 0C5C94 800C5094 12210063 */  beq   $s1, $at, .L800C5224
/* 0C5C98 800C5098 01D37023 */   subu  $t6, $t6, $s3
/* 0C5C9C 800C509C 00117880 */  sll   $t7, $s1, 2
/* 0C5CA0 800C50A0 01F17823 */  subu  $t7, $t7, $s1
/* 0C5CA4 800C50A4 000F7900 */  sll   $t7, $t7, 4
/* 0C5CA8 800C50A8 000E7180 */  sll   $t6, $t6, 6
/* 0C5CAC 800C50AC 3C198019 */  lui   $t9, %hi(sSoundBanks) # $t9, 0x8019
/* 0C5CB0 800C50B0 92460000 */  lbu   $a2, ($s2)
/* 0C5CB4 800C50B4 27391420 */  addiu $t9, %lo(sSoundBanks) # addiu $t9, $t9, 0x1420
/* 0C5CB8 800C50B8 01CFC021 */  addu  $t8, $t6, $t7
/* 0C5CBC 800C50BC 03198021 */  addu  $s0, $t8, $t9
/* 0C5CC0 800C50C0 92020028 */  lbu   $v0, 0x28($s0)
/* 0C5CC4 800C50C4 00066880 */  sll   $t5, $a2, 2
/* 0C5CC8 800C50C8 008D2021 */  addu  $a0, $a0, $t5
/* 0C5CCC 800C50CC 24010002 */  li    $at, 2
/* 0C5CD0 800C50D0 1441002D */  bne   $v0, $at, .L800C5188
/* 0C5CD4 800C50D4 8C8417D0 */   lw    $a0, %lo(gSequencePlayers+0x2C0)($a0) # 0x17d0($a0)
/* 0C5CD8 800C50D8 8E080024 */  lw    $t0, 0x24($s0)
/* 0C5CDC 800C50DC A206002C */  sb    $a2, 0x2c($s0)
/* 0C5CE0 800C50E0 326400FF */  andi  $a0, $s3, 0xff
/* 0C5CE4 800C50E4 00084B00 */  sll   $t1, $t0, 0xc
/* 0C5CE8 800C50E8 0521000B */  bgez  $t1, .L800C5118
/* 0C5CEC 800C50EC 322500FF */   andi  $a1, $s1, 0xff
/* 0C5CF0 800C50F0 924B0000 */  lbu   $t3, ($s2)
/* 0C5CF4 800C50F4 96CA0000 */  lhu   $t2, ($s6)
/* 0C5CF8 800C50F8 240C0001 */  li    $t4, 1
/* 0C5CFC 800C50FC 016C6804 */  sllv  $t5, $t4, $t3
/* 0C5D00 800C5100 240F0001 */  li    $t7, 1
/* 0C5D04 800C5104 24180028 */  li    $t8, 40
/* 0C5D08 800C5108 014D7025 */  or    $t6, $t2, $t5
/* 0C5D0C 800C510C A6CE0000 */  sh    $t6, ($s6)
/* 0C5D10 800C5110 A2EF0012 */  sb    $t7, 0x12($s7)
/* 0C5D14 800C5114 A2F80010 */  sb    $t8, 0x10($s7)
.L800C5118:
/* 0C5D18 800C5118 0C030674 */  jal   func_800C19D0
/* 0C5D1C 800C511C 92460000 */   lbu   $a2, ($s2)
/* 0C5D20 800C5120 92480000 */  lbu   $t0, ($s2)
/* 0C5D24 800C5124 24050001 */  li    $a1, 1
/* 0C5D28 800C5128 00084A00 */  sll   $t1, $t0, 8
/* 0C5D2C 800C512C 0C032EFA */  jal   func_800CBBE8
/* 0C5D30 800C5130 01352025 */   or    $a0, $t1, $s5
/* 0C5D34 800C5134 924B0000 */  lbu   $t3, ($s2)
/* 0C5D38 800C5138 8E0F0024 */  lw    $t7, 0x24($s0)
/* 0C5D3C 800C513C 000B5200 */  sll   $t2, $t3, 8
/* 0C5D40 800C5140 01552025 */  or    $a0, $t2, $s5
/* 0C5D44 800C5144 348D0004 */  ori   $t5, $a0, 4
/* 0C5D48 800C5148 000FC600 */  sll   $t8, $t7, 0x18
/* 0C5D4C 800C514C 00182E03 */  sra   $a1, $t8, 0x18
/* 0C5D50 800C5150 0C032EFA */  jal   func_800CBBE8
/* 0C5D54 800C5154 01A02025 */   move  $a0, $t5
/* 0C5D58 800C5158 24080004 */  li    $t0, 4
/* 0C5D5C 800C515C A2080028 */  sb    $t0, 0x28($s0)
/* 0C5D60 800C5160 3C09800F */  lui   $t1, %hi(D_800EA1C0) # $t1, 0x800f
/* 0C5D64 800C5164 9129A1C0 */  lbu   $t1, %lo(D_800EA1C0)($t1)
/* 0C5D68 800C5168 3C03800F */  lui   $v1, %hi(D_800EA188)
/* 0C5D6C 800C516C 00096080 */  sll   $t4, $t1, 2
/* 0C5D70 800C5170 01896023 */  subu  $t4, $t4, $t1
/* 0C5D74 800C5174 000C6040 */  sll   $t4, $t4, 1
/* 0C5D78 800C5178 01935821 */  addu  $t3, $t4, $s3
/* 0C5D7C 800C517C 006B1821 */  addu  $v1, $v1, $t3
/* 0C5D80 800C5180 10000028 */  b     .L800C5224
/* 0C5D84 800C5184 9063A188 */   lbu   $v1, %lo(D_800EA188)($v1)
.L800C5188:
/* 0C5D88 800C5188 908A005F */  lbu   $t2, 0x5f($a0)
/* 0C5D8C 800C518C 24010080 */  li    $at, 128
/* 0C5D90 800C5190 30CD00FF */  andi  $t5, $a2, 0xff
/* 0C5D94 800C5194 15410013 */  bne   $t2, $at, .L800C51E4
/* 0C5D98 800C5198 000D7200 */   sll   $t6, $t5, 8
/* 0C5D9C 800C519C 01D52025 */  or    $a0, $t6, $s5
/* 0C5DA0 800C51A0 348F0007 */  ori   $t7, $a0, 7
/* 0C5DA4 800C51A4 01E02025 */  move  $a0, $t7
/* 0C5DA8 800C51A8 0C032EFA */  jal   func_800CBBE8
/* 0C5DAC 800C51AC 00002825 */   move  $a1, $zero
/* 0C5DB0 800C51B0 326400FF */  andi  $a0, $s3, 0xff
/* 0C5DB4 800C51B4 0C0311CF */  jal   delete_sound_from_bank
/* 0C5DB8 800C51B8 322500FF */   andi  $a1, $s1, 0xff
/* 0C5DBC 800C51BC 3C18800F */  lui   $t8, %hi(D_800EA1C0) # $t8, 0x800f
/* 0C5DC0 800C51C0 9318A1C0 */  lbu   $t8, %lo(D_800EA1C0)($t8)
/* 0C5DC4 800C51C4 3C03800F */  lui   $v1, %hi(D_800EA188)
/* 0C5DC8 800C51C8 0018C880 */  sll   $t9, $t8, 2
/* 0C5DCC 800C51CC 0338C823 */  subu  $t9, $t9, $t8
/* 0C5DD0 800C51D0 0019C840 */  sll   $t9, $t9, 1
/* 0C5DD4 800C51D4 03334021 */  addu  $t0, $t9, $s3
/* 0C5DD8 800C51D8 00681821 */  addu  $v1, $v1, $t0
/* 0C5DDC 800C51DC 10000011 */  b     .L800C5224
/* 0C5DE0 800C51E0 9063A188 */   lbu   $v1, %lo(D_800EA188)($v1)
.L800C51E4:
/* 0C5DE4 800C51E4 24010003 */  li    $at, 3
/* 0C5DE8 800C51E8 1441000E */  bne   $v0, $at, .L800C5224
/* 0C5DEC 800C51EC 326400FF */   andi  $a0, $s3, 0xff
/* 0C5DF0 800C51F0 0C030674 */  jal   func_800C19D0
/* 0C5DF4 800C51F4 322500FF */   andi  $a1, $s1, 0xff
/* 0C5DF8 800C51F8 24090004 */  li    $t1, 4
/* 0C5DFC 800C51FC A2090028 */  sb    $t1, 0x28($s0)
/* 0C5E00 800C5200 3C0C800F */  lui   $t4, %hi(D_800EA1C0) # $t4, 0x800f
/* 0C5E04 800C5204 918CA1C0 */  lbu   $t4, %lo(D_800EA1C0)($t4)
/* 0C5E08 800C5208 3C03800F */  lui   $v1, %hi(D_800EA188)
/* 0C5E0C 800C520C 000C5880 */  sll   $t3, $t4, 2
/* 0C5E10 800C5210 016C5823 */  subu  $t3, $t3, $t4
/* 0C5E14 800C5214 000B5840 */  sll   $t3, $t3, 1
/* 0C5E18 800C5218 01735021 */  addu  $t2, $t3, $s3
/* 0C5E1C 800C521C 006A1821 */  addu  $v1, $v1, $t2
/* 0C5E20 800C5220 9063A188 */  lbu   $v1, %lo(D_800EA188)($v1)
.L800C5224:
/* 0C5E24 800C5224 924D0000 */  lbu   $t5, ($s2)
/* 0C5E28 800C5228 26940001 */  addiu $s4, $s4, 1
/* 0C5E2C 800C522C 328F00FF */  andi  $t7, $s4, 0xff
/* 0C5E30 800C5230 01E3082A */  slt   $at, $t7, $v1
/* 0C5E34 800C5234 25AE0001 */  addiu $t6, $t5, 1
/* 0C5E38 800C5238 01E0A025 */  move  $s4, $t7
/* 0C5E3C 800C523C 1420FF8E */  bnez  $at, .L800C5078
/* 0C5E40 800C5240 A24E0000 */   sb    $t6, ($s2)
.L800C5244:
/* 0C5E44 800C5244 8FDF004C */  lw    $ra, 0x4c($fp)
/* 0C5E48 800C5248 03C0E825 */  move  $sp, $fp
/* 0C5E4C 800C524C 8FD00028 */  lw    $s0, 0x28($fp)
/* 0C5E50 800C5250 8FD1002C */  lw    $s1, 0x2c($fp)
/* 0C5E54 800C5254 8FD20030 */  lw    $s2, 0x30($fp)
/* 0C5E58 800C5258 8FD30034 */  lw    $s3, 0x34($fp)
/* 0C5E5C 800C525C 8FD40038 */  lw    $s4, 0x38($fp)
/* 0C5E60 800C5260 8FD5003C */  lw    $s5, 0x3c($fp)
/* 0C5E64 800C5264 8FD60040 */  lw    $s6, 0x40($fp)
/* 0C5E68 800C5268 8FD70044 */  lw    $s7, 0x44($fp)
/* 0C5E6C 800C526C 8FDE0048 */  lw    $fp, 0x48($fp)
/* 0C5E70 800C5270 03E00008 */  jr    $ra
/* 0C5E74 800C5274 27BD0068 */   addiu $sp, $sp, 0x68
.size func_800C4FE4, . - func_800C4FE4