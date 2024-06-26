#include <ultra64.h>
#include <PR/gbi.h>
#include "courses/royal_raceway/course_displaylists.inc.h"

// Init RDP - RSP (Ceremony)
Gfx D_80284EE0[] = {
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsDPPipelineMode(G_PM_1PRIMITIVE),
    gsDPSetTextureLOD(G_TL_TILE),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetTextureDetail(G_TD_CLAMP),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetTextureConvert(G_TC_FILT),
    gsDPSetCombineKey(G_CK_NONE),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsDPSetColorDither(G_CD_DISABLE),
    gsDPSetColorDither(G_CD_MAGICSQ),
    gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPClearGeometryMode(G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD),
    gsSPSetGeometryMode(G_SHADE | G_SHADING_SMOOTH),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsSPEndDisplayList(),
};

// Peach's Castle (Ceremony)
Gfx D_80284F70[] = {
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_67E8),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_AEF8),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_1438),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_A970),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_CE0),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_E88),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_A618),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_AC30),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_3728),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_36B8),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_3628),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_3540),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_3DC0),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_3E50),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_3F18),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_50B0),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_5138),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_55D0),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_5B50),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_5C00),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_5D18),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_5DC8),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_5EF8),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_5740),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_57F0),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_58E8),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_1788),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_1AA0),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_1A30),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_23F8),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_2478),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_3790),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_6D0),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_4D0),
    gsSPDisplayList(d_course_royal_raceway_packed_dl_840),
    gsSPEndDisplayList(),
};
