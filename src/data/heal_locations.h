static const struct HealLocation sSpawnPoints[] =
{
    [SPAWN_PALLET_TOWN - 1] = {MAP_GROUP(PALLET_TOWN), MAP_NUM(PALLET_TOWN), 5, 6},
    [SPAWN_VIRIDIAN_CITY - 1] = {MAP_GROUP(VIRIDIAN_CITY), MAP_NUM(VIRIDIAN_CITY), 23, 26},
    [SPAWN_PEWTER_CITY - 1] = {MAP_GROUP(PEWTER_CITY), MAP_NUM(PEWTER_CITY), 13, 26},
    [SPAWN_CERULEAN_CITY - 1] = {MAP_GROUP(CERULEAN_CITY), MAP_NUM(CERULEAN_CITY), 22, 20},
    [SPAWN_LAVENDER_TOWN - 1] = {MAP_GROUP(LAVENDER_TOWN), MAP_NUM(LAVENDER_TOWN), 6, 6},
    [SPAWN_VERMILION_CITY - 1] = {MAP_GROUP(VERMILION_CITY), MAP_NUM(VERMILION_CITY), 15, 7},
    [SPAWN_CELADON_CITY - 1] = {MAP_GROUP(CELADON_CITY), MAP_NUM(CELADON_CITY), 48, 12},
    [SPAWN_FUCHSIA_CITY - 1] = {MAP_GROUP(FUCHSIA_CITY), MAP_NUM(FUCHSIA_CITY), 25, 32},
    [SPAWN_CINNABAR_ISLAND - 1] = {MAP_GROUP(CINNABAR_ISLAND), MAP_NUM(CINNABAR_ISLAND), 14, 12},
    [SPAWN_INDIGO_PLATEAU - 1] = {MAP_GROUP(INDIGO_PLATEAU_EXTERIOR), MAP_NUM(INDIGO_PLATEAU_EXTERIOR), 11, 7},
    [SPAWN_SAFFRON_CITY - 1] = {MAP_GROUP(SAFFRON_CITY), MAP_NUM(SAFFRON_CITY), 24, 39},
    [SPAWN_ROUTE4 - 1] = {MAP_GROUP(ROUTE4), MAP_NUM(ROUTE4), 12, 6},
    [SPAWN_ROUTE10 - 1] = {MAP_GROUP(ROUTE10), MAP_NUM(ROUTE10), 13, 21},
    [SPAWN_ONE_ISLAND - 1] = {MAP_GROUP(ONE_ISLAND), MAP_NUM(ONE_ISLAND), 14, 6},
    [SPAWN_TWO_ISLAND - 1] = {MAP_GROUP(TWO_ISLAND), MAP_NUM(TWO_ISLAND), 21, 8},
    [SPAWN_THREE_ISLAND - 1] = {MAP_GROUP(THREE_ISLAND), MAP_NUM(THREE_ISLAND), 14, 28},
    [SPAWN_FOUR_ISLAND - 1] = {MAP_GROUP(FOUR_ISLAND), MAP_NUM(FOUR_ISLAND), 18, 21},
    [SPAWN_FIVE_ISLAND - 1] = {MAP_GROUP(FIVE_ISLAND), MAP_NUM(FIVE_ISLAND), 18, 7},
    [SPAWN_SEVEN_ISLAND - 1] = {MAP_GROUP(SEVEN_ISLAND), MAP_NUM(SEVEN_ISLAND), 12, 4},
    [SPAWN_SIX_ISLAND - 1] = {MAP_GROUP(SIX_ISLAND), MAP_NUM(SIX_ISLAND), 11, 12},
};

