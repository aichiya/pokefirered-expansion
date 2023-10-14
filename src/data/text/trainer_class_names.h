const u8 gTrainerClassNames[][13] = {
    [TRAINER_CLASS_NONE]                = _("{PKMN} TRAINER"),
    [TRAINER_CLASS_PKMN_TRAINER_UNUSED] = _("{PKMN} TRAINER"),
    [TRAINER_CLASS_AQUA_LEADER]         = _("AQUA LEADER"),
    [TRAINER_CLASS_TEAM_AQUA]           = _("TEAM AQUA"),
    [TRAINER_CLASS_RS_AROMA_LADY]       = _("AROMA LADY"),
    [TRAINER_CLASS_RS_RUIN_MANIAC]      = _("RUIN MANIAC"),
    [TRAINER_CLASS_INTERVIEWER]         = _("INTERVIEWER"),
    [TRAINER_CLASS_RS_TUBER_F]          = _("TUBER"),
    [TRAINER_CLASS_RS_TUBER_M]          = _("TUBER"),
    [TRAINER_CLASS_RS_COOLTRAINER]      = _("COOLTRAINER"),
    [TRAINER_CLASS_HEX_MANIAC]          = _("HEX MANIAC"),
    [TRAINER_CLASS_RS_LADY]             = _("LADY"),
    [TRAINER_CLASS_RS_BEAUTY]           = _("BEAUTY"),
    [TRAINER_CLASS_RICH_BOY]            = _("RICH BOY"),
    [TRAINER_CLASS_RS_POKEMANIAC]       = _("POKéMANIAC"),
    [TRAINER_CLASS_RS_SWIMMER_M]        = _("SWIMMER"),
    [TRAINER_CLASS_RS_BLACK_BELT]       = _("BLACKBELT"),
    [TRAINER_CLASS_GUITARIST]           = _("GUITARIST"),
    [TRAINER_CLASS_KINDLER]             = _("KINDLER"),
    [TRAINER_CLASS_RS_CAMPER]           = _("CAMPER"),
    [TRAINER_CLASS_BUG_MANIAC]          = _("BUG MANIAC"),
    [TRAINER_CLASS_RS_PSYCHIC]          = _("PSYCHIC"),
    [TRAINER_CLASS_RS_GENTLEMAN]        = _("GENTLEMAN"),
    [TRAINER_CLASS_RS_ELITE_FOUR]       = _("ELITE FOUR"),
    [TRAINER_CLASS_RS_LEADER]           = _("LEADER"),
    [TRAINER_CLASS_SCHOOL_KID]          = _("SCHOOL KID"),
    [TRAINER_CLASS_SR_AND_JR]           = _("SR. AND JR."),
    [TRAINER_CLASS_POKEFAN]             = _("POKéFAN"),
    [TRAINER_CLASS_EXPERT]              = _("EXPERT"),
    [TRAINER_CLASS_RS_YOUNGSTER]        = _("YOUNGSTER"),
    [TRAINER_CLASS_RS_CHAMPION]         = _("CHAMPION"),
    [TRAINER_CLASS_RS_FISHERMAN]        = _("FISHERMAN"),
    [TRAINER_CLASS_TRIATHLETE]          = _("TRIATHLETE"),
    [TRAINER_CLASS_DRAGON_TAMER]        = _("DRAGON TAMER"),
    [TRAINER_CLASS_RS_BIRD_KEEPER]      = _("BIRD KEEPER"),
    [TRAINER_CLASS_NINJA_BOY]           = _("NINJA BOY"),
    [TRAINER_CLASS_BATTLE_GIRL]         = _("BATTLE GIRL"),
    [TRAINER_CLASS_PARASOL_LADY]        = _("PARASOL LADY"),
    [TRAINER_CLASS_RS_SWIMMER_F]        = _("SWIMMER"),
    [TRAINER_CLASS_RS_PICNICKER]        = _("PICNICKER"),
    [TRAINER_CLASS_RS_TWINS]            = _("TWINS"),
    [TRAINER_CLASS_RS_SAILOR]           = _("SAILOR"),
    [TRAINER_CLASS_BOARDER]             = _("BOARDER"),
    [TRAINER_CLASS_COLLECTOR]           = _("COLLECTOR"),
    [TRAINER_CLASS_PKMN_TRAINER]        = _("{PKMN} TRAINER"),
    [TRAINER_CLASS_RS_PKMN_BREEDER]     = _("{PKMN} BREEDER"),
    [TRAINER_CLASS_RS_PKMN_RANGER]      = _("{PKMN} RANGER"),
    [TRAINER_CLASS_MAGMA_LEADER]        = _("MAGMA LEADER"),
    [TRAINER_CLASS_TEAM_MAGMA]          = _("TEAM MAGMA"),
    [TRAINER_CLASS_RS_LASS]             = _("LASS"),
    [TRAINER_CLASS_RS_BUG_CATCHER]      = _("BUG CATCHER"),
    [TRAINER_CLASS_RS_HIKER]            = _("HIKER"),
    [TRAINER_CLASS_RS_YOUNG_COUPLE]     = _("YOUNG COUPLE"),
    [TRAINER_CLASS_OLD_COUPLE]          = _("OLD COUPLE"),
    [TRAINER_CLASS_RS_SIS_AND_BRO]      = _("SIS AND BRO"),
    [TRAINER_CLASS_AQUA_ADMIN]          = _("AQUA ADMIN"),
    [TRAINER_CLASS_MAGMA_ADMIN]         = _("MAGMA ADMIN"),
    [TRAINER_CLASS_YOUNGSTER]           = _("YOUNGSTER"),
    [TRAINER_CLASS_BUG_CATCHER]         = _("BUG CATCHER"),
    [TRAINER_CLASS_LASS]                = _("LASS"),
    [TRAINER_CLASS_SAILOR]              = _("SAILOR"),
    [TRAINER_CLASS_CAMPER]              = _("JR.TRAINER♂"),
    [TRAINER_CLASS_PICNICKER]           = _("JR.TRAINER♀"),
    [TRAINER_CLASS_POKEMANIAC]          = _("POKéMANIAC"),
    [TRAINER_CLASS_SUPER_NERD]          = _("SUPER NERD"),
    [TRAINER_CLASS_HIKER]               = _("HIKER"),
    [TRAINER_CLASS_BIKER]               = _("BIKER"),
    [TRAINER_CLASS_BURGLAR]             = _("BURGLAR"),
    [TRAINER_CLASS_ENGINEER]            = _("ENGINEER"),
    [TRAINER_CLASS_FISHERMAN]           = _("FISHERMAN"),
    [TRAINER_CLASS_SWIMMER_M]           = _("SWIMMER"),
    [TRAINER_CLASS_CUE_BALL]            = _("CUE BALL"),
    [TRAINER_CLASS_GAMER]               = _("GAMBLER"),
    [TRAINER_CLASS_BEAUTY]              = _("BEAUTY"),
    [TRAINER_CLASS_SWIMMER_F]           = _("SWIMMER"),
    [TRAINER_CLASS_PSYCHIC]             = _("PSYCHIC"),
    [TRAINER_CLASS_ROCKER]              = _("ROCKER"),
    [TRAINER_CLASS_JUGGLER]             = _("JUGGLER"),
    [TRAINER_CLASS_TAMER]               = _("TAMER"),
    [TRAINER_CLASS_BIRD_KEEPER]         = _("BIRD KEEPER"),
    [TRAINER_CLASS_BLACK_BELT]          = _("BLACKBELT"),
    [TRAINER_CLASS_RIVAL_EARLY]         = _("RIVAL"),
    [TRAINER_CLASS_SCIENTIST]           = _("SCIENTIST"),
    [TRAINER_CLASS_BOSS]                = _("BOSS"),
    [TRAINER_CLASS_LEADER]              = _("LEADER"),
    [TRAINER_CLASS_TEAM_ROCKET]         = _("ROCKET"),
    [TRAINER_CLASS_COOLTRAINER]         = _("COOLTRAINER"),
    [TRAINER_CLASS_ELITE_FOUR]          = _("ELITE FOUR"),
    [TRAINER_CLASS_GENTLEMAN]           = _("GENTLEMAN"),
    [TRAINER_CLASS_RIVAL_LATE]          = _("RIVAL"),
    [TRAINER_CLASS_CHAMPION]            = _("CHAMPION"),
    [TRAINER_CLASS_CHANNELER]           = _("CHANNELER"),
    [TRAINER_CLASS_TWINS]               = _("TWINS"),
    [TRAINER_CLASS_COOL_COUPLE]         = _("COOL COUPLE"),
    [TRAINER_CLASS_YOUNG_COUPLE]        = _("YOUNG COUPLE"),
    [TRAINER_CLASS_CRUSH_KIN]           = _("CRUSH KIN"),
    [TRAINER_CLASS_SIS_AND_BRO]         = _("SIS AND BRO"),
    [TRAINER_CLASS_PKMN_PROF]           = _("{PKMN} PROF."),
    [TRAINER_CLASS_PLAYER]              = _("PLAYER"),
    [TRAINER_CLASS_CRUSH_GIRL]          = _("CRUSH GIRL"),
    [TRAINER_CLASS_TUBER]               = _("TUBER"),
    [TRAINER_CLASS_PKMN_BREEDER]        = _("{PKMN} BREEDER"),
    [TRAINER_CLASS_PKMN_RANGER]         = _("{PKMN} RANGER"),
    [TRAINER_CLASS_AROMA_LADY]          = _("AROMA LADY"),
    [TRAINER_CLASS_RUIN_MANIAC]         = _("RUIN MANIAC"),
    [TRAINER_CLASS_LADY]                = _("LADY"),
    [TRAINER_CLASS_PAINTER]             = _("PAINTER"),
};
