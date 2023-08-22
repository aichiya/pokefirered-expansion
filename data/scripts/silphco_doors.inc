EventScript_NeedCardKey::
	msgbox Text_ItNeedsCardKey
	releaseall
	end

EventScript_DoorUnlocked::
	msgbox Text_TheDoorIsOpen
	releaseall
	end

EventScript_Close2FDoor1::
	setmetatile 4, 4, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	setmetatile 5, 4, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	return

EventScript_Close2FDoor2::
	setmetatile 4, 10, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	setmetatile 5, 10, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	return

EventScript_Close3FDoor1::
	setmetatile 9, 8, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	setmetatile 9, 9, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	return

EventScript_Close3FDoor2::
	setmetatile 17, 8, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	setmetatile 17, 9, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	return

EventScript_Close4FDoor1::
	setmetatile 4, 12, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	setmetatile 5, 12, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	return

EventScript_Close4FDoor2::
	setmetatile 12, 8, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	setmetatile 13, 8, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	return

EventScript_Close5FDoor1::
	setmetatile 7, 4, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	setmetatile 7, 5, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	return

EventScript_Close5FDoor2::
	setmetatile 7, 12, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	setmetatile 7, 13, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	return

EventScript_Close5FDoor3::
	setmetatile 0, 0, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	setmetatile 0, 0, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	return

EventScript_Close6FDoor::
	setmetatile 5, 12, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	setmetatile 5, 13, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	return

EventScript_Close7FDoor1::
	setmetatile 10, 6, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	setmetatile 11, 6, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	return

EventScript_Close7FDoor2::
	setmetatile 20, 4, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	setmetatile 21, 4, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	return

EventScript_Close7FDoor3::
	setmetatile 20, 12, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	setmetatile 21, 12, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	return

EventScript_Close8FDoor::
	setmetatile 7, 8, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	setmetatile 7, 9, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	return

EventScript_Close9FDoor1::
	setmetatile 3, 8, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	setmetatile 3, 9, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	return

EventScript_Close9FDoor2::
	setmetatile 11, 12, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	setmetatile 11, 13, METATILE_SilphCo_VerticalBarrier_TopLeft, 1
	return

EventScript_Close9FDoor3::
	setmetatile 18, 4, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	setmetatile 19, 4, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	return

EventScript_Close9FDoor4::
	setmetatile 18, 10, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	setmetatile 19, 10, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	return

EventScript_Close10FDoor::
	setmetatile 10, 8, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	setmetatile 11, 8, METATILE_SilphCo_HorizontalBarrier_TopLeft, 1
	return

EventScript_Close11FDoor::
	setmetatile 6, 14, METATILE_SilphCo_HorizontalBarrier_TopRight, 1
	setmetatile 7, 14, METATILE_SilphCo_HorizontalBarrier_TopRight, 1
	return

EventScript_Open2FDoor1::
	setmetatile 4, 4, METATILE_SilphCo_Floor, 0
	setmetatile 5, 4, METATILE_SilphCo_Floor, 0
	return

EventScript_Open2FDoor2::
	setmetatile 4, 10, METATILE_SilphCo_Floor, 0
	setmetatile 5, 10, METATILE_SilphCo_Floor, 0
	return

EventScript_Open3FDoor1::
	setmetatile 9, 8, METATILE_SilphCo_Floor, 0
	setmetatile 9, 9, METATILE_SilphCo_Floor, 0
	return

EventScript_Open3FDoor2::
	setmetatile 17, 8, METATILE_SilphCo_Floor, 0
	setmetatile 17, 9, METATILE_SilphCo_Floor, 0
	return

EventScript_Open4FDoor1::
	setmetatile 4, 12, METATILE_SilphCo_Floor, 0
	setmetatile 5, 12, METATILE_SilphCo_Floor, 0
	return

EventScript_Open4FDoor2::
	setmetatile 12, 8, METATILE_SilphCo_Floor, 0
	setmetatile 13, 8, METATILE_SilphCo_Floor, 0
	return

EventScript_Open5FDoor1::
	setmetatile 7, 4, METATILE_SilphCo_Floor, 0
	setmetatile 7, 5, METATILE_SilphCo_Floor, 0
	return

EventScript_Open5FDoor2::
	setmetatile 7, 12, METATILE_SilphCo_Floor, 0
	setmetatile 7, 13, METATILE_SilphCo_Floor, 0
	return

EventScript_Open5FDoor3::
	setmetatile 0, 0, METATILE_SilphCo_Floor, 0
	setmetatile 0, 0, METATILE_SilphCo_Floor, 0
	return

