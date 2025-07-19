#include "global.h"
#include "gflib.h"
#include "battle_anim.h"
#include "battle_interface.h"
#include "random.h"
#include "trig.h"
#include "util.h"
#include "constants/songs.h"

static void AnimFlamethrower(struct Sprite *);
static void AnimSlidingFlame(struct Sprite *);
static void AnimSlidingFlame_Step(struct Sprite *);
static void AnimSpriteMoveLinear(struct Sprite *);
static void AnimSpriteMoveLinear_Step(struct Sprite *);
static void AnimSpriteMoveToMonPos(struct Sprite *);
static void AnimSpriteProjectileParabolic(struct Sprite *);
static void AnimSpriteProjectileParabolic_Step(struct Sprite *);
static void AnimSpriteStatic(struct Sprite *);

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
/////////////////
// GENERIC END //
/////////////////

//////////////////
// NORMAL BEGIN //
//////////////////
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
    .callback = AnimSpriteMoveLinear,
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
//////////////
// FIRE END //
//////////////

/////////////////
// WATER BEGIN //
/////////////////

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

static const union AnimCmd sAnim_OrbProjectile[] =
{
    ANIMCMD_FRAME(8, 1),
    ANIMCMD_END,
};
static const union AnimCmd *const sOrbProjectile[] =
{
    sAnim_OrbProjectile,
};
const struct SpriteTemplate gOrbProjectileSpriteTemplate =
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sOrbProjectile,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteProjectileParabolic,
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
    .callback = AnimSpriteMoveLinear,
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
/////////////
// ICE END //
/////////////

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

static void AnimSpriteStatic(struct Sprite *sprite)
{
    StartSpriteAnim(sprite, gBattleAnimArgs[2]);

    if (gBattleAnimArgs[4] == 0)
        InitSpritePosToAnimAttacker(sprite, TRUE);
    else
        InitSpritePosToAnimTarget(sprite, TRUE);

    sprite->data[0] = gBattleAnimArgs[3];
    sprite->callback = RunStoredCallbackWhenAnimEnds;
    StoreSpriteCallbackInData6(sprite, DestroyAnimSpriteAfterTimer);
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
    if (!gBattleAnimArgs[3])
        StartSpriteAnim(sprite, 2);
    InitSpritePosToAnimTarget(sprite, 1);
    sprite->data[0] = gBattleAnimArgs[2];
    sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2) + 8;
    sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET) - 8;
    sprite->data[5] = -30;
    InitAnimArcTranslation(sprite);
    sprite->callback = AnimSpriteProjectileParabolic_Step;
}

static void AnimSpriteProjectileParabolic_Step(struct Sprite* sprite)
{
    if (TranslateAnimHorizontalArc(sprite))
        DestroyAnimSprite(sprite);
}
///////////////////
// CALLBACKS END //
///////////////////