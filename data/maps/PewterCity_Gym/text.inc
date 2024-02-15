PewterCity_Gym_Text_BrockIntro::
    .string "I'm BROCK!\n"
    .string "I'm PEWTER's GYM\l"
    .string "LEADER!\p"
    .string "I believe in rock\n"
    .string "hard defense and\l"
    .string "determination!\p"
    .string "That's why my\n"
    .string "POKéMON are all\l"
    .string "the rock-type!\p"
    .string "Do you still want\n"
    .string "to challenge me?\l"
    .string "Fine then! Show\l" 
    .string "me your best!$"

@ NOTE: This defeat text actually causes a buffer overflow. It's too long for the gDisplayedStringBattle
@ buffer that it's put into, and it stomps all over the gBattleTextBuffs after, as well as the otherwise
@ unused array after that, sFlickerArray. Perhaps that's the reason why said array exists.
PewterCity_Gym_Text_BrockDefeat::
    .string "BROCK: I took\n"
    .string "you for granted.\p"
    .string "As proof of your\n"
    .string "victory, here`\l"
    .string "the BOULDERBADGE!\p"
    .string "{PLAYER} received\n"
    .string "the BOULDERBADGE!{PAUSE_MUSIC}{PLAY_BGM}{MUS_OBTAIN_BADGE}{PAUSE 0xFE}{PAUSE 0x56}{RESUME_MUSIC}\p"
    .string "That's an official\n"
    .string "POKéMON LEAGUE\l"
    .string "BADGE!\p"
    .string "It's bearer`\n"
    .string "POKéMON become\l"
    .string "more powerful!\p"
    .string "The technique\n"
    .string "FLASH can now be\l"
    .string "used any time!$"

PewterCity_Gym_Text_TakeThisWithYou::
    .string "Wait! Take this\n"
    .string "with you!$"

PewterCity_Gym_Text_ReceivedTM34FromBrock::
    .string "{PLAYER} received\n"
    .string "TM34!$"

PewterCity_Gym_Text_ExplainTM34::
    .string "A TM contains a\n"
    .string "technique that\l"
    .string "can be taught to\l"
    .string "POKéMON!\p"
    .string "A TM is good only\n"
    .string "once! So when you\l"
    .string "use one to teach\l"
    .string "a new technique,\l"
    .string "pick the POKéMON\l"
    .string "carefully!\p"
    .string "TM34 contains\n"
    .string "BIDE!\p"
    .string "Your POKéMON will\n"
    .string "absorb damage in\l"
    .string "battle then pay\l"
    .string "it back double!$"

PewterCity_Gym_Text_BrockPostBattle::
    .string "There are all\n"
    .string "kinds of trainers\l"
    .string "in the world!\p"
    .string "You appear to be\n"
    .string "very gifted as a\l"
    .string "POKéMON trainer!\p"
    .string "Go to the GYM in\n"
    .string "CERULEAN and test\l"
    .string "your abilities.$"

PewterCity_Gym_Text_DontHaveRoomForThis::
    .string "You don't have\n"
    .string "room for this.$"

PewterCity_Gym_Text_LiamIntro::
    .string "Stop right there,\n"
    .string "kid!\p"
    .string "You're still light\n"
    .string "years from facing\l"
    .string "BROCK!$"

PewterCity_Gym_Text_LiamDefeat::
    .string "JR.TRAINER♂ Darn!\p"
    .string "Light years isn't\n"
    .string "time! It measures\l"
    .string "distance!$"

PewterCity_Gym_Text_LiamPostBattle::
    .string "You're pretty hot,\n"
    .string "but not as hot\l"
    .string "as BROCK!$"

PewterCity_Gym_Text_LetMeTakeYouToTheTop::
    .string "Hiya! I can tell\n"
    .string "you have what it\l"
    .string "takes to become a\l"
    .string "POKéMON champ!\p"
    .string "I'm no TRAINER,\n"
    .string "but I can tell\l"
    .string "you how to win!\p"
    .string "Let me take you\n"
    .string "to the top!$"

PewterCity_Gym_Text_LetsGetHappening::
    .string "All right! Let's\n"
    .string "get happening!$"

PewterCity_Gym_Text_TryDifferentPartyOrders::
    .string "The 1st POKéMON\n"
    .string "out in a match is\l"
    .string "at the top of the\l"
    .string "POKéMON LIST!\p"
    .string "By changing the\n"
    .string "order of POKéMON,\l"
    .string "matches could be\l"
    .string "made easier!$"

PewterCity_Gym_Text_ItsFreeLetsGetHappening::
    .string "It's a free\n"
    .string "service! Let's\l"
    .string "get happening!$"

PewterCity_Gym_Text_YoureChampMaterial::
    .string "Just as I thought!\n"
    .string "You're POKéMON\l"
    .string "champ material!$"

PewterCity_Gym_Text_GymStatue::
    .string "PEWTER CITY\n"
    .string "POKéMON GYM\l"
    .string "LEADER: BROCK\p"
    .string "WINNING TRAINERS:\n"
    .string "{RIVAL}$"

PewterCity_Gym_Text_GymStatuePlayerWon::
    .string "PEWTER CITY\n"
    .string "POKéMON GYM\l"
    .string "LEADER: BROCK\p"
    .string "WINNING TRAINERS:\n"
    .string "{RIVAL}, {PLAYER}$"

