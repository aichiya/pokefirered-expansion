CeladonCity_GameCorner_PrizeRoom_MapScripts::
	.byte 0

CeladonCity_GameCorner_PrizeRoom_EventScript_BaldingMan::
	msgbox CeladonCity_GameCorner_PrizeRoom_Text_FancyThatPorygon, MSGBOX_NPC
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_OldMan::
	msgbox CeladonCity_GameCorner_PrizeRoom_Text_RakedItInToday, MSGBOX_NPC
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_PrizeClerkMons1::
	lock
	faceplayer
	goto_if_unset FLAG_GOT_COIN_CASE, CeladonCity_GameCorner_PrizeRoom_EventScript_NeedCoinCase
	goto_if_questlog EventScript_ReleaseEnd
	showcoinsbox 0, 0
	msgbox CeladonCity_GameCorner_PrizeRoom_Text_WeExchangeCoinsForPrizes
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_ChoosePrizeMon1
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_PrizeClerkMons2::
	lock
	faceplayer
	goto_if_unset FLAG_GOT_COIN_CASE, CeladonCity_GameCorner_PrizeRoom_EventScript_NeedCoinCase
	goto_if_questlog EventScript_ReleaseEnd
	showcoinsbox 0, 0
	msgbox CeladonCity_GameCorner_PrizeRoom_Text_WeExchangeCoinsForPrizes
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_ChoosePrizeMon2
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_ChoosePrizeMon1::
	message CeladonCity_GameCorner_PrizeRoom_Text_WhichPrize
	waitmessage
	multichoice 10, 0, MULTICHOICE_GAME_CORNER_POKEMON_PRIZES1, FALSE
	switch VAR_RESULT
	case 0, CeladonCity_GameCorner_PrizeRoom_EventScript_Abra
	case 1, CeladonCity_GameCorner_PrizeRoom_EventScript_Clefairy
	case 2, CeladonCity_GameCorner_PrizeRoom_EventScript_Nidorino
	case 3, CeladonCity_GameCorner_PrizeRoom_EventScript_EndPrizeExchange
	case 127, CeladonCity_GameCorner_PrizeRoom_EventScript_EndPrizeExchange
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_ChoosePrizeMon2::
	message CeladonCity_GameCorner_PrizeRoom_Text_WhichPrize
	waitmessage
	multichoice 11, 0, MULTICHOICE_GAME_CORNER_POKEMON_PRIZES2, FALSE
	switch VAR_RESULT
	case 0, CeladonCity_GameCorner_PrizeRoom_EventScript_Pinsir
	case 1, CeladonCity_GameCorner_PrizeRoom_EventScript_Dratini
	case 2, CeladonCity_GameCorner_PrizeRoom_EventScript_Porygon
	case 3, CeladonCity_GameCorner_PrizeRoom_EventScript_EndPrizeExchange
	case 127, CeladonCity_GameCorner_PrizeRoom_EventScript_EndPrizeExchange
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_EndPrizeExchange::
	hidecoinsbox 0, 0
	release
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_Abra::
	.ifdef FIRERED
	setvar VAR_TEMP_1, SPECIES_ABRA
	setvar VAR_TEMP_2, 120
	.else
	.ifdef LEAFGREEN
	setvar VAR_TEMP_1, SPECIES_ABRA
	setvar VAR_TEMP_2, 120
	.endif
	.endif
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_ConfirmPrizeMon1
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_Clefairy::
	.ifdef FIRERED
	setvar VAR_TEMP_1, SPECIES_CLEFAIRY
	setvar VAR_TEMP_2, 750
	.else
	.ifdef LEAFGREEN
	setvar VAR_TEMP_1, SPECIES_CLEFAIRY
	setvar VAR_TEMP_2, 750
	.endif
	.endif
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_ConfirmPrizeMon1
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_Nidorino::
	.ifdef FIRERED
	setvar VAR_TEMP_1, SPECIES_NIDORINO
	setvar VAR_TEMP_2, 1200
	.else
	.ifdef LEAFGREEN
	setvar VAR_TEMP_1, SPECIES_NIDORINO
	setvar VAR_TEMP_2, 1200
	.endif
	.endif
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_ConfirmPrizeMon1
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_Pinsir::
	.ifdef FIRERED
	setvar VAR_TEMP_1, SPECIES_PINSIR
	setvar VAR_TEMP_2, 2500
	.else
	.ifdef LEAFGREEN
	setvar VAR_TEMP_1, SPECIES_PINSIR
	setvar VAR_TEMP_2, 2500
	.endif
	.endif
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_ConfirmPrizeMon2
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_Dratini::
	.ifdef FIRERED
	setvar VAR_TEMP_1, SPECIES_DRATINI
	setvar VAR_TEMP_2, 4600
	.else
	.ifdef LEAFGREEN
	setvar VAR_TEMP_1, SPECIES_DRATINI
	setvar VAR_TEMP_2, 4600
	.endif
	.endif
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_ConfirmPrizeMon2
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_Porygon::
	.ifdef FIRERED
	setvar VAR_TEMP_1, SPECIES_PORYGON
	setvar VAR_TEMP_2, 6500
	.else
	.ifdef LEAFGREEN
	setvar VAR_TEMP_1, SPECIES_PORYGON
	setvar VAR_TEMP_2, 6500
	.endif
	.endif
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_ConfirmPrizeMon2
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_ConfirmPrizeMon1::
	bufferspeciesname STR_VAR_1, VAR_TEMP_1
	msgbox CeladonCity_GameCorner_PrizeRoom_Text_YouWantPrize, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, CeladonCity_GameCorner_PrizeRoom_EventScript_EndPrizeExchange
	checkcoins VAR_RESULT
	goto_if_lt VAR_RESULT, VAR_TEMP_2, CeladonCity_GameCorner_PrizeRoom_EventScript_NotEnoughCoins
	textcolor NPC_TEXT_COLOR_NEUTRAL
	switch VAR_TEMP_1
	case SPECIES_ABRA,     CeladonCity_GameCorner_PrizeRoom_EventScript_GiveAbra
	case SPECIES_CLEFAIRY, CeladonCity_GameCorner_PrizeRoom_EventScript_GiveClefairy
	case SPECIES_NIDORINO,  CeladonCity_GameCorner_PrizeRoom_EventScript_GiveNidorino
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_ConfirmPrizeMon2::
	bufferspeciesname STR_VAR_1, VAR_TEMP_1
	msgbox CeladonCity_GameCorner_PrizeRoom_Text_YouWantPrize, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, CeladonCity_GameCorner_PrizeRoom_EventScript_EndPrizeExchange
	checkcoins VAR_RESULT
	goto_if_lt VAR_RESULT, VAR_TEMP_2, CeladonCity_GameCorner_PrizeRoom_EventScript_NotEnoughCoins
	textcolor NPC_TEXT_COLOR_NEUTRAL
	switch VAR_TEMP_1
	case SPECIES_PINSIR,     CeladonCity_GameCorner_PrizeRoom_EventScript_GivePinsir
	case SPECIES_DRATINI, CeladonCity_GameCorner_PrizeRoom_EventScript_GiveDratini
	case SPECIES_PORYGON,  CeladonCity_GameCorner_PrizeRoom_EventScript_GivePorygon
	end


