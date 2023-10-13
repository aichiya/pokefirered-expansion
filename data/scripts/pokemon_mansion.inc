PokemonMansion_EventScript_SecretSwitch::
	msgbox PokemonMansion_Text_PressSecretSwitch, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, PokemonMansion_EventScript_DontPressSwitch
	msgbox PokemonMansion_Text_WhoWouldnt
	goto_if_set FLAG_POKEMON_MANSION_SWITCH_STATE, PokemonMansion_EventScript_ResetSwitch
	setflag FLAG_POKEMON_MANSION_SWITCH_STATE
	switch VAR_0x8004
	case 0, PokemonMansion_EventScript_PressSwitch_1F
	case 1, PokemonMansion_EventScript_PressSwitch_2F
	case 2, PokemonMansion_EventScript_PressSwitch_3F
	case 3, PokemonMansion_EventScript_PressSwitch_B1F
	end

PokemonMansion_EventScript_ResetSwitch::
	clearflag FLAG_POKEMON_MANSION_SWITCH_STATE
	switch VAR_0x8004
	case 0, PokemonMansion_EventScript_ResetSwitch_1F
	case 1, PokemonMansion_EventScript_ResetSwitch_2F
	case 2, PokemonMansion_EventScript_ResetSwitch_3F
	case 3, PokemonMansion_EventScript_ResetSwitch_B1F
	end

PokemonMansion_EventScript_DontPressSwitch::
	msgbox PokemonMansion_Text_NotQuiteYet
	releaseall
	end

PokemonMansion_EventScript_PressSwitch_1F::
	setmetatile 20, 17, METATILE_PokemonMansion_Floor, 0
	setmetatile 21, 17, METATILE_PokemonMansion_Floor, 0
	setmetatile 26, 27, METATILE_PokemonMansion_BasementFloor_ShadeFull, 0
	setmetatile 27, 27, METATILE_PokemonMansion_BasementFloor_ShadeFull, 0
	setmetatile 16, 7, METATILE_PokemonMansion_Floor, 0
	setmetatile 17, 7, METATILE_PokemonMansion_Floor, 0
	setmetatile 24, 13, METATILE_PokemonMansion_Barrier_Horizontal_TopLeft, 1
	setmetatile 25, 13, METATILE_PokemonMansion_Barrier_Horizontal_TopRight, 1
	return

PokemonMansion_EventScript_ResetSwitch_1F::
	setmetatile 20, 17, METATILE_PokemonMansion_Barrier_Horizontal_TopLeft, 1
	setmetatile 21, 17, METATILE_PokemonMansion_Barrier_Horizontal_TopRight, 1
	setmetatile 16, 7, METATILE_PokemonMansion_Barrier_Horizontal_TopLeft, 1
	setmetatile 17, 7, METATILE_PokemonMansion_Barrier_Horizontal_TopRight, 1
	setmetatile 26, 27, METATILE_PokemonMansion_Barrier_Horizontal_TopLeft, 1
	setmetatile 27, 27, METATILE_PokemonMansion_Barrier_Horizontal_TopRight, 1
	setmetatile 24, 13, METATILE_PokemonMansion_Floor, 0
	setmetatile 25, 13, METATILE_PokemonMansion_Floor, 0
	return

PokemonMansion_EventScript_PressSwitch_2F::
	setmetatile 18, 8, METATILE_PokemonMansion_Floor, 0
	setmetatile 19, 8, METATILE_PokemonMansion_Floor, 0
	setmetatile 7, 22, METATILE_PokemonMansion_Floor, 0
	setmetatile 7, 23, METATILE_PokemonMansion_Floor, 0
	setmetatile 9, 4, METATILE_PokemonMansion_Barrier_Vertical_TopBase, 1
	setmetatile 9, 5, METATILE_PokemonMansion_Barrier_Vertical_Bottom, 1
	return

PokemonMansion_EventScript_ResetSwitch_2F::
	setmetatile 18, 8, METATILE_PokemonMansion_Barrier_Horizontal_TopLeft, 1
	setmetatile 19, 8, METATILE_PokemonMansion_Barrier_Horizontal_TopRight, 1
	setmetatile 7, 22, METATILE_PokemonMansion_Barrier_Vertical_TopBase, 1
	setmetatile 7, 23, METATILE_PokemonMansion_Barrier_Vertical_Bottom, 1
	setmetatile 9, 4, METATILE_PokemonMansion_Floor, 0
	setmetatile 9, 5, METATILE_PokemonMansion_Floor, 0
	return

PokemonMansion_EventScript_PressSwitch_3F::
	setmetatile 15, 10, METATILE_PokemonMansion_Floor, 0
	setmetatile 15, 11, METATILE_PokemonMansion_Floor, 0
	setmetatile 15, 4, METATILE_PokemonMansion_Barrier_Vertical_TopBase, 1
	setmetatile 15, 5, METATILE_PokemonMansion_Barrier_Vertical_Bottom, 1
	return

PokemonMansion_EventScript_ResetSwitch_3F::
	setmetatile 15, 10, METATILE_PokemonMansion_Barrier_Vertical_TopBase, 1
	setmetatile 15, 11, METATILE_PokemonMansion_Barrier_Vertical_Bottom, 1
	setmetatile 15, 4, METATILE_PokemonMansion_Floor, 0
	setmetatile 15, 5, METATILE_PokemonMansion_Floor, 0
	return

PokemonMansion_EventScript_PressSwitch_B1F::
	setmetatile 26, 17, METATILE_PokemonMansion_Floor, 0
	setmetatile 27, 17, METATILE_PokemonMansion_Floor, 0
	setmetatile 13, 22, METATILE_PokemonMansion_Floor, 0
	setmetatile 13, 23, METATILE_PokemonMansion_Floor, 0
	setmetatile 16, 16, METATILE_PokemonMansion_Barrier_Horizontal_TopLeft, 1
	setmetatile 17, 16, METATILE_PokemonMansion_Barrier_Horizontal_TopRight, 1
	setmetatile 9, 6, METATILE_PokemonMansion_Barrier_Vertical_TopBase, 1
	setmetatile 9, 7, METATILE_PokemonMansion_Barrier_Vertical_Bottom, 1
	return

PokemonMansion_EventScript_ResetSwitch_B1F::
	setmetatile 26, 17, METATILE_PokemonMansion_Barrier_Horizontal_TopLeft, 1
	setmetatile 27, 17, METATILE_PokemonMansion_Barrier_Horizontal_TopRight, 1
	setmetatile 13, 22, METATILE_PokemonMansion_Barrier_Vertical_TopBase, 1
	setmetatile 13, 23, METATILE_PokemonMansion_Barrier_Vertical_Bottom, 1
	setmetatile 16, 16, METATILE_PokemonMansion_Floor, 0
	setmetatile 17, 16, METATILE_PokemonMansion_Floor, 0
	setmetatile 9, 6, METATILE_PokemonMansion_Floor, 0
	setmetatile 9, 7, METATILE_PokemonMansion_Floor, 0
	return
