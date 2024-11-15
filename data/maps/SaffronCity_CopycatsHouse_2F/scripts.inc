SaffronCity_CopycatsHouse_2F_MapScripts::
	.byte 0

SaffronCity_CopycatsHouse_2F_EventScript_Doduo::
	lock
	faceplayer
	waitse
	playmoncry SPECIES_DODUO, CRY_MODE_NORMAL
	msgbox SaffronCity_CopycatsHouse_2F_Text_Doduo
	waitmoncry
	release
	end

SaffronCity_CopycatsHouse_2F_EventScript_Doll::
	lock
	msgbox SaffronCity_CopycatsHouse_2F_Text_RareMonOnlyDoll
	release
	end

SaffronCity_CopycatsHouse_2F_EventScript_Copycat::
	goto_if_questlog EventScript_ReleaseEnd
	special QuestLog_CutRecording
	lock
	faceplayer
	goto_if_set FLAG_GOT_TM31_IN_SAFFRON_CITY, SaffronCity_CopycatsHouse_2F_EventScript_AlreadyGotTM31
	checkitem ITEM_POKE_DOLL
	goto_if_eq VAR_RESULT, TRUE, SaffronCity_CopycatsHouse_2F_EventScript_TM31Gift
	msgbox SaffronCity_CopycatsHouse_2F_Text_MimickingFavoriteHobby
	release
	end

SaffronCity_CopycatsHouse_2F_EventScript_TM31Gift::
	msgbox SaffronCity_CopycatsHouse_2F_Text_TakeTM31
	checkitemspace ITEM_TM31
	goto_if_eq VAR_RESULT, FALSE, EventScript_BagIsFull
	bufferitemname STR_VAR_2, ITEM_TM31
	playfanfare MUS_LEVEL_UP
	message Text_ObtainedTheX
	waitmessage
	waitfanfare
	additem ITEM_TM31
	removeitem ITEM_POKE_DOLL
	setflag FLAG_GOT_TM31_IN_SAFFRON_CITY
	release
	end

SaffronCity_CopycatsHouse_2F_EventScript_AlreadyGotTM31::
	msgbox SaffronCity_CopycatsHouse_2F_Text_TM31_Contains
	release
	end

SaffronCity_CopycatsHouse_2F_EventScript_Computer::
	msgbox SaffronCity_CopycatsHouse_2F_Text_MySecrets, MSGBOX_SIGN
	end

SaffronCity_CopycatsHouse_2F_EventScript_Game::
	msgbox SaffronCity_CopycatsHouse_2F_Text_MarioWearingABucket, MSGBOX_SIGN
	end