EventScript_Open6FDoor::
	setmetatile 5, 12, METATILE_SilphCo_Floor, 0
	setmetatile 5, 13, METATILE_SilphCo_Floor, 0
	return

EventScript_Open7FDoor1::
	setmetatile 10, 6, METATILE_SilphCo_Floor, 0
	setmetatile 11, 6, METATILE_SilphCo_Floor, 0
	return

EventScript_Open7FDoor2::
	setmetatile 20, 4, METATILE_SilphCo_Floor, 0
	setmetatile 21, 4, METATILE_SilphCo_Floor, 0
	return

EventScript_Open7FDoor3::
	setmetatile 20, 12, METATILE_SilphCo_Floor, 0
	setmetatile 21, 12, METATILE_SilphCo_Floor, 0
	return

EventScript_Open8FDoor::
	setmetatile 7, 8, METATILE_SilphCo_Floor, 0
	setmetatile 7, 9, METATILE_SilphCo_Floor, 0
	return

EventScript_Open9FDoor1::
	setmetatile 3, 8, METATILE_SilphCo_Floor, 0
	setmetatile 3,9, METATILE_SilphCo_Floor, 0
	return

EventScript_Open9FDoor2::
	setmetatile 11, 12, METATILE_SilphCo_Floor, 0
	setmetatile 11, 13, METATILE_SilphCo_Floor, 0
	return

EventScript_Open9FDoor3::
	setmetatile 18, 4, METATILE_SilphCo_Floor, 0
	setmetatile 19, 4, METATILE_SilphCo_Floor, 0
	return

EventScript_Open9FDoor4::
	setmetatile 18, 10, METATILE_SilphCo_Floor, 0
	setmetatile 19, 10, METATILE_SilphCo_Floor, 0
	return

EventScript_Open10FDoor::
	setmetatile 10, 8, METATILE_SilphCo_Floor, 0
	setmetatile 11, 8, METATILE_SilphCo_Floor, 0
	return

EventScript_Open11FDoor::
	setmetatile 6, 14, METATILE_SilphCo_Floor_ShadeFull, 0
	setmetatile 7, 14, METATILE_SilphCo_Floor_ShadeFull, 0
	return

SilphCo_2F_EventScript_Door1::
	lockall
	setvar VAR_TEMP_1, 1
	setvar VAR_0x8004, FLAG_SILPH_2F_DOOR_1
	goto_if_set FLAG_SILPH_2F_DOOR_1, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_2F_EventScript_Door2::
	lockall
	setvar VAR_TEMP_1, 2
	setvar VAR_0x8004, FLAG_SILPH_2F_DOOR_2
	goto_if_set FLAG_SILPH_2F_DOOR_2, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_3F_EventScript_Door1::
	lockall
	setvar VAR_TEMP_1, 3
	setvar VAR_0x8004, FLAG_SILPH_3F_DOOR_1
	goto_if_set FLAG_SILPH_3F_DOOR_1, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_3F_EventScript_Door2::
	lockall
	setvar VAR_TEMP_1, 4
	setvar VAR_0x8004, FLAG_SILPH_3F_DOOR_2
	goto_if_set FLAG_SILPH_3F_DOOR_2, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_4F_EventScript_Door1::
	lockall
	setvar VAR_TEMP_1, 5
	setvar VAR_0x8004, FLAG_SILPH_4F_DOOR_1
	goto_if_set FLAG_SILPH_4F_DOOR_1, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_4F_EventScript_Door2::
	lockall
	setvar VAR_TEMP_1, 6
	setvar VAR_0x8004, FLAG_SILPH_4F_DOOR_2
	goto_if_set FLAG_SILPH_4F_DOOR_2, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_5F_EventScript_Door1::
	lockall
	setvar VAR_TEMP_1, 7
	setvar VAR_0x8004, FLAG_SILPH_5F_DOOR_1
	goto_if_set FLAG_SILPH_5F_DOOR_1, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_5F_EventScript_Door2::
	lockall
	setvar VAR_TEMP_1, 8
	setvar VAR_0x8004, FLAG_SILPH_5F_DOOR_2
	goto_if_set FLAG_SILPH_5F_DOOR_2, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_5F_EventScript_Door3::
	lockall
	setvar VAR_TEMP_1, 9
	setvar VAR_0x8004, FLAG_SILPH_5F_DOOR_3
	goto_if_set FLAG_SILPH_5F_DOOR_3, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_6F_EventScript_Door::
	lockall
	setvar VAR_TEMP_1, 10
	setvar VAR_0x8004, FLAG_SILPH_6F_DOOR
	goto_if_set FLAG_SILPH_6F_DOOR, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_7F_EventScript_Door1::
	lockall
	setvar VAR_TEMP_1, 11
	setvar VAR_0x8004, FLAG_SILPH_7F_DOOR_1
	goto_if_set FLAG_SILPH_7F_DOOR_1, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_7F_EventScript_Door2::
	lockall
	setvar VAR_TEMP_1, 12
	setvar VAR_0x8004, FLAG_SILPH_7F_DOOR_2
	goto_if_set FLAG_SILPH_7F_DOOR_2, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_7F_EventScript_Door3::
	lockall
	setvar VAR_TEMP_1, 13
	setvar VAR_0x8004, FLAG_SILPH_7F_DOOR_3
	goto_if_set FLAG_SILPH_7F_DOOR_3, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_8F_EventScript_Door::
	lockall
	setvar VAR_TEMP_1, 14
	setvar VAR_0x8004, FLAG_SILPH_8F_DOOR
	goto_if_set FLAG_SILPH_8F_DOOR, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_9F_EventScript_Door1::
	lockall
	setvar VAR_TEMP_1, 15
	setvar VAR_0x8004, FLAG_SILPH_9F_DOOR_1
	goto_if_set FLAG_SILPH_9F_DOOR_1, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_9F_EventScript_Door2::
	lockall
	setvar VAR_TEMP_1, 16
	setvar VAR_0x8004, FLAG_SILPH_9F_DOOR_2
	goto_if_set FLAG_SILPH_9F_DOOR_2, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_9F_EventScript_Door3::
	lockall
	setvar VAR_TEMP_1, 17
	setvar VAR_0x8004, FLAG_SILPH_9F_DOOR_3
	goto_if_set FLAG_SILPH_9F_DOOR_3, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_9F_EventScript_Door4::
	lockall
	setvar VAR_TEMP_1, 18
	setvar VAR_0x8004, FLAG_SILPH_9F_DOOR_4
	goto_if_set FLAG_SILPH_9F_DOOR_4, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_10F_EventScript_Door::
	lockall
	setvar VAR_TEMP_1, 19
	setvar VAR_0x8004, FLAG_SILPH_10F_DOOR
	goto_if_set FLAG_SILPH_10F_DOOR, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