static const u16 sWhiteoutRespawnHealCenterMapIdxs[][2] =
{
    [SPAWN_PALLET_TOWN - 1] = {MAP_GROUP(PALLET_TOWN_PLAYERS_HOUSE_1F), MAP_NUM(PALLET_TOWN_PLAYERS_HOUSE_1F)},
    [SPAWN_VIRIDIAN_CITY - 1] = {MAP_GROUP(VIRIDIAN_CITY_POKEMON_CENTER_1F), MAP_NUM(VIRIDIAN_CITY_POKEMON_CENTER_1F)},
    [SPAWN_PEWTER_CITY - 1] = {MAP_GROUP(PEWTER_CITY_POKEMON_CENTER_1F), MAP_NUM(PEWTER_CITY_POKEMON_CENTER_1F)},
    [SPAWN_CERULEAN_CITY - 1] = {MAP_GROUP(CERULEAN_CITY_POKEMON_CENTER_1F), MAP_NUM(CERULEAN_CITY_POKEMON_CENTER_1F)},
    [SPAWN_LAVENDER_TOWN - 1] = {MAP_GROUP(LAVENDER_TOWN_POKEMON_CENTER_1F), MAP_NUM(LAVENDER_TOWN_POKEMON_CENTER_1F)},
    [SPAWN_VERMILION_CITY - 1] = {MAP_GROUP(VERMILION_CITY_POKEMON_CENTER_1F), MAP_NUM(VERMILION_CITY_POKEMON_CENTER_1F)},
    [SPAWN_CELADON_CITY - 1] = {MAP_GROUP(CELADON_CITY_POKEMON_CENTER_1F), MAP_NUM(CELADON_CITY_POKEMON_CENTER_1F)},
    [SPAWN_FUCHSIA_CITY - 1] = {MAP_GROUP(FUCHSIA_CITY_POKEMON_CENTER_1F), MAP_NUM(FUCHSIA_CITY_POKEMON_CENTER_1F)},
    [SPAWN_CINNABAR_ISLAND - 1] = {MAP_GROUP(CINNABAR_ISLAND_POKEMON_CENTER_1F), MAP_NUM(CINNABAR_ISLAND_POKEMON_CENTER_1F)},
    [SPAWN_INDIGO_PLATEAU - 1] = {MAP_GROUP(INDIGO_PLATEAU_POKEMON_CENTER_1F), MAP_NUM(INDIGO_PLATEAU_POKEMON_CENTER_1F)},
    [SPAWN_SAFFRON_CITY - 1] = {MAP_GROUP(SAFFRON_CITY_POKEMON_CENTER_1F), MAP_NUM(SAFFRON_CITY_POKEMON_CENTER_1F)},
    [SPAWN_ROUTE4 - 1] = {MAP_GROUP(ROUTE4_POKEMON_CENTER_1F), MAP_NUM(ROUTE4_POKEMON_CENTER_1F)},
    [SPAWN_ROUTE10 - 1] = {MAP_GROUP(ROUTE10_POKEMON_CENTER_1F), MAP_NUM(ROUTE10_POKEMON_CENTER_1F)},
    [SPAWN_ONE_ISLAND - 1] = {MAP_GROUP(ONE_ISLAND_POKEMON_CENTER_1F), MAP_NUM(ONE_ISLAND_POKEMON_CENTER_1F)},
    [SPAWN_TWO_ISLAND - 1] = {MAP_GROUP(TWO_ISLAND_POKEMON_CENTER_1F), MAP_NUM(TWO_ISLAND_POKEMON_CENTER_1F)},
    [SPAWN_THREE_ISLAND - 1] = {MAP_GROUP(THREE_ISLAND_POKEMON_CENTER_1F), MAP_NUM(THREE_ISLAND_POKEMON_CENTER_1F)},
    [SPAWN_FOUR_ISLAND - 1] = {MAP_GROUP(FOUR_ISLAND_POKEMON_CENTER_1F), MAP_NUM(FOUR_ISLAND_POKEMON_CENTER_1F)},
    [SPAWN_FIVE_ISLAND - 1] = {MAP_GROUP(FIVE_ISLAND_POKEMON_CENTER_1F), MAP_NUM(FIVE_ISLAND_POKEMON_CENTER_1F)},
    [SPAWN_SEVEN_ISLAND - 1] = {MAP_GROUP(SEVEN_ISLAND_POKEMON_CENTER_1F), MAP_NUM(SEVEN_ISLAND_POKEMON_CENTER_1F)},
    [SPAWN_SIX_ISLAND - 1] = {MAP_GROUP(SIX_ISLAND_POKEMON_CENTER_1F), MAP_NUM(SIX_ISLAND_POKEMON_CENTER_1F)},
};

static const u8 sWhiteoutRespawnHealerNpcIds[] =
{
    [SPAWN_PALLET_TOWN - 1] = 1,
    [SPAWN_VIRIDIAN_CITY - 1] = 1,
    [SPAWN_PEWTER_CITY - 1] = 3,
    [SPAWN_CERULEAN_CITY - 1] = 1,
    [SPAWN_LAVENDER_TOWN - 1] = 1,
    [SPAWN_VERMILION_CITY - 1] = 1,
    [SPAWN_CELADON_CITY - 1] = 1,
    [SPAWN_FUCHSIA_CITY - 1] = 1,
    [SPAWN_CINNABAR_ISLAND - 1] = 1,
    [SPAWN_INDIGO_PLATEAU - 1] = 2,
    [SPAWN_SAFFRON_CITY - 1] = 1,
    [SPAWN_ROUTE4 - 1] = 1,
    [SPAWN_ROUTE10 - 1] = 1,
    [SPAWN_ONE_ISLAND - 1] = 1,
    [SPAWN_TWO_ISLAND - 1] = 1,
    [SPAWN_THREE_ISLAND - 1] = 1,
    [SPAWN_FOUR_ISLAND - 1] = 1,
    [SPAWN_FIVE_ISLAND - 1] = 1,
    [SPAWN_SEVEN_ISLAND - 1] = 1,
    [SPAWN_SIX_ISLAND - 1] = 1,
};
