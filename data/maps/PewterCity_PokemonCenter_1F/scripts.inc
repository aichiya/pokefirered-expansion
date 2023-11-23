.equ LOCALID_JIGGLYPUFF, 1

PewterCity_PokemonCenter_1F_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, PewterCity_PokemonCenter_1F_OnTransition
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
	.byte 0

PewterCity_PokemonCenter_1F_OnTransition::
	setrespawn SPAWN_PEWTER_CITY
	end

PewterCity_PokemonCenter_1F_EventScript_Nurse::
	lock
	faceplayer
	call EventScript_PkmnCenterNurse
	release
	end

PewterCity_PokemonCenter_1F_EventScript_Gentleman::
	msgbox PewterCity_PokemonCenter_1F_Text_TeamRocketMtMoonImOnPhone, MSGBOX_NPC
	end

PewterCity_PokemonCenter_1F_EventScript_Jigglypuff::
	lock
	faceplayer
	fadeoutbgm 0
	playbgm MUS_JIGGLYPUFF, 0
	message PewterCity_PokemonCenter_1F_Text_Jigglypuff
	applymovement LOCALID_JIGGLYPUFF, PewterCity_Movement_JigglypuffDance
	waitmovement 0
	waitmessage
	delay 400
	playbgm MUS_POKE_CENTER, 1
	release
	end

PewterCity_Movement_JigglypuffDance::
	walk_in_place_down
	delay_4
	walk_in_place_left
	delay_4
	walk_in_place_up
	delay_4
	walk_in_place_right
	delay_4
	walk_in_place_down
	delay_4
	walk_in_place_left
	delay_4
	walk_in_place_up
	delay_4
	walk_in_place_right
	delay_4
	walk_in_place_down
	delay_4
	walk_in_place_left
	delay_4
	walk_in_place_up
	delay_4
	walk_in_place_right
	delay_4
	walk_in_place_down
	delay_4
	walk_in_place_left
	delay_4
	walk_in_place_up
	delay_4
	walk_in_place_right
	step_end

PewterCity_PokemonCenter_1F_EventScript_Couch::
	msgbox PewterCity_PokemonCenter_1F_Text_WhenJiggylypuffSingsMonsGetDrowsy, MSGBOX_NPC
	end

PewterCity_PokemonCenter_1F_EventScript_GBAKid1::
	lock
	msgbox PewterCity_PokemonCenter_1F_Text_TradingMyClefairyForPikachu
	release
	end

PewterCity_PokemonCenter_1F_EventScript_GBAKid2::
	msgbox PewterCity_PokemonCenter_1F_Text_TradingPikachuWithKid, MSGBOX_NPC
	end
