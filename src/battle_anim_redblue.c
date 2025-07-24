#include "global.h"
#include "gflib.h"
#include "battle_anim.h"
#include "battle_interface.h"
#include "random.h"
#include "trig.h"
#include "util.h"
#include "constants/songs.h"

static void AnimSpriteMoveLinear(struct Sprite *);
static void AnimSpriteMoveLinear2(struct Sprite *);
static void AnimSpriteMoveLinear_Step(struct Sprite *);
static void AnimSpriteMoveLinearWithXFlip(struct Sprite *);
static void AnimSpriteMoveLinearWithXFlipMirrored(struct Sprite *);
static void AnimSpriteMoveLinearWithXYFlip(struct Sprite *);
static void AnimSpriteMoveToMonPos(struct Sprite *);
static void AnimSpriteProjectileParabolic(struct Sprite *);
static void AnimSpriteProjectileParabolic_Step(struct Sprite *);
static void AnimSpriteProjectileParabolicReversed1(struct Sprite *);
static void AnimSpriteProjectileParabolicReversed2(struct Sprite *);
static void AnimSpriteRises(struct Sprite *);
static void AnimSpriteSpiralToMonPos(struct Sprite *);
static void AnimSpriteStatic(struct Sprite *);
static void AnimSpriteStaticVisualXFlip(struct Sprite *);
static void AnimSpriteStaticPositionXYFlip(struct Sprite *);
static void AnimSpriteStaticMirrored(struct Sprite *);

// Probably temporary... probably... //
static void AnimFlamethrower(struct Sprite *);
static void AnimSlidingFlame(struct Sprite *);
static void AnimSlidingFlame_Step(struct Sprite *);
static void AnimWaterBubbleProjectile(struct Sprite *);
static void AnimWaterBubbleProjectile_Step1(struct Sprite *);
static void AnimWaterBubbleProjectile_Step2(struct Sprite *);
static void AnimWaterBubbleProjectile_Step3(struct Sprite *);
static void AnimGustTornado(struct Sprite *sprite);
static void AnimToTargetInSinWaveMirrored(struct Sprite *sprite);
static void AnimToTargetInSinWave3_Step(struct Sprite *sprite);
static void AnimPokeBallPuff(struct Sprite *sprite);
static void AnimPokeBallPuff_Step(struct Sprite *sprite);