CeladonCity_GameCorner_PrizeRoom_EventScript_GiveAbra::
	.ifdef FIRERED
	givemon VAR_TEMP_1, 9
	.else
	.ifdef LEAFGREEN
	givemon VAR_TEMP_1, 7
	.endif
	.endif
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_CheckReceivedMon
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_GiveClefairy::
	.ifdef FIRERED
	givemon VAR_TEMP_1, 8
	.else
	.ifdef LEAFGREEN
	givemon VAR_TEMP_1, 12
	.endif
	.endif
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_CheckReceivedMon
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_GiveNidorino::
	givemon VAR_TEMP_1, 25
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_CheckReceivedMon
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_GivePinsir::
	givemon VAR_TEMP_1, 18
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_CheckReceivedMon
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_GiveDratini::
	.ifdef FIRERED
	givemon VAR_TEMP_1, 18
	.else
	.ifdef LEAFGREEN
	givemon VAR_TEMP_1, 24
	.endif
	.endif
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_CheckReceivedMon
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_GivePorygon::
	.ifdef FIRERED
	givemon VAR_TEMP_1, 26
	.else
	.ifdef LEAFGREEN
	givemon VAR_TEMP_1, 18
	.endif
	.endif
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_CheckReceivedMon
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_CheckReceivedMon::
	goto_if_eq VAR_RESULT, 0, CeladonCity_GameCorner_PrizeRoom_EventScript_ReceivedMonParty
	goto_if_eq VAR_RESULT, 1, CeladonCity_GameCorner_PrizeRoom_EventScript_ReceivedMonPC
	goto_if_eq VAR_RESULT, 2, CeladonCity_GameCorner_PrizeRoom_EventScript_PartyFull
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_PartyFull::
	textcolor NPC_TEXT_COLOR_NEUTRAL
	msgbox Text_NoMoreRoomForPokemon
	hidecoinsbox 0, 0
	release
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_NicknamePartyMon::
	getpartysize
	subvar VAR_RESULT, 1
	copyvar VAR_0x8004, VAR_RESULT
	call EventScript_ChangePokemonNickname
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_EndPrizeExchange
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_NeedCoinCase::
	textcolor NPC_TEXT_COLOR_NEUTRAL
	msgbox CeladonCity_GameCorner_PrizeRoom_Text_CoinCaseRequired
	release
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_NotEnoughCoins::
	msgbox CeladonCity_GameCorner_PrizeRoom_Text_NeedMoreCoins
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_EndPrizeExchange
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_ReceivedMonParty::
	removecoins VAR_TEMP_2
	updatecoinsbox 0, 5
	bufferspeciesname STR_VAR_1, VAR_TEMP_1
	playfanfare MUS_LEVEL_UP
	message Text_PlayerObtainedTheMon
	waitmessage
	waitfanfare
	msgbox Text_GiveNicknameToThisMon, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, YES, CeladonCity_GameCorner_PrizeRoom_EventScript_NicknamePartyMon
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_EndPrizeExchange
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_ReceivedMonPC::
	removecoins VAR_TEMP_2
	updatecoinsbox 0, 5
	bufferspeciesname STR_VAR_1, VAR_TEMP_1
	playfanfare MUS_LEVEL_UP
	message Text_PlayerObtainedTheMon
	waitmessage
	waitfanfare
	msgbox Text_GiveNicknameToThisMon, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, CeladonCity_GameCorner_PrizeRoom_EventScript_TransferredToPC
	call EventScript_NameReceivedBoxMon
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_TransferredToPC
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_TransferredToPC::
	call EventScript_TransferredToPC
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_EndPrizeExchange
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_PrizeClerkTMs::
	lock
	faceplayer
	goto_if_unset FLAG_GOT_COIN_CASE, CeladonCity_GameCorner_PrizeRoom_EventScript_NeedCoinCase
	goto_if_questlog EventScript_ReleaseEnd
	showcoinsbox 0, 0
	msgbox CeladonCity_GameCorner_PrizeRoom_Text_WeExchangeCoinsForPrizes
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_ChoosePrizeTM
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_ChoosePrizeTM::
	message CeladonCity_GameCorner_PrizeRoom_Text_WhichPrize
	waitmessage
	multichoice 11, 0, MULTICHOICE_GAME_CORNER_TMPRIZES, FALSE
	switch VAR_RESULT
	case 0, CeladonCity_GameCorner_PrizeRoom_EventScript_TM23
	case 1, CeladonCity_GameCorner_PrizeRoom_EventScript_TM15
	case 2, CeladonCity_GameCorner_PrizeRoom_EventScript_TM50
	case 3, CeladonCity_GameCorner_PrizeRoom_EventScript_EndPrizeExchange
	case 127, CeladonCity_GameCorner_PrizeRoom_EventScript_EndPrizeExchange
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_TM23::
	setvar VAR_TEMP_1, ITEM_TM23
	setvar VAR_TEMP_2, 3300
	buffermovename STR_VAR_2, MOVE_ICE_BEAM
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_ConfirmPrizeTM
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_TM15::
	setvar VAR_TEMP_1, ITEM_TM15
	setvar VAR_TEMP_2, 5500
	buffermovename STR_VAR_2, MOVE_IRON_TAIL
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_ConfirmPrizeTM
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_TM50::
	setvar VAR_TEMP_1, ITEM_TM50
	setvar VAR_TEMP_2, 7700
	buffermovename STR_VAR_2, MOVE_THUNDERBOLT
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_ConfirmPrizeTM
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_ConfirmPrizeTM::
	msgbox CeladonCity_GameCorner_PrizeRoom_Text_YouWantTM, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, CeladonCity_GameCorner_PrizeRoom_EventScript_EndPrizeExchange
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_TryGivePrize
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_TryGivePrize::
	bufferitemname STR_VAR_1, VAR_TEMP_1
	checkcoins VAR_RESULT
	goto_if_lt VAR_RESULT, VAR_TEMP_2, CeladonCity_GameCorner_PrizeRoom_EventScript_NotEnoughCoins
	checkitemspace VAR_TEMP_1
	goto_if_eq VAR_RESULT, FALSE, CeladonCity_GameCorner_PrizeRoom_EventScript_BagFull
	removecoins VAR_TEMP_2
	updatecoinsbox 0, 5
	giveitem VAR_TEMP_1
	goto CeladonCity_GameCorner_PrizeRoom_EventScript_EndPrizeExchange
	end

CeladonCity_GameCorner_PrizeRoom_EventScript_BagFull::
	textcolor NPC_TEXT_COLOR_NEUTRAL
	msgbox Text_TooBadBagFull
	hidecoinsbox 0, 0
	release
	end
