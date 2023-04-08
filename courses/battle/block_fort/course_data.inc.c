#include <ultra64.h>
#include <macros.h>
#include <PR/gbi.h>
#include <actor_types.h>

Gfx d_course_block_fort_dl[] = {
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x070014A0),
    gsSPDisplayList(0x070009C0),
    gsSPDisplayList(0x07000688),
    gsSPDisplayList(0x070003F0),
    gsSPEndDisplayList(),
};

// Item box spawn locations
struct ActorSpawnData d_course_block_fort_spawn_item_box[] = {
	{{ 0xFFDA, 0x0000, 0x02E8 }, { 0x0000 }},
    {{ 0x001D, 0x0000, 0x02C6 }, { 0x0000 }},
    {{ 0xFFF3, 0x0000, 0x02AD }, { 0x0000 }},
	{{ 0xFDD7, 0x002F, 0x021F }, { 0x0000 }},
    {{ 0xFDF1, 0x002F, 0x020E }, { 0x0000 }},
    {{ 0xFF73, 0x002F, 0x0099 }, { 0x0000 }},
	{{ 0xFF47, 0x002F, 0x00B3 }, { 0x0000 }},
    {{ 0xFE7C, 0x005C, 0x016E }, { 0x0000 }},
    {{ 0xFE54, 0x005C, 0x01A8 }, { 0x0000 }},
	{{ 0xFD2C, 0x0000, 0xFFCE }, { 0x0001 }},
    {{ 0xFD59, 0x0000, 0xFFFC }, { 0x0001 }},
    {{ 0xFD20, 0x0000, 0x0025 }, { 0x0001 }},
	{{ 0xFDD6, 0x002F, 0xFDDA }, { 0x0001 }},
    {{ 0xFDEE, 0x002F, 0xFDE8 }, { 0x0001 }},
    {{ 0xFF56, 0x002F, 0xFF54 }, { 0x0001 }},
	{{ 0xFF76, 0x002F, 0xFF7B }, { 0x0001 }},
    {{ 0xFE4F, 0x005C, 0xFE53 }, { 0x0001 }},
    {{ 0xFE85, 0x005C, 0xFE7A }, { 0x0001 }},
	{{ 0xFFC3, 0x0000, 0xFD28 }, { 0x0002 }},
    {{ 0xFFEF, 0x0000, 0xFD62 }, { 0x0002 }},
    {{ 0x001A, 0x0000, 0xFD3C }, { 0x0002 }},
	{{ 0x0225, 0x002F, 0xFDDC }, { 0x0002 }},
    {{ 0x020F, 0x002F, 0xFDEC }, { 0x0002 }},
    {{ 0x0094, 0x002F, 0xFF6E }, { 0x0002 }},
	{{ 0x00C0, 0x002F, 0xFF4B }, { 0x0002 }},
    {{ 0x01D7, 0x005C, 0xFE39 }, { 0x0002 }},
    {{ 0x019E, 0x005C, 0xFE56 }, { 0x0002 }}, 
    {{ 0x02D8, 0x0000, 0xFFDC }, { 0x0003 }},
    {{ 0x02A4, 0x0000, 0xFFFC }, { 0x0003 }},
    {{ 0x02BC, 0x0000, 0x001F }, { 0x0003 }},
	{{ 0x008C, 0x002F, 0x00A3 }, { 0x0003 }},
    {{ 0x00B2, 0x002F, 0x00C9 }, { 0x0003 }},
    {{ 0x0211, 0x002F, 0x0214 }, { 0x0003 }},
	{{ 0x022A, 0x002F, 0x022D }, { 0x0003 }},
    {{ 0x01D6, 0x005C, 0x01E2 }, { 0x0003 }},
    {{ 0x01B6, 0x005C, 0x01BA }, { 0x0003 }},
	{{ 0x8000, 0x0000, 0x0000 }, { 0x0000 }},
};