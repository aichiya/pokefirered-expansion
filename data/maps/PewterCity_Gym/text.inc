PewterCity_Gym_Text_BrockIntro::
    .string "I'm BROCK!\n"
    .string "I'm PEWTER's GYM LEADER!\p"
    .string "I believe in rock hard defense\n"
    .string "and determination!\p"
    .string "That's why my POKéMON\n"
    .string "are all the rock-type!\p"
    .string "Do you still want to challenge me?\n"
    .string "Fine then!\l" 
    .string "Show me your best!$"

@ NOTE: This defeat text actually causes a buffer overflow. It's too long for the gDisplayedStringBattle
@ buffer that it's put into, and it stomps all over the gBattleTextBuffs after, as well as the otherwise
@ unused array after that, sFlickerArray. Perhaps that's the reason why said array exists.
PewterCity_Gym_Text_BrockDefeat::
    .string "I took you for granted.\n"
    .string "As proof of your victory,\l"
    .string "here's the BOULDERBADGE!\p"
    .string "{FONT_NORMAL}{PLAYER} received\n"
    .string "the BOULDERBADGE!{PAUSE_MUSIC}{PLAY_BGM}{MUS_OBTAIN_BADGE}{PAUSE 0xFE}{PAUSE 0x56}{RESUME_MUSIC}\p"
    .string "That's an official\n"
    .string "POKéMON LEAGUE BADGE!\p"
    .string "It's bearer's POKéMON\n"
    .string "become more powerful!\p"
    .string "The technique FLASH can\n"
    .string "now be used any time!$"

PewterCity_Gym_Text_TakeThisWithYou::
    .string "Wait!\n"
    .string "Take this with you!$"

PewterCity_Gym_Text_ReceivedTM39FromBrock::
    .string "{PLAYER} received TM34!$"

PewterCity_Gym_Text_ExplainTM39::
    .string "A TM contains a technique\n"
    .string "that can be taught to POKéMON!\p"
    .string "A TM is only good once! So\n"
    .string "when you use one to teach\l"
    .string "a new technique, pick the\l"
    .string "POKéMON carefully!\p"
    .string "TM34 contains BIDE!\n"
    .string "Your POKéMON will absorb\l"
    .string "damage in battle then pay\l"
    .string "pay it back double!$"

PewterCity_Gym_Text_BrockPostBattle::
    .string "There are all kinds of TRAINERS in\n"
    .string "this huge world of ours.\p"
    .string "You appear to be very gifted as a\n"
    .string "POKéMON TRAINER.\p"
    .string "So let me make a suggestion.\p"
    .string "Go to the GYM in CERULEAN and test\n"
    .string "your abilities.$"

PewterCity_Gym_Text_DontHaveRoomForThis::
    .string "You don't have room for this.$"

PewterCity_Gym_Text_LiamIntro::
    .string "Stop right there, kid!\p"
    .string "You're still light years\n"
    .string "from facing BROCK!$"

PewterCity_Gym_Text_LiamDefeat::
    .string "Darn!\p"
    .string "Light years isn't time!\n"
    .string "It measures distance!$"

PewterCity_Gym_Text_LiamPostBattle::
    .string "You're pretty hot, but\n"
    .string "not as hot as BROCK!$"

PewterCity_Gym_Text_LetMeTakeYouToTheTop::
    .string "Hiya! I can tell you have\n"
    .string "what it take to become a\l"
    .string "POKéMON champ!\p"
    .string "I'm no TRAINER, but I can\n"
    .string "tell you how to win!\l"
    .string "Let me take you to the top!$"

PewterCity_Gym_Text_LetsGetHappening::
    .string "All right!\n"
    .string "Let's get happening!$"

PewterCity_Gym_Text_TryDifferentPartyOrders::
    .string "The 1st POKéMON out in a match is\n"
    .string "at the top of the POKéMON LIST!\p"
    .string "By changing the order of POKéMON,\n"
    .string "matches could be made easier!$"

PewterCity_Gym_Text_ItsFreeLetsGetHappening::
    .string "It's a free service!\n"
    .string "Let's get happening!$"

PewterCity_Gym_Text_YoureChampMaterial::
    .string "Just as I thought!\n"
    .string "You're POKéMON champ material!$"

PewterCity_Gym_Text_GymStatue::
    .string "PEWTER CITY POKéMON GYM\n"
    .string "POKéMON GYM\l"
    .string "LEADER: BROCK\p"
    .string "WINNING TRAINERS:\n"
    .string "{RIVAL}$"

PewterCity_Gym_Text_GymStatuePlayerWon::
    .string "PEWTER CITY POKéMON GYM\n"
    .string "POKéMON GYM\l"
    .string "LEADER: BROCK\p"
    .string "WINNING TRAINERS:\n"
    .string "{RIVAL}, {PLAYER}$"