SilphCo_11F_EventScript_Door::
	lockall
	setvar VAR_TEMP_1, 20
	setvar VAR_0x8004, FLAG_SILPH_11F_DOOR
	goto_if_set FLAG_SILPH_11F_DOOR, EventScript_DoorUnlocked
	goto EventScript_TryUnlockDoor
	end

EventScript_TryUnlockDoor::
	goto_if_set FLAG_HIDE_SILPH_CO_5F_CARD_KEY, EventScript_OpenDoor
	goto EventScript_NeedCardKey
	end

EventScript_OpenDoor::
	playfanfare MUS_LEVEL_UP
	msgbox Text_CardKeyOpenedDoor
	waitfanfare
	call_if_eq VAR_TEMP_1, 1, EventScript_Open2FDoor1
	call_if_eq VAR_TEMP_1, 2, EventScript_Open2FDoor2
	call_if_eq VAR_TEMP_1, 3, EventScript_Open3FDoor1
	call_if_eq VAR_TEMP_1, 4, EventScript_Open3FDoor2
	call_if_eq VAR_TEMP_1, 5, EventScript_Open4FDoor1
	call_if_eq VAR_TEMP_1, 6, EventScript_Open4FDoor2
	call_if_eq VAR_TEMP_1, 7, EventScript_Open5FDoor1
	call_if_eq VAR_TEMP_1, 8, EventScript_Open5FDoor2
	call_if_eq VAR_TEMP_1, 9, EventScript_Open5FDoor3
	call_if_eq VAR_TEMP_1, 10, EventScript_Open6FDoor
	call_if_eq VAR_TEMP_1, 11, EventScript_Open7FDoor1
	call_if_eq VAR_TEMP_1, 12, EventScript_Open7FDoor2
	call_if_eq VAR_TEMP_1, 13, EventScript_Open7FDoor3
	call_if_eq VAR_TEMP_1, 14, EventScript_Open8FDoor
	call_if_eq VAR_TEMP_1, 15, EventScript_Open9FDoor1
	call_if_eq VAR_TEMP_1, 16, EventScript_Open9FDoor2
	call_if_eq VAR_TEMP_1, 17, EventScript_Open9FDoor3
	call_if_eq VAR_TEMP_1, 18, EventScript_Open9FDoor4
	call_if_eq VAR_TEMP_1, 19, EventScript_Open10FDoor
	call_if_eq VAR_TEMP_1, 20, EventScript_Open11FDoor
	waitse
	playse SE_UNLOCK
	special DrawWholeMapView
	waitse
	special SetHiddenItemFlag
	releaseall
	end
