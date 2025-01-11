#include "global.h"
#include "heal_location.h"
#include "event_data.h"
#include "constants/maps.h"
#include "constants/heal_locations.h"

static void SetWhiteoutRespawnHealerNpcAsLastTalked(u32 healLocationIdx);

// Arrays described here because porymap will overrwrite the below data file

// sSpawnPoints
// This array defines the fly points for unlocked spawns.

// sWhiteoutRespawnHealCenterMapIdxs
// This array defines the map where you actually respawn when you white out,
// based on where you last checkpointed.
// This is either the player's house or a Pokémon Center.
// The data are u16 instead of u8 for reasons unknown.

// sWhiteoutRespawnHealerNpcIds
// When you respawn, your character scurries back to either their house
// or a Pokémon Center, and hands their fainted Pokémon to their mother
// or the Nurse for healing.
// This array defines the index of the NPC on the map defined above
// with whom your character interacts in this cutscene.

#include "data/heal_locations.h"

static u32 GetHealLocationIndexFromMapGroupAndNum(u16 mapGroup, u16 mapNum)
{
    u32 i;

    for (i = 0; i < NELEMS(sSpawnPoints); i++) {
        if (sSpawnPoints[i].group == mapGroup && sSpawnPoints[i].map == mapNum)
        {
            return i + 1;
        }
    }

    return 0;
}

static const struct HealLocation * GetHealLocationPointerFromMapGroupAndNum(u16 mapGroup, u16 mapNum)
{
    u32 i = GetHealLocationIndexFromMapGroupAndNum(mapGroup, mapNum);
    if (i == 0)
        return NULL;

    return &sSpawnPoints[i - 1];
}

const struct HealLocation * GetHealLocation(u32 idx)
{
    if (idx == 0)
        return NULL;
    if (idx > NELEMS(sSpawnPoints))
        return NULL;
    return &sSpawnPoints[idx - 1];
}

void SetWhiteoutRespawnWarpAndHealerNpc(struct WarpData * warp)
{
    u32 healLocationIdx;

    if (VarGet(VAR_MAP_SCENE_TRAINER_TOWER) == 1)
    {
        if (!gSaveBlock1Ptr->trainerTower[gSaveBlock1Ptr->towerChallengeId].spokeToOwner)
            VarSet(VAR_MAP_SCENE_TRAINER_TOWER, 0);
        gSpecialVar_LastTalked = 1;
        warp->x = 4;
        warp->y = 11;
        warp->mapGroup = MAP_GROUP(TRAINER_TOWER_LOBBY);
        warp->mapNum = MAP_NUM(TRAINER_TOWER_LOBBY);
        warp->warpId = 0xFF;
    }
    else
    {
        healLocationIdx = GetHealLocationIndexFromMapGroupAndNum(gSaveBlock1Ptr->lastHealLocation.mapGroup, gSaveBlock1Ptr->lastHealLocation.mapNum);
        warp->mapGroup = sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][0];
        warp->mapNum = sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][1];
        warp->warpId = 0xFF;

        if (sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][0] == MAP_GROUP(PALLET_TOWN) && sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][1] == MAP_NUM(PALLET_TOWN))
        {
            warp->x = 5;
            warp->y = 6;
        }
        else if (sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][0] == MAP_GROUP(VIRIDIAN_CITY) && sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][1] == MAP_NUM(VIRIDIAN_CITY))
        {
            warp->x = 23;
            warp->y = 26;
        }
        else if (sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][0] == MAP_GROUP(PEWTER_CITY) && sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][1] == MAP_NUM(PEWTER_CITY))
        {
            warp->x = 19;
            warp->y = 26;
        }
        else if (sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][0] == MAP_GROUP(CERULEAN_CITY) && sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][1] == MAP_NUM(CERULEAN_CITY))
        {
            warp->x = 19;
            warp->y = 18;
        }
        else if (sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][0] == MAP_GROUP(LAVENDER_TOWN) && sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][1] == MAP_NUM(LAVENDER_TOWN))
        {
            warp->x = 3;
            warp->y = 6;
        }
        else if (sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][0] == MAP_GROUP(VERMILION_CITY) && sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][1] == MAP_NUM(VERMILION_CITY))
        {
            warp->x = 16;
            warp->y = 4;
        }
        else if (sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][0] == MAP_GROUP(CELADON_CITY) && sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][1] == MAP_NUM(CELADON_CITY))
        {
            warp->x = 41;
            warp->y = 10;
        }
        else if (sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][0] == MAP_GROUP(FUCHSIA_CITY) && sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][1] == MAP_NUM(FUCHSIA_CITY))
        {
            warp->x = 19;
            warp->y = 28;
        }
        else if (sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][0] == MAP_GROUP(CINNABAR_ISLAND) && sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][1] == MAP_NUM(CINNABAR_ISLAND))
        {
            warp->x = 11;
            warp->y = 12;
        }
        else if (sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][0] == MAP_GROUP(SAFFRON_CITY) && sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][1] == MAP_NUM(SAFFRON_CITY))
        {
            warp->x = 11;
            warp->y = 33;
        }
        else if (sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][0] == MAP_GROUP(INDIGO_PLATEAU_EXTERIOR) && sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][1] == MAP_NUM(INDIGO_PLATEAU_EXTERIOR))
        {
            warp->x = 9;
            warp->y = 6;
        }
        else if (sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][0] == MAP_GROUP(ROUTE4) && sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][1] == MAP_NUM(ROUTE4))
        {
            warp->x = 11;
            warp->y = 15;
        }
        else if (sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][0] == MAP_GROUP(ROUTE10) && sWhiteoutRespawnHealCenterMapIdxs[healLocationIdx - 1][1] == MAP_NUM(ROUTE10))
        {
            warp->x = 11;
            warp->y = 20;
        }
        else
        {
            warp->x = 3;
            warp->y = 3;
        }
        SetWhiteoutRespawnHealerNpcAsLastTalked(healLocationIdx);
    }
}

static void SetWhiteoutRespawnHealerNpcAsLastTalked(u32 healLocationIdx)
{
    gSpecialVar_LastTalked = sWhiteoutRespawnHealerNpcIds[healLocationIdx - 1];
}
