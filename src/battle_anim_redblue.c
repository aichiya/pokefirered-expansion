#include "global.h"
#include "gflib.h"
#include "battle_anim.h"
#include "battle_interface.h"
#include "random.h"
#include "trig.h"
#include "util.h"
#include "constants/songs.h"

static void AnimSpriteMoveLinear(struct Sprite *);
static void AnimSpriteMoveLinear_Step(struct Sprite *);
static void AnimSpriteStatic(struct Sprite *);

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

static void AnimSpriteMoveLinear(struct Sprite *sprite)
{
    if (BATTLE_PARTNER(gBattleAnimAttacker) == gBattleAnimTarget && GetBattlerPosition(gBattleAnimTarget) < B_POSITION_PLAYER_RIGHT)
        gBattleAnimArgs[0] *= -1;
    InitSpritePosToAnimTarget(sprite, TRUE);
    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        gBattleAnimArgs[2] = -gBattleAnimArgs[2];

    sprite->data[0] = gBattleAnimArgs[4];
    sprite->data[1] = sprite->x + gBattleAnimArgs[0];
    sprite->data[2] = sprite->x + gBattleAnimArgs[2];
    sprite->data[3] = sprite->y + gBattleAnimArgs[1];
    sprite->data[4] = sprite->y + gBattleAnimArgs[3];
    InitAnimLinearTranslation(sprite);
    sprite->data[5] = gBattleAnimArgs[6];
    sprite->data[6] = gBattleAnimArgs[5];
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