///////////////////
// GENERIC BEGIN //
///////////////////
static const union AnimCmd sAnim_Generic0Repeating[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sGeneric0Repeating[] =
{
    sAnim_Generic0Repeating,
};

static const union AnimCmd sAnim_Generic0Ends[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};
static const union AnimCmd *const sGeneric0Ends[] =
{
    sAnim_Generic0Ends,
};

static const union AffineAnimCmd sGeneric0RepeatingAffine[] =
{
    AFFINEANIMCMD_FRAME(0, 0, 0, 1),
    AFFINEANIMCMD_JUMP(0),
};
static const union AffineAnimCmd *const sAffineAnims_Generic0RepeatingAffine[] =
{
    sGeneric0RepeatingAffine,
};

static const union AffineAnimCmd sGeneric0EndsAffine[] =
{
    AFFINEANIMCMD_FRAME(0, 0, 0, 1),
    AFFINEANIMCMD_END,
};
static const union AffineAnimCmd *const sAffineAnims_Generic0EndsAffine[] =
{
    sGeneric0EndsAffine,
};

const struct SpriteTemplate gHitSplatWithXYFlipSpriteTemplate =
{
    .tileTag = ANIM_TAG_IMPACT,
    .paletteTag = ANIM_TAG_IMPACT,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = sGeneric0Ends,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteStaticPositionXYFlip,
};

static const union AnimCmd sAnim_HornEndsNormal[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_HornEndsFlipped[] =
{
    ANIMCMD_FRAME(0, 1, .hFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd *const sHornEndsAnimTable[] =
{
    sAnim_HornEndsNormal,
    sAnim_HornEndsFlipped,
};
const struct SpriteTemplate gHornHitSpriteTemplate =
{
    .tileTag = ANIM_TAG_HORN_HIT,
    .paletteTag = ANIM_TAG_HORN_HIT,
    .oam = &gOamData_AffineOff_ObjNormal_16x8,
    .anims = sHornEndsAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteMoveLinearWithXFlipMirrored,
};

static const union AnimCmd sPokeBallPuffAnimCmdsTL[] =
{
    ANIMCMD_FRAME(0x14, 4),
    ANIMCMD_FRAME(0x10, 4),
    ANIMCMD_FRAME(0xC, 4),
    ANIMCMD_END,
};
static const union AnimCmd sPokeBallPuffAnimCmdsTR[] =
{
    ANIMCMD_FRAME(0x14, 4, .hFlip = TRUE),
    ANIMCMD_FRAME(0x10, 4, .hFlip = TRUE),
    ANIMCMD_FRAME(0xC, 4, .hFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd sPokeBallPuffAnimCmdsBL[] =
{
    ANIMCMD_FRAME(0x14, 4, .vFlip = TRUE),
    ANIMCMD_FRAME(0x10, 4, .vFlip = TRUE),
    ANIMCMD_FRAME(0xC, 4, .vFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd sPokeBallPuffAnimCmdsBR[] =
{
    ANIMCMD_FRAME(0x14, 4, .hFlip = TRUE, .vFlip = TRUE),
    ANIMCMD_FRAME(0x10, 4, .hFlip = TRUE, .vFlip = TRUE),
    ANIMCMD_FRAME(0xC, 4, .hFlip = TRUE, .vFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd *const sPokeBallPuffAnimTable[] =
{
    sPokeBallPuffAnimCmdsTL,
    sPokeBallPuffAnimCmdsTR,
    sPokeBallPuffAnimCmdsBL,
    sPokeBallPuffAnimCmdsBR,
};
const struct SpriteTemplate gPokeBallPuffSpriteTemplate =
{
    .tileTag = ANIM_TAG_MUSIC_NOTES,
    .paletteTag = ANIM_TAG_MUSIC_NOTES,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sPokeBallPuffAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimPokeBallPuff,
};

const struct SpriteTemplate gOrbSpiralInwardSpriteTemplate =
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteSpiralToMonPos,
};

const struct SpriteTemplate gOrbRisingSpriteTemplate =    
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteRises,
};

static const union AnimCmd sAnim_sSupersonic[] =
{
    ANIMCMD_FRAME(4, 4),
    ANIMCMD_FRAME(4, 4, .vFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_sSupersonicFlipped[] =
{
    ANIMCMD_FRAME(4, 4, .hFlip = TRUE),
    ANIMCMD_FRAME(4, 4, .hFlip = TRUE, .vFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd *const sSupersonicAnimTable[] =
{
    sAnim_sSupersonic,
    sAnim_sSupersonicFlipped,
};

const struct SpriteTemplate gSupersonicSpriteTemplate =
{
    .tileTag = ANIM_TAG_MUSIC_NOTES,
    .paletteTag = ANIM_TAG_MUSIC_NOTES,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sSupersonicAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimToTargetInSinWaveMirrored,
};
/////////////////
// GENERIC END //
/////////////////

//////////////////
// NORMAL BEGIN //
//////////////////
const struct SpriteTemplate gBarrageBallSpriteTemplate =    
{
    .tileTag = ANIM_TAG_BLACK_BALL_2,
    .paletteTag = ANIM_TAG_BLACK_BALL_2,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteProjectileParabolic,
};

static const union AnimCmd sAnim_BindTendrils[] =
{
    ANIMCMD_FRAME(0, 10),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_BindTendrils[] =
{
    sAnim_BindTendrils,
};
const struct SpriteTemplate gBindTendrilsSpriteTemplate =
{
    .tileTag = ANIM_TAG_TENDRILS,
    .paletteTag = ANIM_TAG_TENDRILS,
    .oam = &gOamData_AffineOff_ObjNormal_64x64,
    .anims = sAnims_BindTendrils,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteOnMonPos,
};

static const union AnimCmd sAnim_DefenseCurl1[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_DefenseCurl2[] =
{
    ANIMCMD_FRAME(1, 1),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_DefenseCurl3[] =
{
    ANIMCMD_FRAME(0, 1, .hFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_DefenseCurl4[] =
{
    ANIMCMD_FRAME(4, 1),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_DefenseCurl5[] =
{
    ANIMCMD_FRAME(4, 1, .hFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_DefenseCurl6[] =
{
    ANIMCMD_FRAME(0, 1, .vFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_DefenseCurl7[] =
{
    ANIMCMD_FRAME(1, 1, .vFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_DefenseCurl8[] =
{
    ANIMCMD_FRAME(0, 1, .vFlip = TRUE, .hFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd *const sDefenseCurlAnimTable[] =
{
    sAnim_DefenseCurl1,
    sAnim_DefenseCurl2,
    sAnim_DefenseCurl3,
    sAnim_DefenseCurl4,
    sAnim_DefenseCurl5,
    sAnim_DefenseCurl6,
    sAnim_DefenseCurl7,
    sAnim_DefenseCurl8,
};
const struct SpriteTemplate gDefenseCurlCombineSpriteTemplate =
{
    .tileTag = ANIM_TAG_RED_BALL,
    .paletteTag = ANIM_TAG_RED_BALL,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = sDefenseCurlAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteMoveLinear2,
};

static const union AnimCmd sAnim_SolidSquare[] =
{
    ANIMCMD_FRAME(4, 6),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_SolidSquare[] =
{
    sAnim_SolidSquare,
};
const struct SpriteTemplate gSolidSquareProjectileSpriteTemplate =
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sAnims_SolidSquare,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteProjectileParabolicReversed1,
};
const struct SpriteTemplate gSolidSquareProjectileReversedSpriteTemplate =
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sAnims_SolidSquare,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteProjectileParabolicReversed2,
};
const struct SpriteTemplate gSolidSquareCombineSpriteTemplate =
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = sAnims_SolidSquare,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteMoveLinearWithXYFlip,
};

static const union AnimCmd sAnim_Harden1[] =
{
    ANIMCMD_FRAME(8, 1),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_Harden2[] =
{
    ANIMCMD_FRAME(9, 1),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_Harden3[] =
{
    ANIMCMD_FRAME(8, 1, .hFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_Harden4[] =
{
    ANIMCMD_FRAME(12, 1),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_Harden5[] =
{
    ANIMCMD_FRAME(12, 1, .hFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_Harden6[] =
{
    ANIMCMD_FRAME(8, 1, .vFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_Harden7[] =
{
    ANIMCMD_FRAME(9, 1, .vFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_Harden8[] =
{
    ANIMCMD_FRAME(8, 1, .vFlip = TRUE, .hFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd *const sHardenSquareAnimTable[] =
{
    sAnim_Harden1,
    sAnim_Harden2,
    sAnim_Harden3,
    sAnim_Harden4,
    sAnim_Harden5,
    sAnim_Harden6,
    sAnim_Harden7,
    sAnim_Harden8,
};
const struct SpriteTemplate gHardenCombineSpriteTemplate =
{
    .tileTag = ANIM_TAG_RED_BALL,
    .paletteTag = ANIM_TAG_RED_BALL,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = sHardenSquareAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteMoveLinear2,
};
////////////////
// NORMAL END //
////////////////

////////////////
// FIRE BEGIN //
////////////////
static const union AnimCmd sAnim_FireBigFlame[] =
{
    ANIMCMD_FRAME(12, 1),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_FireBigFlame[] =
{
    sAnim_FireBigFlame,
};
const struct SpriteTemplate gFlamethrowerSpriteTemplate =
{
    .tileTag = ANIM_TAG_FIRE,
    .paletteTag = ANIM_TAG_FIRE,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sAnims_FireBigFlame,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimFlamethrower,
};

const struct SpriteTemplate gSlidingFlameSpriteTemplate =
{
    .tileTag = ANIM_TAG_FIRE,
    .paletteTag = ANIM_TAG_FIRE,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sAnims_FireBigFlame,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSlidingFlame,
};

static const union AnimCmd sAnim_LargeEmber[] =
{
    ANIMCMD_FRAME(8, 6),
    ANIMCMD_FRAME(12, 6),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_LargeEmber[] =
{
    sAnim_LargeEmber,
};
const struct SpriteTemplate gLargeEmberSpriteTemplate =
{
    .tileTag = ANIM_TAG_FIRE,
    .paletteTag = ANIM_TAG_FIRE,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sAnims_LargeEmber,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteStatic,
};

static const union AnimCmd sAnim_SmallEmber[] =
{
    ANIMCMD_FRAME(0, 6),
    ANIMCMD_FRAME(2, 6),
    ANIMCMD_FRAME(3, 6),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_SmallEmber[] =
{
    sAnim_SmallEmber,
};
const struct SpriteTemplate gSmallEmberSpriteTemplate =
{
    .tileTag = ANIM_TAG_FIRE,
    .paletteTag = ANIM_TAG_FIRE,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = sAnims_SmallEmber,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteStatic,
};
//////////////
// FIRE END //
//////////////

/////////////////
// WATER BEGIN //
/////////////////
const struct SpriteTemplate gWaterBubbleProjectileSpriteTemplate =
{
    .tileTag = ANIM_TAG_BUBBLE,
    .paletteTag = ANIM_TAG_BUBBLE,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sGeneric0Ends,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimWaterBubbleProjectile,
};

static const union AnimCmd sWithdrawAnim1Cmds[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};
static const union AnimCmd sWithdrawAnim2Cmds[] =
{
    ANIMCMD_FRAME(1, 1),
    ANIMCMD_END,
};
static const union AnimCmd sWithdrawAnim3Cmds[] =
{
    ANIMCMD_FRAME(4, 1),
    ANIMCMD_END,
};
static const union AnimCmd sWithdrawAnim4Cmds[] =
{
    ANIMCMD_FRAME(0, 1, .hFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd sWithdrawAnim5Cmds[] =
{
    ANIMCMD_FRAME(4, 1, .hFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd *const sWithdrawAnimTable[] =
{
    sWithdrawAnim1Cmds,
    sWithdrawAnim2Cmds,
    sWithdrawAnim3Cmds,
    sWithdrawAnim4Cmds,
    sWithdrawAnim5Cmds,
};
const struct SpriteTemplate gWithdrawSpriteTemplate =
{
    .tileTag = ANIM_TAG_RED_BALL,
    .paletteTag = ANIM_TAG_RED_BALL,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = sWithdrawAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteStaticVisualXFlip,
};
///////////////
// WATER END //
///////////////

////////////////////
// ELECTRIC BEGIN //
////////////////////

//////////////////
// ELECTRIC END //
//////////////////

/////////////////
// GRASS BEGIN //
/////////////////
static const union AnimCmd sAnim_OrbCombine[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};
static const union AnimCmd *const sOrbCombine[] =
{
    sAnim_OrbCombine,
};
const struct SpriteTemplate gOrbCombineSpriteTemplate =
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = sOrbCombine,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteMoveToMonPos,
};

static const union AnimCmd sAnim_LargeOrb[] =
{
    ANIMCMD_FRAME(8, 1),
    ANIMCMD_END,
};
static const union AnimCmd *const sLargeOrb[] =
{
    sAnim_LargeOrb,
};
const struct SpriteTemplate gOrbProjectileSpriteTemplate =
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sLargeOrb,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteProjectileParabolic,
};
const struct SpriteTemplate gOrbProjectileReversedSpriteTemplate =
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sLargeOrb,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteProjectileParabolicReversed2,
};
const struct SpriteTemplate gLargeOrbStaticSpriteTemplate =
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sLargeOrb,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteStatic,
};
///////////////
// GRASS END //
///////////////

///////////////
// ICE BEGIN //
///////////////
static const union AnimCmd sAnim_IceCrystalFull[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};

static const union AnimCmd *const sAnims_IceCrystalFull[] =
{
    sAnim_IceCrystalFull,
};

static const union AnimCmd sAnim_IceCrystalHalf[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};

static const union AnimCmd *const sAnims_IceCrystalHalf[] =
{
    sAnim_IceCrystalHalf,
};

const struct SpriteTemplate gBlizzardIceFallingSpriteTemplate =
{
    .tileTag = ANIM_TAG_ICE_CRYSTALS,
    .paletteTag = ANIM_TAG_ICE_CRYSTALS,
    .oam = &gOamData_AffineOff_ObjNormal_8x16,
    .anims = sAnims_IceCrystalFull,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteMoveLinearWithXFlip,
};

const struct SpriteTemplate gBlizzardIceLandedSpriteTemplate =
{
    .tileTag = ANIM_TAG_ICE_CRYSTALS,
    .paletteTag = ANIM_TAG_ICE_CRYSTALS,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = sAnims_IceCrystalHalf,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteStatic,
};

const struct SpriteTemplate gIceCrystalSpriteTemplate =    
{
    .tileTag = ANIM_TAG_ICE_CRYSTALS,
    .paletteTag = ANIM_TAG_ICE_CRYSTALS,
    .oam = &gOamData_AffineOff_ObjNormal_8x16,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteRises,
};
/////////////
// ICE END //
/////////////

////////////////////
// FIGHTING BEGIN //
////////////////////

//////////////////
// FIGHTING END //
//////////////////

//////////////////
// POISON BEGIN //
//////////////////
static const union AnimCmd sAnim_SludgeSplat[] =
{
    ANIMCMD_FRAME(8, 1),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_SludgeSplat[] =
{
    sAnim_SludgeSplat,
};
const struct SpriteTemplate gSludgeProjectileSpriteTemplate =
{
    .tileTag = ANIM_TAG_POISON_BUBBLE,
    .paletteTag = ANIM_TAG_POISON_BUBBLE,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sAnims_SludgeSplat,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteProjectileParabolic,
};

const struct SpriteTemplate gSludgeSplatSpriteTemplate =
{
    .tileTag = ANIM_TAG_POISON_BUBBLE,
    .paletteTag = ANIM_TAG_POISON_BUBBLE,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sAnims_SludgeSplat,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteStatic,
};
////////////////
// POISON END //
////////////////

//////////////////
// GROUND BEGIN //
//////////////////
static const union AnimCmd sSandAttackAnim1Cmds[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};
static const union AnimCmd sSandAttackAnim2Cmds[] =
{
    ANIMCMD_FRAME(1, 1),
    ANIMCMD_END,
};
static const union AnimCmd sSandAttackAnim3Cmds[] =
{
    ANIMCMD_FRAME(2, 1),
    ANIMCMD_END,
};
static const union AnimCmd sSandAttackAnim4Cmds[] =
{
    ANIMCMD_FRAME(3, 1),
    ANIMCMD_END,
};
static const union AnimCmd sSandAttackAnim5Cmds[] =
{
    ANIMCMD_FRAME(4, 1),
    ANIMCMD_END,
};
static const union AnimCmd *const sSandAttackAnimTable[] =
{
    sSandAttackAnim1Cmds,
    sSandAttackAnim2Cmds,
    sSandAttackAnim3Cmds,
    sSandAttackAnim4Cmds,
    sSandAttackAnim5Cmds,
};
const struct SpriteTemplate gSandAttackSpriteTemplate =
{
    .tileTag = ANIM_TAG_MIST_CLOUD,
    .paletteTag = ANIM_TAG_MIST_CLOUD,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = sSandAttackAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteStaticVisualXFlip,
};
////////////////
// GROUND END //
////////////////

//////////////////
// FLYING BEGIN //
//////////////////
static const union AnimCmd sAnim_GustTornado[] =
{
    ANIMCMD_FRAME(0, 4),
    ANIMCMD_FRAME(0, 4, .hFlip = TRUE),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_GustTornado[] =
{
    sAnim_GustTornado,
};
const struct SpriteTemplate gGustTornadoSpriteTemplate =
{
    .tileTag = ANIM_TAG_GUST,
    .paletteTag = ANIM_TAG_GUST,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = sAnims_GustTornado,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimGustTornado,
};
////////////////
// FLYING END //
////////////////

///////////////////
// PSYCHIC BEGIN //
///////////////////
static const union AnimCmd sAnim_BarrierWall0[] =
{
    ANIMCMD_FRAME(0, 15),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_BarrierWall1[] =
{
    ANIMCMD_FRAME(0, 15, .hFlip = TRUE),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_BarrierWall[] =
{
    sAnim_BarrierWall0,
    sAnim_BarrierWall1,
};

const struct SpriteTemplate gBarrierWallSpriteTemplate =
{
    .tileTag = ANIM_TAG_GRAY_LIGHT_WALL,
    .paletteTag = ANIM_TAG_GRAY_LIGHT_WALL,
    .oam = &gOamData_AffineOff_ObjNormal_64x64,
    .anims = sAnims_BarrierWall,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteStaticMirrored,
};
/////////////////
// PSYCHIC END //
/////////////////

///////////////
// BUG BEGIN //
///////////////

/////////////
// BUG END //
/////////////

////////////////
// ROCK BEGIN //
////////////////

//////////////
// ROCK END //
//////////////

/////////////////
// GHOST BEGIN //
/////////////////

///////////////
// GHOST END //
///////////////

//////////////////
// DRAGON BEGIN //
//////////////////

////////////////
// DRAGON END //
////////////////

//////////////////////////////////////////////////

/////////////////////
// CALLBACKS BEGIN //
/////////////////////
static void AnimFlamethrower(struct Sprite *sprite)
{
    bool8 animType;
    u8 coordType;
    
    if (GetBattlerSide(gBattleAnimAttacker) == GetBattlerSide(gBattleAnimTarget))
    {
        gBattleAnimArgs[0] *= -1;
        if (GetBattlerPosition(gBattleAnimAttacker) == B_POSITION_PLAYER_LEFT || GetBattlerPosition(gBattleAnimAttacker) == B_POSITION_OPPONENT_LEFT)
            gBattleAnimArgs[0] *= -1;
    }
    if ((gBattleAnimArgs[5] & 0xFF00) == 0)
        animType = TRUE;
    else
        animType = FALSE;
    if ((u8)gBattleAnimArgs[5] == 0)
        coordType = BATTLER_COORD_Y_PIC_OFFSET;
    else
        coordType = 1;
    InitSpritePosToAnimAttacker(sprite, animType);
    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        gBattleAnimArgs[2] = -gBattleAnimArgs[2];
    sprite->data[0] = gBattleAnimArgs[4];
    sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2) + gBattleAnimArgs[2];
    sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimTarget, coordType) + gBattleAnimArgs[3];
    sprite->callback = StartAnimLinearTranslation;
    StoreSpriteCallbackInData6(sprite, DestroyAnimSprite);
}

static void AnimSlidingFlame(struct Sprite *sprite)
{
    if (BATTLE_PARTNER(gBattleAnimAttacker) == gBattleAnimTarget && GetBattlerPosition(gBattleAnimTarget) < B_POSITION_PLAYER_RIGHT)
        gBattleAnimArgs[0] *= -1;
    InitSpritePosToAnimTarget(sprite, TRUE);
    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        gBattleAnimArgs[2] = -gBattleAnimArgs[2];

    sprite->data[0] = gBattleAnimArgs[3];
    sprite->data[1] = sprite->x;
    sprite->data[2] = sprite->x + gBattleAnimArgs[2];
    sprite->data[3] = sprite->y;
    sprite->data[4] = sprite->y;
    InitAnimLinearTranslation(sprite);
    sprite->data[5] = gBattleAnimArgs[5];
    sprite->data[6] = gBattleAnimArgs[4];
    sprite->data[7] = 0;
    sprite->callback = AnimSlidingFlame_Step;
}

static void AnimSlidingFlame_Step(struct Sprite *sprite)
{
    if (!AnimTranslateLinear(sprite))
    {
        sprite->y2 += Sin(sprite->data[7] >> 8, sprite->data[5]);
        sprite->data[7] += sprite->data[6];
    }
    else
    {
        DestroyAnimSprite(sprite);
    }
}

static void AnimSpriteMoveLinear(struct Sprite *sprite)
{
    StartSpriteAnim(sprite, gBattleAnimArgs[6]); // Anim Number

    if (gBattleAnimArgs[5] == ANIM_ATTACKER)
        InitSpritePosToAnimAttacker(sprite, TRUE);
    else
        InitSpritePosToAnimTarget(sprite, TRUE);

    sprite->data[0] = gBattleAnimArgs[4]; // Duration
    sprite->data[1] = sprite->x + gBattleAnimArgs[0]; // Starting X
    sprite->data[2] = sprite->x + gBattleAnimArgs[2]; // Ending X
    sprite->data[3] = sprite->y + gBattleAnimArgs[1]; // Starting Y
    sprite->data[4] = sprite->y + gBattleAnimArgs[3]; // Ending Y
    InitAnimLinearTranslation(sprite);
    sprite->data[5] = 0;
    sprite->data[6] = 0;
    sprite->data[7] = 0;
    sprite->callback = AnimSpriteMoveLinear_Step;
}

static void AnimSpriteMoveLinear2(struct Sprite *sprite)
{
    u8 battler = (gBattleAnimArgs[5] == ANIM_ATTACKER)
                ? gBattleAnimAttacker
                : gBattleAnimTarget;
    u8 side   = GetBattlerSide(battler);

    s16 startX =  gBattleAnimArgs[0];
    s16 startY =  gBattleAnimArgs[1];
    s16 endX   =  gBattleAnimArgs[2];
    s16 endY   =  gBattleAnimArgs[3];
    u8  duration = gBattleAnimArgs[4];
    u8  animId   = gBattleAnimArgs[6];
    u8  frame    = gBattleAnimArgs[7];

    if (side == B_SIDE_OPPONENT)
    {
        startX      = -startX;
        endX        = -endX;
        sprite->hFlip = TRUE;
    }
    else
    {
        sprite->hFlip = FALSE;
    }

    StartSpriteAnim(sprite, animId);
    sprite->animCmdIndex = frame;

    if (gBattleAnimArgs[5] == ANIM_ATTACKER)
        InitSpritePosToAnimAttacker(sprite, TRUE);
    else
        InitSpritePosToAnimTarget(sprite, TRUE);

    sprite->data[0] = duration;  
    sprite->data[1] = sprite->x + startX;
    sprite->data[2] = sprite->x + endX;
    sprite->data[3] = sprite->y + startY;
    sprite->data[4] = sprite->y + endY;
    InitAnimLinearTranslation(sprite);
    sprite->data[5] = 0;
    sprite->data[6] = 0;
    sprite->data[7] = 0;
    sprite->callback = AnimSpriteMoveLinear_Step;
}

static void AnimSpriteMoveLinear_Step(struct Sprite *sprite)
{
    if (!AnimTranslateLinear(sprite))
    {
        sprite->y2 += Sin(sprite->data[7] >> 8, sprite->data[5]);
        sprite->data[7] += sprite->data[6];
    }
    else
    {
        DestroyAnimSprite(sprite);
    }
}

static void AnimSpriteMoveLinearWithXFlip(struct Sprite *sprite)
{
    StartSpriteAnim(sprite, gBattleAnimArgs[6]); // Anim Number

    if (gBattleAnimArgs[5] == ANIM_ATTACKER)
        InitSpritePosToAnimAttacker(sprite, TRUE);
    else
        InitSpritePosToAnimTarget(sprite, TRUE);

    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        {
            gBattleAnimArgs[0] = -gBattleAnimArgs[0];
            gBattleAnimArgs[2] = -gBattleAnimArgs[2];
        }

    sprite->data[0] = gBattleAnimArgs[4]; // Duration
    sprite->data[1] = sprite->x + gBattleAnimArgs[0]; // Starting X
    sprite->data[2] = sprite->x + gBattleAnimArgs[2]; // Ending X
    sprite->data[3] = sprite->y + gBattleAnimArgs[1]; // Starting Y
    sprite->data[4] = sprite->y + gBattleAnimArgs[3]; // Ending Y
    InitAnimLinearTranslation(sprite);
    sprite->data[5] = 0;
    sprite->data[6] = 0;
    sprite->data[7] = 0;
    sprite->callback = AnimSpriteMoveLinear_Step;
}

static void AnimSpriteMoveLinearWithXFlipMirrored(struct Sprite *sprite)
{
    StartSpriteAnim(sprite, gBattleAnimArgs[6]); // Anim Number

    if (gBattleAnimArgs[5] == ANIM_ATTACKER)
        InitSpritePosToAnimAttacker(sprite, TRUE);
    else
        InitSpritePosToAnimTarget(sprite, TRUE);

    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        {
            gBattleAnimArgs[0] = -gBattleAnimArgs[0];
            gBattleAnimArgs[2] = -gBattleAnimArgs[2];
            StartSpriteAnim(sprite, 1);
        }
    else
        {
            StartSpriteAnim(sprite, 0);
        }


    sprite->data[0] = gBattleAnimArgs[4]; // Duration
    sprite->data[1] = sprite->x + gBattleAnimArgs[0]; // Starting X
    sprite->data[2] = sprite->x + gBattleAnimArgs[2]; // Ending X
    sprite->data[3] = sprite->y + gBattleAnimArgs[1]; // Starting Y
    sprite->data[4] = sprite->y + gBattleAnimArgs[3]; // Ending Y
    InitAnimLinearTranslation(sprite);
    sprite->data[5] = 0;
    sprite->data[6] = 0;
    sprite->data[7] = 0;
    sprite->callback = AnimSpriteMoveLinear_Step;
}

static void AnimSpriteMoveLinearWithXYFlip(struct Sprite *sprite)
{
    s16 origOffsetY = gBattleAnimArgs[1];

    StartSpriteAnim(sprite, gBattleAnimArgs[6]); // Anim Number

    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        gBattleAnimArgs[1] = -gBattleAnimArgs[1];

    if (gBattleAnimArgs[5] == ANIM_ATTACKER)
        InitSpritePosToAnimAttacker(sprite, TRUE);
    else
        InitSpritePosToAnimTarget(sprite,  TRUE);

    gBattleAnimArgs[1] = origOffsetY;

    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
    {
        gBattleAnimArgs[0] = -gBattleAnimArgs[0];
        gBattleAnimArgs[1] = -gBattleAnimArgs[1];
        gBattleAnimArgs[2] = -gBattleAnimArgs[2];
        gBattleAnimArgs[3] = -gBattleAnimArgs[3];
    }

    sprite->data[0] =  gBattleAnimArgs[4];             // Duration
    sprite->data[1] =  sprite->x + gBattleAnimArgs[0]; // Start X
    sprite->data[2] =  sprite->x + gBattleAnimArgs[2]; // End X
    sprite->data[3] =  sprite->y + gBattleAnimArgs[1]; // Start Y
    sprite->data[4] =  sprite->y + gBattleAnimArgs[3]; // End Y

    InitAnimLinearTranslation(sprite);
    sprite->data[5] = 0;
    sprite->data[6] = 0;
    sprite->data[7] = 0;
    sprite->callback  = AnimSpriteMoveLinear_Step;
}


static void AnimSpriteStatic(struct Sprite *sprite)
{
    StartSpriteAnim(sprite, gBattleAnimArgs[2]);

    if (gBattleAnimArgs[4] == 0)
        InitSpritePosToAnimAttacker(sprite, TRUE);
    else
        InitSpritePosToAnimTarget(sprite, TRUE);

    sprite->data[0] = gBattleAnimArgs[3];
    sprite->callback = DestroyAnimSpriteAfterTimer;
}

static void AnimSpriteStaticVisualXFlip(struct Sprite *sprite)
{
    u8 argIsAttacker = gBattleAnimArgs[4];
    u8 battler;

    StartSpriteAnim(sprite, gBattleAnimArgs[2]);

    if (argIsAttacker == 0)
    {
        battler = gBattleAnimAttacker;
        InitSpritePosToAnimAttacker(sprite, TRUE);
    }
    else
    {
        battler = gBattleAnimTarget;
        InitSpritePosToAnimTarget(sprite, TRUE);
    }

    sprite->hFlip = (GetBattlerSide(battler) == B_SIDE_PLAYER);
    sprite->data[0]  = gBattleAnimArgs[3];
    sprite->callback = DestroyAnimSpriteAfterTimer;
}

static void AnimSpriteStaticPositionXYFlip(struct Sprite *sprite)
{
    StartSpriteAnim(sprite, gBattleAnimArgs[4]);

    SetSpriteCoordsToAnimAttackerCoords(sprite);

    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        {
            sprite->x -= gBattleAnimArgs[0];
            sprite->y -= gBattleAnimArgs[1];
        }
    else
        {
            sprite->x += gBattleAnimArgs[0];
            sprite->y += gBattleAnimArgs[1];
        }

    sprite->data[0] = gBattleAnimArgs[3]; // Duration
    sprite->callback = RunStoredCallbackWhenAnimEnds;
    StoreSpriteCallbackInData6(sprite, DestroyAnimSpriteAfterTimer);
}

static void AnimSpriteStaticMirrored(struct Sprite *sprite)
{
    if (gBattleAnimArgs[3] == ANIM_ATTACKER)
        InitSpritePosToAnimAttacker(sprite, TRUE);
    else
        InitSpritePosToAnimTarget(sprite, TRUE);
    
    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
    {
        sprite->x -= gBattleAnimArgs[0];
        StartSpriteAnim(sprite, 1);
    }
    else
    {
        sprite->x += gBattleAnimArgs[0];
        StartSpriteAnim(sprite, 0);
    }


    sprite->data[0] = gBattleAnimArgs[2]; // Duration
    sprite->data[1] = sprite->x + gBattleAnimArgs[0]; // Starting X
    sprite->data[3] = sprite->y + gBattleAnimArgs[1]; // Starting Y
    
    sprite->callback = RunStoredCallbackWhenAnimEnds;
    StoreSpriteCallbackInData6(sprite, DestroyAnimSprite);
}

static void AnimSpriteMoveToMonPos(struct Sprite* sprite)
{
    if (gBattleAnimArgs[3] == ANIM_ATTACKER)
        InitSpritePosToAnimAttacker(sprite, TRUE);
    else
        InitSpritePosToAnimTarget(sprite, TRUE);

    sprite->data[0] = gBattleAnimArgs[2];
    sprite->data[2] = GetBattlerSpriteCoord(
        (gBattleAnimArgs[3] == ANIM_ATTACKER) ? gBattleAnimAttacker : gBattleAnimTarget, 
        BATTLER_COORD_X_2);
    sprite->data[4] = GetBattlerSpriteCoord(
        (gBattleAnimArgs[3] == ANIM_ATTACKER) ? gBattleAnimAttacker : gBattleAnimTarget, 
        BATTLER_COORD_Y_PIC_OFFSET);
    sprite->callback = StartAnimLinearTranslation;
    StoreSpriteCallbackInData6(sprite, DestroySpriteAndMatrix);
}

static void AnimSpriteProjectileParabolic(struct Sprite* sprite)
{
    if (gBattleAnimArgs[6] == ANIM_ATTACKER)
        InitSpritePosToAnimAttacker(sprite, TRUE);
    else
        InitSpritePosToAnimTarget(sprite, TRUE);

    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        gBattleAnimArgs[2] = -gBattleAnimArgs[2];

    StartSpriteAnim(sprite, gBattleAnimArgs[7]); // Anim Number

    sprite->data[0] = gBattleAnimArgs[5]; // Duration
    sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2) + gBattleAnimArgs[2];
    sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[3];
    sprite->data[5] = gBattleAnimArgs[4]; // Height
    InitAnimArcTranslation(sprite);
    sprite->callback = AnimSpriteProjectileParabolic_Step;
}

static void AnimSpriteProjectileParabolic_Step(struct Sprite* sprite)
{
    if (TranslateAnimHorizontalArc(sprite))
        DestroyAnimSprite(sprite);
}

static void AnimSpriteProjectileParabolicReversed1(struct Sprite* sprite)
{
    if (gBattleAnimArgs[6] == ANIM_ATTACKER)
        InitSpritePosToAnimAttacker(sprite, TRUE);
    else
        InitSpritePosToAnimTarget(sprite, TRUE);

    SetSpriteCoordsToAnimAttackerCoords(sprite);

    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        {
            sprite->x -= gBattleAnimArgs[0];
            sprite->y -= gBattleAnimArgs[1];
        }
    else
        {
            sprite->x += gBattleAnimArgs[0];
            sprite->y += gBattleAnimArgs[1];
        }

    StartSpriteAnim(sprite, gBattleAnimArgs[7]); // Anim Number

    sprite->data[0] = gBattleAnimArgs[5]; // Duration
    sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2) + gBattleAnimArgs[2];
    sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[3];
    sprite->data[5] = gBattleAnimArgs[4]; // Height
    InitAnimArcTranslation(sprite);
    sprite->callback = AnimSpriteProjectileParabolic_Step;
}

static void AnimSpriteProjectileParabolicReversed2(struct Sprite* sprite)
{
    if (gBattleAnimArgs[6] == ANIM_ATTACKER)
        InitSpritePosToAnimAttacker(sprite, TRUE);
    else
        InitSpritePosToAnimTarget(sprite, TRUE);

    SetSpriteCoordsToAnimAttackerCoords(sprite);

    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        {
            sprite->x -= gBattleAnimArgs[0];
            sprite->y -= gBattleAnimArgs[1];
            sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2) - gBattleAnimArgs[2];
            sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET) - gBattleAnimArgs[3];
        }
    else
        {
            sprite->x += gBattleAnimArgs[0];
            sprite->y += gBattleAnimArgs[1];
            sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2) + gBattleAnimArgs[2];
            sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[3];
        }

    StartSpriteAnim(sprite, gBattleAnimArgs[7]); // Anim Number

    sprite->data[0] = gBattleAnimArgs[5]; // Duration
    sprite->data[5] = gBattleAnimArgs[4]; // Height
    InitAnimArcTranslation(sprite);
    sprite->callback = AnimSpriteProjectileParabolic_Step;
}

static void AnimSpriteRises(struct Sprite *sprite)
{
    bool8 r4;
    u8 battlerId, coordType;

    if (gBattleAnimArgs[2] != ANIM_ATTACKER)
        InitSpritePosToAnimTarget(sprite, TRUE);
    else
        InitSpritePosToAnimAttacker(sprite, TRUE);
    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        gBattleAnimArgs[2] = -gBattleAnimArgs[2];
    sprite->data[0] = gBattleAnimArgs[4];
    sprite->data[2] = sprite->x;
    sprite->data[4] = sprite->y - 32;
    sprite->callback = StartAnimLinearTranslation;
    StoreSpriteCallbackInData6(sprite, DestroyAnimSprite);
}

static void AnimSpriteSpiralToMonPos(struct Sprite *sprite)
{
    if (gBattleAnimArgs[7] == ANIM_ATTACKER)
        InitSpritePosToAnimAttacker(sprite, TRUE);
    else
        InitSpritePosToAnimTarget(sprite, TRUE);

    StartSpriteAnim(sprite, gBattleAnimArgs[8]); // Anim Number
    
    sprite->x += gBattleAnimArgs[0];
    sprite->y += gBattleAnimArgs[1];
    sprite->data[0] = gBattleAnimArgs[6]; // Not duration
    sprite->data[1] = gBattleAnimArgs[2]; // Initial radius
    sprite->data[2] = gBattleAnimArgs[3]; // How much to circle the target
    sprite->data[3] = gBattleAnimArgs[4]; // Starting Offset X
    sprite->data[4] = gBattleAnimArgs[5]; // Angle increment
    StoreSpriteCallbackInData6(sprite, DestroyAnimSprite);
    sprite->callback = TranslateSpriteInGrowingCircle;
    sprite->callback(sprite);
}

static void AnimWaterBubbleProjectile(struct Sprite *sprite)
{
    u8 spriteId;

    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
    {
        sprite->x = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2) - gBattleAnimArgs[0];
        sprite->y = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[1];
        sprite->animPaused = TRUE;
    }
    else
    {
        sprite->x = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2) + gBattleAnimArgs[0];
        sprite->y = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[1];
        sprite->animPaused = TRUE;
    }
    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        gBattleAnimArgs[2] = -gBattleAnimArgs[2];
    sprite->data[0] = gBattleAnimArgs[6];
    sprite->data[1] = sprite->x;
    sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
    sprite->data[3] = sprite->y;
    sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);
    InitAnimLinearTranslation(sprite);
    spriteId = CreateInvisibleSpriteWithCallback(SpriteCallbackDummy);
    sprite->data[5] = spriteId;
    sprite->x -= Sin((u8)gBattleAnimArgs[4], gBattleAnimArgs[2]);
    sprite->y -= Cos((u8)gBattleAnimArgs[4], gBattleAnimArgs[3]);
    gSprites[spriteId].data[0] = gBattleAnimArgs[2];
    gSprites[spriteId].data[1] = gBattleAnimArgs[3];
    gSprites[spriteId].data[2] = gBattleAnimArgs[5];
    gSprites[spriteId].data[3] = (u8)gBattleAnimArgs[4] * 256;
    gSprites[spriteId].data[4] = gBattleAnimArgs[6];
    sprite->callback = AnimWaterBubbleProjectile_Step1;
    sprite->callback(sprite);
}
static void AnimWaterBubbleProjectile_Step1(struct Sprite *sprite)
{
    u8 otherSpriteId = sprite->data[5];
    u8 timer = gSprites[otherSpriteId].data[4];
    u16 trigIndex = gSprites[otherSpriteId].data[3];

    sprite->data[0] = 1;
    AnimTranslateLinear(sprite);
    sprite->x2 += Sin(trigIndex >> 8, gSprites[otherSpriteId].data[0]);
    sprite->y2 += Cos(trigIndex >> 8, gSprites[otherSpriteId].data[1]);
    gSprites[otherSpriteId].data[3] = trigIndex + gSprites[otherSpriteId].data[2];
    if (--timer != 0)
    {
        gSprites[otherSpriteId].data[4] = timer;
    }
    else
    {
        sprite->callback = AnimWaterBubbleProjectile_Step2;
        DestroySprite(&gSprites[otherSpriteId]);
    }
}
static void AnimWaterBubbleProjectile_Step2(struct Sprite *sprite)
{
    sprite->animPaused = FALSE;
    sprite->callback = RunStoredCallbackWhenAnimEnds;
    StoreSpriteCallbackInData6(sprite, AnimWaterBubbleProjectile_Step3);
}
static void AnimWaterBubbleProjectile_Step3(struct Sprite *sprite)
{
    sprite->data[0] = 10;
    sprite->callback = WaitAnimForDuration;
    StoreSpriteCallbackInData6(sprite, DestroySpriteAndMatrix);
}

static void AnimGustTornado(struct Sprite *sprite)
{
    bool8 animType;
    u8 coordType;
    if (GetBattlerSide(gBattleAnimAttacker) == GetBattlerSide(gBattleAnimTarget))
    {
        gBattleAnimArgs[0] *= -1;
        if (GetBattlerPosition(gBattleAnimAttacker) == B_POSITION_PLAYER_LEFT || GetBattlerPosition(gBattleAnimAttacker) == B_POSITION_OPPONENT_LEFT)
            gBattleAnimArgs[0] *= -1;
    }
    if ((gBattleAnimArgs[5] & 0xFF00) == 0)
        animType = TRUE;
    else
        animType = FALSE;
    if ((u8)gBattleAnimArgs[5] == 0)
        coordType = BATTLER_COORD_Y_PIC_OFFSET;
    else
        coordType = 1;
    InitSpritePosToAnimAttacker(sprite, animType);
    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        gBattleAnimArgs[2] = -gBattleAnimArgs[2];
    sprite->data[0] = gBattleAnimArgs[4];
    sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2) + gBattleAnimArgs[2];
    sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimTarget, coordType) + gBattleAnimArgs[3];
    sprite->callback = StartAnimLinearTranslation;
    StoreSpriteCallbackInData6(sprite, DestroyAnimSprite);
}

static void AnimToTargetInSinWaveMirrored(struct Sprite *sprite)
{
    u16 retArg;

    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        {
            StartSpriteAnim(sprite, 1);
        }
    else
        {
            StartSpriteAnim(sprite, 0);
        }

    InitSpritePosToAnimAttacker(sprite, TRUE);
    sprite->data[0] = 30;
    sprite->data[1] = sprite->x;
    sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
    sprite->data[3] = sprite->y;
    sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);
    InitAnimLinearTranslation(sprite);
    sprite->data[5] = (0xD200 / sprite->data[0]) * 2;
    sprite->data[7] = gBattleAnimArgs[3] / 4;
    retArg = gBattleAnimArgs[7];
    if (gBattleAnimArgs[7] > 127)
    {
        sprite->data[6] = (retArg - 127) * 256;
        sprite->data[7] = -sprite->data[7];
    }
    else
    {
        sprite->data[6] = retArg * 256;
    }
    sprite->callback = AnimToTargetInSinWave3_Step;
    sprite->callback(sprite);
}

static void AnimToTargetInSinWave3_Step(struct Sprite *sprite)
{
    if (AnimTranslateLinear(sprite))
        DestroyAnimSprite(sprite);
    sprite->y2 += Sin(sprite->data[6] >> 8, sprite->data[7]);
    if ((sprite->data[6] + sprite->data[5]) >> 8 > 127)
    {
        sprite->data[6] = 0;
        sprite->data[7] = -sprite->data[7];
    }
    else
    {
        sprite->data[6] += sprite->data[5];
    }
}

static void AnimPokeBallPuff(struct Sprite *sprite)
{
    if (gBattleAnimArgs[7] == ANIM_ATTACKER)
        InitSpritePosToAnimAttacker(sprite, TRUE);
    else
        InitSpritePosToAnimTarget(sprite, TRUE);
    
    sprite->x += gBattleAnimArgs[0];
    sprite->y += gBattleAnimArgs[1];

    sprite->data[0] = gBattleAnimArgs[4];
    sprite->data[1] = sprite->x;
    sprite->data[2] = sprite->x + gBattleAnimArgs[2];
    sprite->data[3] = sprite->y;
    sprite->data[4] = sprite->y + gBattleAnimArgs[3];
    InitSpriteDataForLinearTranslation(sprite);
    sprite->data[5] = sprite->data[1] / gBattleAnimArgs[4];
    sprite->data[6] = sprite->data[2] / gBattleAnimArgs[4];
    StartSpriteAnim(sprite, gBattleAnimArgs[5]);
    sprite->callback = AnimPokeBallPuff_Step;
}
static void AnimPokeBallPuff_Step(struct Sprite *sprite)
{
    TranslateSpriteLinearFixedPoint(sprite);
    sprite->data[1] -= sprite->data[5];
    sprite->data[2] -= sprite->data[6];
    if (!sprite->data[0])
        DestroyAnimSprite(sprite);
}
///////////////////
// CALLBACKS END //
///////////////////