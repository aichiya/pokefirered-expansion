#include "constants/battle.h"
#include "constants/battle_anim.h"
#include "constants/battle_string_ids.h"
#include "constants/rgb.h"
#include "constants/songs.h"
#include "constants/sound.h"
#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "asm/macros/battle_anim_script.inc"
	.include "constants/constants.inc"

	.section script_data, "aw", %progbits

	.align 2
gMovesWithQuietBGM::
	.2byte MOVE_SING
	.2byte MOVE_PERISH_SONG
	.2byte MOVE_GRASS_WHISTLE
	.2byte 0xFFFF

	.align 2
gBattleAnims_Moves::
	.4byte Move_NONE
	.4byte Move_POUND
	.4byte Move_KARATE_CHOP
	.4byte Move_DOUBLE_SLAP
	.4byte Move_COMET_PUNCH
	.4byte Move_MEGA_PUNCH
	.4byte Move_PAY_DAY
	.4byte Move_FIRE_PUNCH
	.4byte Move_ICE_PUNCH
	.4byte Move_THUNDER_PUNCH
	.4byte Move_SCRATCH
	.4byte Move_VICE_GRIP
	.4byte Move_GUILLOTINE
	.4byte Move_RAZOR_WIND
	.4byte Move_SWORDS_DANCE
	.4byte Move_CUT
	.4byte Move_GUST
	.4byte Move_WING_ATTACK
	.4byte Move_WHIRLWIND
	.4byte Move_FLY
	.4byte Move_BIND
	.4byte Move_SLAM
	.4byte Move_VINE_WHIP
	.4byte Move_STOMP
	.4byte Move_DOUBLE_KICK
	.4byte Move_MEGA_KICK
	.4byte Move_JUMP_KICK
	.4byte Move_ROLLING_KICK
	.4byte Move_SAND_ATTACK
	.4byte Move_HEADBUTT
	.4byte Move_HORN_ATTACK
	.4byte Move_FURY_ATTACK
	.4byte Move_HORN_DRILL
	.4byte Move_TACKLE
	.4byte Move_BODY_SLAM
	.4byte Move_WRAP
	.4byte Move_TAKE_DOWN
	.4byte Move_THRASH
	.4byte Move_DOUBLE_EDGE
	.4byte Move_TAIL_WHIP
	.4byte Move_POISON_STING
	.4byte Move_TWINEEDLE
	.4byte Move_PIN_MISSILE
	.4byte Move_LEER
	.4byte Move_BITE
	.4byte Move_GROWL
	.4byte Move_ROAR
	.4byte Move_SING
	.4byte Move_SUPERSONIC
	.4byte Move_SONIC_BOOM
	.4byte Move_DISABLE
	.4byte Move_ACID
	.4byte Move_EMBER
	.4byte Move_FLAMETHROWER
	.4byte Move_MIST
	.4byte Move_WATER_GUN
	.4byte Move_HYDRO_PUMP
	.4byte Move_SURF
	.4byte Move_ICE_BEAM
	.4byte Move_BLIZZARD
	.4byte Move_PSYBEAM
	.4byte Move_BUBBLE_BEAM
	.4byte Move_AURORA_BEAM
	.4byte Move_HYPER_BEAM
	.4byte Move_PECK
	.4byte Move_DRILL_PECK
	.4byte Move_SUBMISSION
	.4byte Move_LOW_KICK
	.4byte Move_COUNTER
	.4byte Move_SEISMIC_TOSS
	.4byte Move_STRENGTH
	.4byte Move_ABSORB
	.4byte Move_MEGA_DRAIN
	.4byte Move_LEECH_SEED
	.4byte Move_GROWTH
	.4byte Move_RAZOR_LEAF
	.4byte Move_SOLARBEAM
	.4byte Move_POISON_POWDER
	.4byte Move_STUN_SPORE
	.4byte Move_SLEEP_POWDER
	.4byte Move_PETAL_DANCE
	.4byte Move_STRING_SHOT
	.4byte Move_DRAGON_RAGE
	.4byte Move_FIRE_SPIN
	.4byte Move_THUNDER_SHOCK
	.4byte Move_THUNDERBOLT
	.4byte Move_THUNDER_WAVE
	.4byte Move_THUNDER
	.4byte Move_ROCK_THROW
	.4byte Move_EARTHQUAKE
	.4byte Move_FISSURE
	.4byte Move_DIG
	.4byte Move_TOXIC
	.4byte Move_CONFUSION
	.4byte Move_PSYCHIC
	.4byte Move_HYPNOSIS
	.4byte Move_MEDITATE
	.4byte Move_AGILITY
	.4byte Move_QUICK_ATTACK
	.4byte Move_RAGE
	.4byte Move_TELEPORT
	.4byte Move_NIGHT_SHADE
	.4byte Move_MIMIC
	.4byte Move_SCREECH
	.4byte Move_DOUBLE_TEAM
	.4byte Move_RECOVER
	.4byte Move_HARDEN
	.4byte Move_MINIMIZE
	.4byte Move_SMOKESCREEN
	.4byte Move_CONFUSE_RAY
	.4byte Move_WITHDRAW
	.4byte Move_DEFENSE_CURL
	.4byte Move_BARRIER
	.4byte Move_LIGHT_SCREEN
	.4byte Move_HAZE
	.4byte Move_REFLECT
	.4byte Move_FOCUS_ENERGY
	.4byte Move_BIDE
	.4byte Move_METRONOME
	.4byte Move_MIRROR_MOVE
	.4byte Move_SELF_DESTRUCT
	.4byte Move_EGG_BOMB
	.4byte Move_LICK
	.4byte Move_SMOG
	.4byte Move_SLUDGE
	.4byte Move_BONE_CLUB
	.4byte Move_FIRE_BLAST
	.4byte Move_WATERFALL
	.4byte Move_CLAMP
	.4byte Move_SWIFT
	.4byte Move_SKULL_BASH
	.4byte Move_SPIKE_CANNON
	.4byte Move_CONSTRICT
	.4byte Move_AMNESIA
	.4byte Move_KINESIS
	.4byte Move_SOFT_BOILED
	.4byte Move_HI_JUMP_KICK
	.4byte Move_GLARE
	.4byte Move_DREAM_EATER
	.4byte Move_POISON_GAS
	.4byte Move_BARRAGE
	.4byte Move_LEECH_LIFE
	.4byte Move_LOVELY_KISS
	.4byte Move_SKY_ATTACK
	.4byte Move_TRANSFORM
	.4byte Move_BUBBLE
	.4byte Move_DIZZY_PUNCH
	.4byte Move_SPORE
	.4byte Move_FLASH
	.4byte Move_PSYWAVE
	.4byte Move_SPLASH
	.4byte Move_ACID_ARMOR
	.4byte Move_CRABHAMMER
	.4byte Move_EXPLOSION
	.4byte Move_FURY_SWIPES
	.4byte Move_BONEMERANG
	.4byte Move_REST
	.4byte Move_ROCK_SLIDE
	.4byte Move_HYPER_FANG
	.4byte Move_SHARPEN
	.4byte Move_CONVERSION
	.4byte Move_TRI_ATTACK
	.4byte Move_SUPER_FANG
	.4byte Move_SLASH
	.4byte Move_SUBSTITUTE
	.4byte Move_STRUGGLE
	.4byte Move_SKETCH
	.4byte Move_TRIPLE_KICK
	.4byte Move_THIEF
	.4byte Move_SPIDER_WEB
	.4byte Move_MIND_READER
	.4byte Move_NIGHTMARE
	.4byte Move_FLAME_WHEEL
	.4byte Move_SNORE
	.4byte Move_CURSE
	.4byte Move_FLAIL
	.4byte Move_CONVERSION_2
	.4byte Move_AEROBLAST
	.4byte Move_COTTON_SPORE
	.4byte Move_REVERSAL
	.4byte Move_SPITE
	.4byte Move_POWDER_SNOW
	.4byte Move_PROTECT
	.4byte Move_MACH_PUNCH
	.4byte Move_SCARY_FACE
	.4byte Move_FAINT_ATTACK
	.4byte Move_SWEET_KISS
	.4byte Move_BELLY_DRUM
	.4byte Move_SLUDGE_BOMB
	.4byte Move_MUD_SLAP
	.4byte Move_OCTAZOOKA
	.4byte Move_SPIKES
	.4byte Move_ZAP_CANNON
	.4byte Move_FORESIGHT
	.4byte Move_DESTINY_BOND
	.4byte Move_PERISH_SONG
	.4byte Move_ICY_WIND
	.4byte Move_DETECT
	.4byte Move_BONE_RUSH
	.4byte Move_LOCK_ON
	.4byte Move_OUTRAGE
	.4byte Move_SANDSTORM
	.4byte Move_GIGA_DRAIN
	.4byte Move_ENDURE
	.4byte Move_CHARM
	.4byte Move_ROLLOUT
	.4byte Move_FALSE_SWIPE
	.4byte Move_SWAGGER
	.4byte Move_MILK_DRINK
	.4byte Move_SPARK
	.4byte Move_FURY_CUTTER
	.4byte Move_STEEL_WING
	.4byte Move_MEAN_LOOK
	.4byte Move_ATTRACT
	.4byte Move_SLEEP_TALK
	.4byte Move_HEAL_BELL
	.4byte Move_RETURN
	.4byte Move_PRESENT
	.4byte Move_FRUSTRATION
	.4byte Move_SAFEGUARD
	.4byte Move_PAIN_SPLIT
	.4byte Move_SACRED_FIRE
	.4byte Move_MAGNITUDE
	.4byte Move_DYNAMIC_PUNCH
	.4byte Move_MEGAHORN
	.4byte Move_DRAGON_BREATH
	.4byte Move_BATON_PASS
	.4byte Move_ENCORE
	.4byte Move_PURSUIT
	.4byte Move_RAPID_SPIN
	.4byte Move_SWEET_SCENT
	.4byte Move_IRON_TAIL
	.4byte Move_METAL_CLAW
	.4byte Move_VITAL_THROW
	.4byte Move_MORNING_SUN
	.4byte Move_SYNTHESIS
	.4byte Move_MOONLIGHT
	.4byte Move_HIDDEN_POWER
	.4byte Move_CROSS_CHOP
	.4byte Move_TWISTER
	.4byte Move_RAIN_DANCE
	.4byte Move_SUNNY_DAY
	.4byte Move_CRUNCH
	.4byte Move_MIRROR_COAT
	.4byte Move_PSYCH_UP
	.4byte Move_EXTREME_SPEED
	.4byte Move_ANCIENT_POWER
	.4byte Move_SHADOW_BALL
	.4byte Move_FUTURE_SIGHT
	.4byte Move_ROCK_SMASH
	.4byte Move_WHIRLPOOL
	.4byte Move_BEAT_UP
	.4byte Move_FAKE_OUT
	.4byte Move_UPROAR
	.4byte Move_STOCKPILE
	.4byte Move_SPIT_UP
	.4byte Move_SWALLOW
	.4byte Move_HEAT_WAVE
	.4byte Move_HAIL
	.4byte Move_TORMENT
	.4byte Move_FLATTER
	.4byte Move_WILL_O_WISP
	.4byte Move_MEMENTO
	.4byte Move_FACADE
	.4byte Move_FOCUS_PUNCH
	.4byte Move_SMELLING_SALT
	.4byte Move_FOLLOW_ME
	.4byte Move_NATURE_POWER
	.4byte Move_CHARGE
	.4byte Move_TAUNT
	.4byte Move_HELPING_HAND
	.4byte Move_TRICK
	.4byte Move_ROLE_PLAY
	.4byte Move_WISH
	.4byte Move_ASSIST
	.4byte Move_INGRAIN
	.4byte Move_SUPERPOWER
	.4byte Move_MAGIC_COAT
	.4byte Move_RECYCLE
	.4byte Move_REVENGE
	.4byte Move_BRICK_BREAK
	.4byte Move_YAWN
	.4byte Move_KNOCK_OFF
	.4byte Move_ENDEAVOR
	.4byte Move_ERUPTION
	.4byte Move_SKILL_SWAP
	.4byte Move_IMPRISON
	.4byte Move_REFRESH
	.4byte Move_GRUDGE
	.4byte Move_SNATCH
	.4byte Move_SECRET_POWER
	.4byte Move_DIVE
	.4byte Move_ARM_THRUST
	.4byte Move_CAMOUFLAGE
	.4byte Move_TAIL_GLOW
	.4byte Move_LUSTER_PURGE
	.4byte Move_MIST_BALL
	.4byte Move_FEATHER_DANCE
	.4byte Move_TEETER_DANCE
	.4byte Move_BLAZE_KICK
	.4byte Move_MUD_SPORT
	.4byte Move_ICE_BALL
	.4byte Move_NEEDLE_ARM
	.4byte Move_SLACK_OFF
	.4byte Move_HYPER_VOICE
	.4byte Move_POISON_FANG
	.4byte Move_CRUSH_CLAW
	.4byte Move_BLAST_BURN
	.4byte Move_HYDRO_CANNON
	.4byte Move_METEOR_MASH
	.4byte Move_ASTONISH
	.4byte Move_WEATHER_BALL
	.4byte Move_AROMATHERAPY
	.4byte Move_FAKE_TEARS
	.4byte Move_AIR_CUTTER
	.4byte Move_OVERHEAT
	.4byte Move_ODOR_SLEUTH
	.4byte Move_ROCK_TOMB
	.4byte Move_SILVER_WIND
	.4byte Move_METAL_SOUND
	.4byte Move_GRASS_WHISTLE
	.4byte Move_TICKLE
	.4byte Move_COSMIC_POWER
	.4byte Move_WATER_SPOUT
	.4byte Move_SIGNAL_BEAM
	.4byte Move_SHADOW_PUNCH
	.4byte Move_EXTRASENSORY
	.4byte Move_SKY_UPPERCUT
	.4byte Move_SAND_TOMB
	.4byte Move_SHEER_COLD
	.4byte Move_MUDDY_WATER
	.4byte Move_BULLET_SEED
	.4byte Move_AERIAL_ACE
	.4byte Move_ICICLE_SPEAR
	.4byte Move_IRON_DEFENSE
	.4byte Move_BLOCK
	.4byte Move_HOWL
	.4byte Move_DRAGON_CLAW
	.4byte Move_FRENZY_PLANT
	.4byte Move_BULK_UP
	.4byte Move_BOUNCE
	.4byte Move_MUD_SHOT
	.4byte Move_POISON_TAIL
	.4byte Move_COVET
	.4byte Move_VOLT_TACKLE
	.4byte Move_MAGICAL_LEAF
	.4byte Move_WATER_SPORT
	.4byte Move_CALM_MIND
	.4byte Move_LEAF_BLADE
	.4byte Move_DRAGON_DANCE
	.4byte Move_ROCK_BLAST
	.4byte Move_SHOCK_WAVE
	.4byte Move_WATER_PULSE
	.4byte Move_DOOM_DESIRE
	.4byte Move_PSYCHO_BOOST
	.4byte Move_COUNT @ cannot be reached, because last move is Psycho Boost

	.align 2
gBattleAnims_StatusConditions::
	.4byte Status_Poison                    @ B_ANIM_STATUS_PSN
	.4byte Status_Confusion                 @ B_ANIM_STATUS_CONFUSION
	.4byte Status_Burn                      @ B_ANIM_STATUS_BRN
	.4byte Status_Infatuation               @ B_ANIM_STATUS_INFATUATION
	.4byte Status_Sleep                     @ B_ANIM_STATUS_SLP
	.4byte Status_Paralysis                 @ B_ANIM_STATUS_PRZ
	.4byte Status_Freeze                    @ B_ANIM_STATUS_FRZ
	.4byte Status_Curse                     @ B_ANIM_STATUS_CURSED
	.4byte Status_Nightmare                 @ B_ANIM_STATUS_NIGHTMARE

	.align 2
gBattleAnims_General::
	.4byte General_CastformChange           @ B_ANIM_CASTFORM_CHANGE
	.4byte General_StatsChange              @ B_ANIM_STATS_CHANGE
	.4byte General_SubstituteFade           @ B_ANIM_SUBSTITUTE_FADE
	.4byte General_SubstituteAppear         @ B_ANIM_SUBSTITUTE_APPEAR
	.4byte General_BaitThrow                @ B_ANIM_BAIT_THROW
	.4byte General_ItemKnockoff             @ B_ANIM_ITEM_KNOCKOFF
	.4byte General_TurnTrap                 @ B_ANIM_TURN_TRAP
	.4byte General_HeldItemEffect           @ B_ANIM_HELD_ITEM_EFFECT
	.4byte General_SmokeballEscape          @ B_ANIM_SMOKEBALL_ESCAPE
	.4byte General_FocusBand                @ B_ANIM_FOCUS_BAND
	.4byte General_Rain                     @ B_ANIM_RAIN_CONTINUES
	.4byte General_Sun                      @ B_ANIM_SUN_CONTINUES
	.4byte General_Sandstorm                @ B_ANIM_SANDSTORM_CONTINUES
	.4byte General_Hail                     @ B_ANIM_HAIL_CONTINUES
	.4byte General_LeechSeedDrain           @ B_ANIM_LEECH_SEED_DRAIN
	.4byte General_MonHit                   @ B_ANIM_MON_HIT
	.4byte General_ItemSteal                @ B_ANIM_ITEM_STEAL
	.4byte General_SnatchMove               @ B_ANIM_SNATCH_MOVE
	.4byte General_FutureSightHit           @ B_ANIM_FUTURE_SIGHT_HIT
	.4byte General_DoomDesireHit            @ B_ANIM_DOOM_DESIRE_HIT
	.4byte General_FocusPunchSetUp          @ B_ANIM_FOCUS_PUNCH_SETUP
	.4byte General_IngrainHeal              @ B_ANIM_INGRAIN_HEAL
	.4byte General_WishHeal                 @ B_ANIM_WISH_HEAL
	.4byte General_MonScared                @ B_ANIM_MON_SCARED
	.4byte General_GhostGetOut              @ B_ANIM_GHOST_GET_OUT
	.4byte General_SilphScoped              @ B_ANIM_SILPH_SCOPED
	.4byte General_SafariRockThrow          @ B_ANIM_ROCK_THROW
	.4byte General_SafariReaction           @ B_ANIM_SAFARI_REACTION

	.align 2
gBattleAnims_Special::
	.4byte Special_LevelUp                  @ B_ANIM_LVL_UP
	.4byte Special_SwitchOutPlayerMon       @ B_ANIM_SWITCH_OUT_PLAYER_MON
	.4byte Special_SwitchOutOpponentMon     @ B_ANIM_SWITCH_OUT_OPPONENT_MON
	.4byte Special_BallThrow                @ B_ANIM_BALL_THROW
	.4byte Special_BallThrowWithTrainer     @ B_ANIM_BALL_THROW_WITH_TRAINER
	.4byte Special_SubstituteToMon          @ B_ANIM_SUBSTITUTE_TO_MON
	.4byte Special_MonToSubstitute          @ B_ANIM_MON_TO_SUBSTITUTE

Move_NONE:
Move_MIRROR_MOVE:
Move_POUND:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, -8, ANIM_TARGET, 2
	playsewithpan SE_M_DOUBLE_SLAP, SOUND_PAN_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, 8, ANIM_TARGET, 2
	playsewithpan SE_M_DOUBLE_SLAP, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_DOUBLE_SLAP:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	choosetwoturnanim DoubleSlapLeft, DoubleSlapRight

DoubleSlapContinue:
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

DoubleSlapLeft:
	playsewithpan SE_M_DOUBLE_SLAP, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, -8, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 2
	playsewithpan SE_M_DOUBLE_SLAP, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 12, 12, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	waitforvisualfinish
	goto DoubleSlapContinue

DoubleSlapRight:
	playsewithpan SE_M_DOUBLE_SLAP, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, -8, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 2
	playsewithpan SE_M_DOUBLE_SLAP, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 12, 12, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	waitforvisualfinish
	goto DoubleSlapContinue

Move_POISON_POWDER:
	loadspritegfx ANIM_TAG_ORBS
	call PowderParticlesPrefab
	waitforvisualfinish
	end

Move_STUN_SPORE:
	loadspritegfx ANIM_TAG_ORBS
	call PowderParticlesPrefab
	waitforvisualfinish
	end

Move_SLEEP_POWDER:
	loadspritegfx ANIM_TAG_ORBS
	call PowderParticlesPrefab
	waitforvisualfinish
	end

PowderParticlesPrefab:
	loopsewithpan SE_M_POISON_POWDER, SOUND_PAN_TARGET, 10, 6
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_TARGET, 2, -32, -16, 96, 80, 5, 2
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_TARGET, 2, -16, -16, 96, 80, 5, 2
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_TARGET, 2, 0, -16, 96, 80, 5, 2
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_TARGET, 2, 16, -16, 96, 80, 5, 2
	delay 16
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_TARGET, 2, -24, -16, 96, 80, 5, 2
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_TARGET, 2, -8, -16, 96, 80, 5, 2
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_TARGET, 2, 8, -16, 96, 80, 5, 2
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_TARGET, 2, 24, -16, 96, 80, 5, 2
	delay 16
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_TARGET, 2, -32, -16, 96, 80, 5, 2
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_TARGET, 2, -16, -16, 96, 80, 5, 2
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_TARGET, 2, 0, -16, 96, 80, 5, 2
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_TARGET, 2, 16, -16, 96, 80, 5, 2
	delay 16
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_TARGET, 2, -24, -16, 96, 80, 5, 2
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_TARGET, 2, -8, -16, 96, 80, 5, 2
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_TARGET, 2, 8, -16, 96, 80, 5, 2
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_TARGET, 2, 24, -16, 96, 80, 5, 2
	return

Move_SWIFT:
	loadspritegfx ANIM_TAG_YELLOW_STAR
	loadspritegfx ANIM_TAG_IMPACT
	playsewithpan SE_M_SWIFT, SOUND_PAN_ATTACKER
	createsprite gSwiftStarSpriteTemplate, ANIM_TARGET, 3, 20, -10, 0,   0, 22, 0, 1
	delay 5
	playsewithpan SE_M_SWIFT, SOUND_PAN_ATTACKER
	createsprite gSwiftStarSpriteTemplate, ANIM_TARGET, 3, 20, -10, 0,  16, 22, 0, 1
	delay 5
	playsewithpan SE_M_SWIFT, SOUND_PAN_ATTACKER
	createsprite gSwiftStarSpriteTemplate, ANIM_TARGET, 3, 20, -10, 0, -16, 22, 0, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_TARGET, 2, 0, 18, 1
	waitforvisualfinish
	end

Move_STRENGTH:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	createsprite gHorizontalLungeSpriteTemplate, ANIM_ATTACKER, 2, 4, 4
	delay 4
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, 0, 15
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_TACKLE:
	createsprite gHorizontalLungeSpriteTemplate, ANIM_ATTACKER, 2, 4, 4
	delay 6
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_BODY_SLAM:
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gHorizontalLungeSpriteTemplate, ANIM_ATTACKER, 2, 4, 4
	delay 6
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	restorebg
	blendoff
	end

Move_SUPERSONIC:
	loadspritegfx ANIM_TAG_MUSIC_NOTES
	createsoundtask SoundTask_LoopSEAdjustPanning, SE_M_SUPERSONIC, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 9, 0, 10
	createvisualtask AnimTask_StartSinAnimTimer, 5, 100
	createsprite gSupersonicSpriteTemplate, ANIM_TARGET, 3, 10, 10, 0, 32
	waitforvisualfinish
	end

Move_SCREECH:
	loadspritegfx ANIM_TAG_MUSIC_NOTES
	createvisualtask SoundTask_PlayDoubleCry, 2, ANIM_ATTACKER, DOUBLE_CRY_GROWL
	createvisualtask AnimTask_StartSinAnimTimer, 5, 100
	createsprite gMusicNoteSpriteTemplate, ANIM_TARGET, 3, 10, 10, 0, 16
	waitforvisualfinish
	end

ScreechRing:
	playsewithpan SE_M_SCREECH, SOUND_PAN_ATTACKER
	createsprite gScreechRingSpriteTemplate, ANIM_TARGET, 2, 16, 0, 0, 0, 30, 0
	delay 2
	return

Move_FLAME_WHEEL:
	end

FlameWheel1: @ Unused
	createsprite gFireSpiralOutwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 50
	delay 4
	return

Move_PIN_MISSILE:
	loadspritegfx ANIM_TAG_IMPACT
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, -8, ANIM_TARGET, 1
	playsewithpan SE_M_HORN_ATTACK, SOUND_PAN_TARGET
	clearmonbg ANIM_TARGET
	delay 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 12, 12, ANIM_TARGET, 1
	playsewithpan SE_M_HORN_ATTACK, SOUND_PAN_TARGET
	clearmonbg ANIM_TARGET
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 4, 0, 6, 1
	waitforvisualfinish
	end

Move_ICICLE_SPEAR:
	end

Move_TAKE_DOWN:
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 16, 0, 0, 5
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 1
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 4
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, 0, 1
	waitforvisualfinish
	end

Move_DOUBLE_EDGE:
	loadspritegfx ANIM_TAG_ORBS
	loadspritegfx ANIM_TAG_IMPACT
	playsewithpan SE_M_SWIFT, SOUND_PAN_ATTACKER
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 0, 4, RGB(31, 31, 25)
	createsprite gOrbCombineSpriteTemplate, ANIM_ATTACKER, 2, -24, -24, 24, ANIM_ATTACKER
	createsprite gOrbCombineSpriteTemplate, ANIM_ATTACKER, 2,  24, -24, 24, ANIM_ATTACKER
	createsprite gOrbCombineSpriteTemplate, ANIM_ATTACKER, 2, -24,  24, 24, ANIM_ATTACKER
	createsprite gOrbCombineSpriteTemplate, ANIM_ATTACKER, 2,  24,  24, 24, ANIM_ATTACKER
	waitforvisualfinish
	createsprite gLargeOrbStaticSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, 10, ANIM_ATTACKER, 0
	waitforvisualfinish
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 16, 0, 0, 2
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 0, 4, RGB(31, 31, 31)
	delay 2
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_ATTACKER, 0, 0, 0, 0
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	waitforvisualfinish
	end

Move_POISON_STING:
	loadspritegfx ANIM_TAG_IMPACT
	playsewithpan SE_M_HORN_ATTACK, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	waitforvisualfinish
	end

Move_TWINEEDLE:
	loadspritegfx ANIM_TAG_IMPACT
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, -8, ANIM_TARGET, 1
	clearmonbg ANIM_TARGET
	delay 4
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 12, 12, ANIM_TARGET, 1
	clearmonbg ANIM_TARGET
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 4, 0, 6, 1
	waitforvisualfinish
	end


Move_FIRE_BLAST:
	loadspritegfx ANIM_TAG_FIRE
	playsewithpan SE_M_DRAGON_RAGE, SOUND_PAN_ATTACKER
	call FlamethrowerSpray
	waitforvisualfinish
	call FireBlastCross
	delay 16
	call FireBlastCross
	delay 16
	createsprite gSlidingFlameSpriteTemplate, ANIM_TARGET, 2, -32, 16, 48, 30, 160, 0
	delay 16
	createsprite gSlidingFlameSpriteTemplate, ANIM_TARGET, 2, -32, 16, 48, 30, 160, 0
	createsprite gSlidingFlameSpriteTemplate, ANIM_TARGET, 2, -32, 0, 48, 30, 160, 0
	delay 20
	end

FireBlastCross:
	createsoundtask SoundTask_FireBlast, SE_M_FLAME_WHEEL, SE_M_FLAME_WHEEL2
	createsprite gSmallEmberSpriteTemplate, ANIM_TARGET, 3,   0,  -8, 0, 16, ANIM_TARGET, 0
	createsprite gSmallEmberSpriteTemplate, ANIM_TARGET, 3,  -8,  -8, 0, 16, ANIM_TARGET, 0
	createsprite gSmallEmberSpriteTemplate, ANIM_TARGET, 3, -16,  -8, 0, 16, ANIM_TARGET, 0
	createsprite gSmallEmberSpriteTemplate, ANIM_TARGET, 3,   8,  -8, 0, 16, ANIM_TARGET, 0
	createsprite gSmallEmberSpriteTemplate, ANIM_TARGET, 3,  16,  -8, 0, 16, ANIM_TARGET, 0
	createsprite gSmallEmberSpriteTemplate, ANIM_TARGET, 3,   0,   0, 0, 16, ANIM_TARGET, 0
	createsprite gSmallEmberSpriteTemplate, ANIM_TARGET, 3,   0, -16, 0, 16, ANIM_TARGET, 0
	createsprite gSmallEmberSpriteTemplate, ANIM_TARGET, 3,  -8,   8, 0, 16, ANIM_TARGET, 0
	createsprite gSmallEmberSpriteTemplate, ANIM_TARGET, 3, -16,  16, 0, 16, ANIM_TARGET, 0
	createsprite gSmallEmberSpriteTemplate, ANIM_TARGET, 3,   8,   8, 0, 16, ANIM_TARGET, 0
	createsprite gSmallEmberSpriteTemplate, ANIM_TARGET, 3,  16,  16, 0, 16, ANIM_TARGET, 0
	return

Move_LEECH_SEED:
	loadspritegfx ANIM_TAG_SEED
	playsewithpan SE_M_POISON_POWDER, SOUND_PAN_ATTACKER
	createsprite gLeechSeedSpriteTemplate, ANIM_TARGET, 2, 15, 0, -16, 24, 35, -32
	delay 8
	playsewithpan SE_M_POISON_POWDER, SOUND_PAN_ATTACKER
	createsprite gLeechSeedSpriteTemplate, ANIM_TARGET, 2, 15, 0, 16, 24, 35, -40
	delay 8
	playsewithpan SE_M_POISON_POWDER, SOUND_PAN_ATTACKER
	createsprite gLeechSeedSpriteTemplate, ANIM_TARGET, 2, 15, 0, 0, 24, 35, -37
	delay 12
	loopsewithpan SE_M_TAIL_WHIP, SOUND_PAN_TARGET, 10, 8
	waitforvisualfinish
	end

Move_EMBER:
	loadspritegfx ANIM_TAG_FIRE
	loopsewithpan SE_M_EMBER, SOUND_PAN_ATTACKER, 5, 2
	createsprite gLargeEmberSpriteTemplate, ANIM_TARGET, 2, -16, 16, 0, 30, ANIM_TARGET, 0
	playsewithpan SE_M_FLAME_WHEEL, SOUND_PAN_TARGET
	delay 30
	createsprite gLargeEmberSpriteTemplate, ANIM_TARGET, 2, 16, 16, 0, 30, ANIM_TARGET, 0
	playsewithpan SE_M_FLAME_WHEEL, SOUND_PAN_TARGET
	delay 30
	createsprite gLargeEmberSpriteTemplate, ANIM_TARGET, 2, 0, 16, 0, 30, ANIM_TARGET, 0
	playsewithpan SE_M_FLAME_WHEEL, SOUND_PAN_TARGET
	waitforvisualfinish
	end

Move_MEGA_PUNCH:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_HEADBUTT, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	delay 2
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 2
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	delay 2
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 2
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	delay 2
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 2
	clearmonbg ANIM_TARGET
	blendoff
	end

SetImpactBackground:
	delay 2
	createvisualtask AnimTask_IsContest, 2
	jumprettrue SetImpactContestsBG
	createvisualtask AnimTask_IsTargetPlayerSide, 2
	jumpretfalse SetImpactOpponentBG
	jumprettrue SetImpactPlayerBG
SetImpactBackgroundRet:
	return

SetImpactOpponentBG:
	changebg BG_IMPACT_OPPONENT
	goto SetImpactBackgroundRet

SetImpactPlayerBG:
	changebg BG_IMPACT_PLAYER
	goto SetImpactBackgroundRet

SetImpactContestsBG:
	changebg BG_IMPACT_CONTESTS
	goto SetImpactBackgroundRet

Move_MEGA_KICK:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_HEADBUTT, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	delay 2
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 2
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	delay 2
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 2
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	delay 2
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 2
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_COMET_PUNCH:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	choosetwoturnanim CometPunchLeft, CometPunchRight

CometPunchContinue:
	createvisualtask AnimTask_ShakeMon, 2, ANIM_TARGET, 3, 0, 6, 1
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

CometPunchLeft:
	playsewithpan SE_M_DOUBLE_TEAM, SOUND_PAN_ATTACKER
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 16, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 16, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	goto CometPunchContinue

CometPunchRight:
	playsewithpan SE_M_DOUBLE_TEAM, SOUND_PAN_ATTACKER
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 16, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 16, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	goto CometPunchContinue

Move_SONIC_BOOM:
	loadspritegfx ANIM_TAG_GUST
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	playsewithpan SE_M_GUST, SOUND_PAN_TARGET
	createsprite gGustTornadoSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 32, 257
	playsewithpan SE_M_GUST2, SOUND_PAN_TARGET
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, ANIM_TARGET, 2
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 8, ANIM_TARGET, 2
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

SonicBoomProjectile:
	playsewithpan SE_M_RAZOR_WIND2, SOUND_PAN_ATTACKER
	createsprite gSonicBoomSpriteTemplate, ANIM_TARGET, 2, 16, 0, 0, 0, 15
	delay 4
	return

SonicBoomHit:
	createsprite gBasicHitSplatSpriteTemplate, ANIM_TARGET, 3, 0, 0, ANIM_TARGET, 2
	delay 4
	return

Move_THUNDER_SHOCK:
	loadspritegfx ANIM_TAG_LIGHTNING
	loadspritegfx ANIM_TAG_EXPLOSION
	createsprite gRBLightningBallSpriteTemplate, ANIM_TARGET, 3, 0, 0, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  -4, -32, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  -4, -24, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,   4,  32, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,   4,  24, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -32,   4, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -24,   4, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  32,  -4, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  24,  -4, 0, 1
	delay 3
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -20, -28, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -12, -20, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  20,  28, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  12,  20, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -20,  28, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -12,  20, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  20, -28, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  12, -20, 0, 1
	waitforvisualfinish
	end

Move_THUNDERBOLT:
	loadspritegfx ANIM_TAG_LIGHTNING
	loadspritegfx ANIM_TAG_EXPLOSION
	monbg ANIM_TARGET
	setalpha 12, 8
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gRBLightningBallSpriteTemplate, ANIM_TARGET, 3, 0, 0, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  -4, -32, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  -4, -24, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,   4,  32, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,   4,  24, 0, 1
	delay 1
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -32,   4, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -24,   4, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  32,  -4, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  24,  -4, 0, 1
	delay 3
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -20, -28, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -12, -20, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  20,  28, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  12,  20, 0, 1
	delay 1
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -20,  28, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -12,  20, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  20, -28, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  12, -20, 0, 1
	delay 6
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_THUNDER_WAVE:
	loadspritegfx ANIM_TAG_LIGHTNING
	loadspritegfx ANIM_TAG_EXPLOSION
	createsprite gRBLightningBallSpriteTemplate, ANIM_TARGET, 3, 0, 0, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  -4, -32, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  -4, -24, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,   4,  32, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,   4,  24, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -32,   4, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -24,   4, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  32,  -4, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  24,  -4, 0, 1
	delay 3
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -20, -28, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -12, -20, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  20,  28, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  12,  20, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -20,  28, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -12,  20, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  20, -28, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  12, -20, 0, 1
	waitforvisualfinish
	end

Move_BEAT_UP:
	choosetwoturnanim BeatUpLeft, BeatUpRight

BeatUpContinue:
	end

BeatUpLeft:
	goto BeatUpContinue

BeatUpRight:
	goto BeatUpContinue

Move_STOMP:
	loadspritegfx ANIM_TAG_IMPACT
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	waitforvisualfinish
	end

Move_TAIL_WHIP:
	createvisualtask AnimTask_TranslateMonEllipticalRespectSide, 2, ANIM_ATTACKER, 16, 0, 2, 4
	waitforvisualfinish
	end

Move_CUT:
	loadspritegfx ANIM_TAG_CUT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_CUT, SOUND_PAN_TARGET
	createsprite gCuttingSliceSpriteTemplate, ANIM_ATTACKER, 2, 56, -48, 0
	delay 5
	createvisualtask AnimTask_ShakeMon, 2, ANIM_TARGET, 0, 3, 10, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	waitforvisualfinish
	end

Move_HIDDEN_POWER:
	end

Move_REVERSAL:
	end

Move_PURSUIT:
	end

Move_SPIKE_CANNON:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 1
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 4
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 1
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 4
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 1
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 4
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, 0, 15
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_SWORDS_DANCE:
	loadspritegfx ANIM_TAG_SWORD_2
	playsewithpan SE_M_SWORDS_DANCE, SOUND_PAN_ATTACKER
	createsprite gSwordsDanceBladeSpriteTemplate, ANIM_ATTACKER, 2, -32, -8, 48, 30, 160, 0
	waitforvisualfinish
	createsprite gSwordsDanceBladeSpriteTemplate, ANIM_ATTACKER, 2, -32, -8, 48, 30, 160, 0
	waitforvisualfinish
	createsprite gSwordsDanceBladeSpriteTemplate, ANIM_ATTACKER, 2, -32, -8, 48, 30, 160, 0
	waitforvisualfinish
	delay 1
	end

Move_PSYCH_UP:
	end

Move_DIZZY_PUNCH:
	loadspritegfx ANIM_TAG_DUCK
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	call ConfusionEffect
	waitforvisualfinish
	playsewithpan SE_M_MEGA_KICK, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 10
	playsewithpan SE_M_MEGA_KICK, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 10
	playsewithpan SE_M_MEGA_KICK, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 16, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	createvisualtask AnimTask_ShakeMon, 2, ANIM_TARGET, 3, 0, 6, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_FIRE_SPIN:
	loadspritegfx ANIM_TAG_FIRE
	playsewithpan SE_M_SACRED_FIRE2, SOUND_PAN_TARGET
	call FlamethrowerHit
	waitforvisualfinish
	end

FireSpinEffect:
	createsprite gFireSpinSpriteTemplate, ANIM_TARGET, 2, 0, 28, 528, 30, 13, 50, ANIM_TARGET
	delay 2
	createsprite gFireSpinSpriteTemplate, ANIM_TARGET, 2, 0, 32, 480, 20, 16, -46, ANIM_TARGET
	delay 2
	createsprite gFireSpinSpriteTemplate, ANIM_TARGET, 2, 0, 33, 576, 20, 8, 42, ANIM_TARGET
	delay 2
	createsprite gFireSpinSpriteTemplate, ANIM_TARGET, 2, 0, 31, 400, 25, 11, -42, ANIM_TARGET
	delay 2
	createsprite gFireSpinSpriteTemplate, ANIM_TARGET, 2, 0, 28, 512, 25, 16, 46, ANIM_TARGET
	delay 2
	createsprite gFireSpinSpriteTemplate, ANIM_TARGET, 2, 0, 33, 464, 30, 15, -50, ANIM_TARGET
	delay 2
	return

Move_FURY_CUTTER:
	end

Move_SELF_DESTRUCT:
	loadspritegfx ANIM_TAG_EXPLOSION
	loadspritegfx ANIM_TAG_IMPACT
	createvisualtask AnimTask_ShakeMon2, 5, 4, 8, 0, 40, 1
	createvisualtask AnimTask_ShakeMon2, 5, 5, 8, 0, 40, 1
	createvisualtask AnimTask_ShakeMon2, 5, 6, 8, 0, 40, 1
	createvisualtask AnimTask_ShakeMon2, 5, 7, 8, 0, 40, 1
	createvisualtask AnimTask_ShakeMon2, 5, 8, 8, 0, 40, 1
	call ExplosionPrefab2
	call ExplosionPrefab2
	waitforvisualfinish
	createvisualtask AnimTask_BlendBattleAnimPal, 10, F_PAL_BG, 1, 16, 16, RGB_WHITE
	loopsewithpan SE_M_TAKE_DOWN, SOUND_PAN_ATTACKER, 9, 2
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	delay 8
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	createvisualtask AnimTask_BlendBattleAnimPal, 10, F_PAL_BG, 3, 16, 0, RGB_WHITE
	delay 10
	clearmonbg ANIM_TARGET
	end


SelfDestructExplode:
	playsewithpan SE_M_SELF_DESTRUCT, SOUND_PAN_ATTACKER
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 0, 1
	delay 6
	playsewithpan SE_M_SELF_DESTRUCT, SOUND_PAN_ATTACKER
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, 24, -24, 0, 1
	delay 6
	playsewithpan SE_M_SELF_DESTRUCT, SOUND_PAN_ATTACKER
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, -16, 16, 0, 1
	delay 6
	playsewithpan SE_M_SELF_DESTRUCT, SOUND_PAN_ATTACKER
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, -24, -12, 0, 1
	delay 6
	playsewithpan SE_M_SELF_DESTRUCT, SOUND_PAN_ATTACKER
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, 16, 16, 0, 1
	delay 6
	return

Move_SLAM:
	loadspritegfx ANIM_TAG_IMPACT
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	waitforvisualfinish
	end

Move_VINE_WHIP:
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_CUT
	playsewithpan SE_M_SCRATCH, SOUND_PAN_TARGET
	createsprite gCuttingSliceSpriteTemplate, ANIM_ATTACKER, 2, 32, -32, 0
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, -8, ANIM_TARGET, 2
	delay 4
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 12, 12, ANIM_TARGET, 2
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 4, 0, 6, 1
	waitforvisualfinish
	end

Move_DRILL_PECK:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	delay 8
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_WATERFALL:
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_WATER_COLUMN
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 64, 0, 28
	delay 8
	invisible ANIM_ATTACKER
	delay 22
	createsprite gSurfGeyserTopSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -64, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -48, 32, 0, 0
	waitforvisualfinish
	createsprite gSurfGeyserTopSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -64, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -48, 32, 0, 0
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	waitforvisualfinish
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, 0, 1
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	visible ANIM_ATTACKER
	waitforvisualfinish
	end

RisingWaterHitEffect:
	playsewithpan SE_M_WATERFALL, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon2, 5, ANIM_TARGET, 4, 0, 17, 1
	createsprite gWaterHitSplatSpriteTemplate, ANIM_ATTACKER, 3, 0, 20, ANIM_TARGET, 1
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, 20
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, 20
	delay 2
	createsprite gWaterHitSplatSpriteTemplate, ANIM_ATTACKER, 3, 0, 15, ANIM_TARGET, 1
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, 15
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, 15
	delay 2
	createsprite gWaterHitSplatSpriteTemplate, ANIM_ATTACKER, 3, 0, 10, ANIM_TARGET, 1
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, 10
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, 10
	delay 2
	createsprite gWaterHitSplatSpriteTemplate, ANIM_ATTACKER, 3, 0, 5, ANIM_TARGET, 1
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, 5
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, 5
	delay 2
	createsprite gWaterHitSplatSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, ANIM_TARGET, 1
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, 0
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, 0
	delay 2
	createsprite gWaterHitSplatSpriteTemplate, ANIM_ATTACKER, 3, 0, -5, ANIM_TARGET, 1
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, -5
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, -5
	delay 2
	createsprite gWaterHitSplatSpriteTemplate, ANIM_ATTACKER, 3, 0, -10, ANIM_TARGET, 1
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, -10
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, -10
	delay 2
	createsprite gWaterHitSplatSpriteTemplate, ANIM_ATTACKER, 3, 0, -15, ANIM_TARGET, 1
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, -15
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, -15
	delay 2
	createsprite gWaterHitSplatSpriteTemplate, ANIM_ATTACKER, 3, 0, -20, ANIM_TARGET, 1
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, -20
	createsprite gSmallDriftingBubblesSpriteTemplate, ANIM_ATTACKER, 4, 0, -20
	return

Move_EXPLOSION:
	loadspritegfx ANIM_TAG_EXPLOSION
	loadspritegfx ANIM_TAG_IMPACT
	createvisualtask AnimTask_ShakeMon2, 5, 4, 8, 0, 40, 1
	createvisualtask AnimTask_ShakeMon2, 5, 5, 8, 0, 40, 1
	createvisualtask AnimTask_ShakeMon2, 5, 6, 8, 0, 40, 1
	createvisualtask AnimTask_ShakeMon2, 5, 7, 8, 0, 40, 1
	createvisualtask AnimTask_ShakeMon2, 5, 8, 8, 0, 40, 1
	call ExplosionPrefab1
	call ExplosionPrefab1
	waitforvisualfinish
	createvisualtask AnimTask_BlendBattleAnimPal, 10, F_PAL_BG, 1, 16, 16, RGB_WHITE
	loopsewithpan SE_M_TAKE_DOWN, SOUND_PAN_ATTACKER, 9, 2
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	delay 8
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	createvisualtask AnimTask_BlendBattleAnimPal, 10, F_PAL_BG, 3, 16, 0, RGB_WHITE
	delay 10
	clearmonbg ANIM_TARGET
	end

ExplosionPrefab1:
	playsewithpan SE_M_EXPLOSION, SOUND_PAN_ATTACKER
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 0, 1
	delay 6
	playsewithpan SE_M_EXPLOSION, SOUND_PAN_ATTACKER
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, 24, -24, 0, 1
	delay 6
	playsewithpan SE_M_EXPLOSION, SOUND_PAN_ATTACKER
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, -16, 16, 0, 1
	delay 6
	playsewithpan SE_M_EXPLOSION, SOUND_PAN_ATTACKER
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, -24, -12, 0, 1
	delay 6
	playsewithpan SE_M_EXPLOSION, SOUND_PAN_ATTACKER
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, 16, 16, 0, 1
	delay 6
	return

ExplosionPrefab2:
	playsewithpan SE_M_EXPLOSION, SOUND_PAN_ATTACKER
	createsprite gSelfdestructSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 0, 1
	delay 6
	playsewithpan SE_M_EXPLOSION, SOUND_PAN_ATTACKER
	createsprite gSelfdestructSpriteTemplate, ANIM_ATTACKER, 3, 24, -24, 0, 1
	delay 6
	playsewithpan SE_M_EXPLOSION, SOUND_PAN_ATTACKER
	createsprite gSelfdestructSpriteTemplate, ANIM_ATTACKER, 3, -16, 16, 0, 1
	delay 6
	playsewithpan SE_M_EXPLOSION, SOUND_PAN_ATTACKER
	createsprite gSelfdestructSpriteTemplate, ANIM_ATTACKER, 3, -24, -12, 0, 1
	delay 6
	playsewithpan SE_M_EXPLOSION, SOUND_PAN_ATTACKER
	createsprite gSelfdestructSpriteTemplate, ANIM_ATTACKER, 3, 16, 16, 0, 1
	delay 6
	return

Move_DEFENSE_CURL:
	loadspritegfx ANIM_TAG_RED_BALL
	call DefenseCurlOrbPrefab
	waitforvisualfinish
	end

DefenseCurlOrbPrefab:
    loopsewithpan SE_M_TRI_ATTACK, SOUND_PAN_ATTACKER, 18, 3
	createsprite gDefenseCurlCombineSpriteTemplate, ANIM_ATTACKER, 2, -32, -32, -6, -6, 24, ANIM_ATTACKER, 0
	createsprite gDefenseCurlCombineSpriteTemplate, ANIM_ATTACKER, 2,   0, -32,  0, -6, 24, ANIM_ATTACKER, 1
	createsprite gDefenseCurlCombineSpriteTemplate, ANIM_ATTACKER, 2,  32, -32,  6, -6, 24, ANIM_ATTACKER, 2
	createsprite gDefenseCurlCombineSpriteTemplate, ANIM_ATTACKER, 2, -32,   0, -6,  0, 24, ANIM_ATTACKER, 3
	createsprite gDefenseCurlCombineSpriteTemplate, ANIM_ATTACKER, 2,  32,   0,  6,  0, 24, ANIM_ATTACKER, 4
	createsprite gDefenseCurlCombineSpriteTemplate, ANIM_ATTACKER, 2, -32,  32, -6,  6, 24, ANIM_ATTACKER, 5
	createsprite gDefenseCurlCombineSpriteTemplate, ANIM_ATTACKER, 2,   0,  32,  0,  6, 24, ANIM_ATTACKER, 6
	createsprite gDefenseCurlCombineSpriteTemplate, ANIM_ATTACKER, 2,  32,  32,  6,  6, 24, ANIM_ATTACKER, 7
    return


Move_PROTECT:
	end

Move_DETECT:
	end

Move_FRUSTRATION:
	end

Move_SAFEGUARD:
	end

Move_PAIN_SPLIT:
	end

Move_VICE_GRIP:
	loadspritegfx ANIM_TAG_CUT
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_VICEGRIP, SOUND_PAN_TARGET
	createsprite gViceGripSpriteTemplate, ANIM_ATTACKER, 2, 0
	createsprite gViceGripSpriteTemplate, ANIM_ATTACKER, 2, 1
	playsewithpan SE_M_BITE, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_GUILLOTINE:
	loadspritegfx ANIM_TAG_CUT
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_VICEGRIP, SOUND_PAN_TARGET
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gViceGripSpriteTemplate, ANIM_ATTACKER, 2, 0
	createsprite gViceGripSpriteTemplate, ANIM_ATTACKER, 2, 1
	playsewithpan SE_M_BITE, SOUND_PAN_TARGET
	delay 2
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 1
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 2
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_PAY_DAY:
	loadspritegfx ANIM_TAG_COIN
	loadspritegfx ANIM_TAG_IMPACT
	createsprite gBasicHitSplatSpriteTemplate, ANIM_TARGET, 2, -8, -8, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_TARGET, 2, 12, 12, ANIM_TARGET, 2
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 4, 0, 6, 1
	waitforvisualfinish
	createvisualtask AnimTask_StartSinAnimTimer, 5, 100
	@createsprite gBouncingSpriteTemplate, ANIM_TARGET, 2, 0, -16, -32, -16, 30, 15, ANIM_TARGET
	createsprite gBouncingSpriteTemplate, ANIM_TARGET, 2, 0, 16, -48, 16, 3, 60, -1
	waitforvisualfinish
	end

Move_OUTRAGE:
	end

Move_SPARK:
	end

Move_ATTRACT:
	end

Move_GROWTH:
	loadspritegfx ANIM_TAG_ORBS,
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 10
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_WHIRLWIND:
	loadspritegfx ANIM_TAG_GUST
	playsewithpan SE_M_GUST, SOUND_PAN_TARGET
	createsprite gGustTornadoSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 32, 257
	playsewithpan SE_M_GUST2, SOUND_PAN_TARGET
	waitforvisualfinish
	createvisualtask AnimTask_SlideOffScreen, 5, ANIM_TARGET, 8
	waitforvisualfinish
	end

Move_CONFUSE_RAY:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_ATTACKER
	setalpha 12, 8
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	playsewithpan SE_M_STRING_SHOT2, SOUND_PAN_TARGET
	createsprite gHitSplatWithXYFlipSpriteTemplate, ANIM_ATTACKER, 2, 16, -16, ANIM_ATTACKER, 2, 0
	delay 2
	createsprite gHitSplatWithXYFlipSpriteTemplate, ANIM_ATTACKER, 2, 16, -16, ANIM_ATTACKER, 2, 0
	delay 5
	createsprite gHitSplatWithXYFlipSpriteTemplate, ANIM_ATTACKER, 2, 36, -24, ANIM_ATTACKER, 2, 0
	delay 2
	createsprite gHitSplatWithXYFlipSpriteTemplate, ANIM_ATTACKER, 2, 36, -24, ANIM_ATTACKER, 2, 0
	delay 5
	createsprite gHitSplatWithXYFlipSpriteTemplate, ANIM_ATTACKER, 2, 66, -40, ANIM_ATTACKER, 2, 0
	delay 2
	createsprite gHitSplatWithXYFlipSpriteTemplate, ANIM_ATTACKER, 2, 66, -40, ANIM_ATTACKER, 2, 0
	delay 5
	createsprite gHitSplatWithXYFlipSpriteTemplate, ANIM_ATTACKER, 2, 88, -56, ANIM_ATTACKER, 2, 0
	delay 2
	createsprite gHitSplatWithXYFlipSpriteTemplate, ANIM_ATTACKER, 2, 88, -56, ANIM_ATTACKER, 2, 0
	delay 5
	createsprite gHitSplatWithXYFlipSpriteTemplate, ANIM_ATTACKER, 2, 118, -64, ANIM_ATTACKER, 2, 0
	delay 2
	createsprite gHitSplatWithXYFlipSpriteTemplate, ANIM_ATTACKER, 2, 118, -64, ANIM_ATTACKER, 2, 0
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 50
	waitforvisualfinish
	restorebg
	clearmonbg ANIM_ATTACKER
	end

Move_LOCK_ON:
	end

Move_MEAN_LOOK:
	end

Move_ROCK_THROW:
	loadspritegfx ANIM_TAG_ROCKS
	createsprite gAncientPowerRockSpriteTemplate, ANIM_TARGET, 2, -16, -32, 40, 32, 1, 2
	createsprite gAncientPowerRockSpriteTemplate, ANIM_TARGET, 2,   0, -16, 40, 32, 1, 2
	createsprite gAncientPowerRockSpriteTemplate, ANIM_TARGET, 2,  16, -24, 40, 32, 1, 2
	waitforvisualfinish
	end

Move_ROCK_SLIDE:
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_ROCKS
	monbg ANIM_TARGET
	setalpha 12, 8
	createvisualtask AnimTask_HorizontalShake, 5, (MAX_BATTLERS_COUNT + 1), 4, 10
	createvisualtask AnimTask_HorizontalShake, 5, MAX_BATTLERS_COUNT, 4, 10
	createsprite gAncientPowerRockSpriteTemplate, ANIM_ATTACKER, 2,  0, 24, -40, 40, 0, 2
	createsprite gAncientPowerRockSpriteTemplate, ANIM_ATTACKER, 2, 16, 16, -40, 40, 0, 2
	createsprite gAncientPowerRockSpriteTemplate, ANIM_ATTACKER, 2, 32, 32, -40, 40, 0, 2
	playsewithpan SE_M_ROCK_THROW, SOUND_PAN_TARGET
	delay 36
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 2
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 1
	createsprite gRockProjectileSpriteTemplate, ANIM_TARGET, 2,  0, -16, 16, -16, 24, 257
	createsprite gRockProjectileSpriteTemplate, ANIM_TARGET, 2, 16, -24,  8, -24, 24, 257
	createsprite gRockProjectileSpriteTemplate, ANIM_TARGET, 2, 32,  -8, 32,  -8, 24, 257
	waitforvisualfinish
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 2
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

RockSlideRocks:
	createsprite gFallingRockSpriteTemplate, ANIM_TARGET, 2, -20, 0, -10, 1
	playsewithpan SE_M_ROCK_THROW, SOUND_PAN_TARGET
	delay 2
	createsprite gFallingRockSpriteTemplate, ANIM_TARGET, 2, 28, 1, 10, 1
	playsewithpan SE_M_ROCK_THROW, SOUND_PAN_TARGET
	delay 2
	createsprite gFallingRockSpriteTemplate, ANIM_TARGET, 2, -10, 1, -5, 1
	playsewithpan SE_M_ROCK_THROW, SOUND_PAN_TARGET
	delay 2
	createsprite gFallingRockSpriteTemplate, ANIM_TARGET, 2, 10, 0, 6, 1
	playsewithpan SE_M_ROCK_THROW, SOUND_PAN_TARGET
	delay 2
	createsprite gFallingRockSpriteTemplate, ANIM_TARGET, 2, 24, 1, 10, 1
	playsewithpan SE_M_ROCK_THROW, SOUND_PAN_TARGET
	delay 2
	createsprite gFallingRockSpriteTemplate, ANIM_TARGET, 2, -32, 2, -10, 1
	playsewithpan SE_M_ROCK_THROW, SOUND_PAN_TARGET
	delay 2
	createsprite gFallingRockSpriteTemplate, ANIM_TARGET, 2, -20, 0, -10, 1
	playsewithpan SE_M_ROCK_THROW, SOUND_PAN_TARGET
	delay 2
	createsprite gFallingRockSpriteTemplate, ANIM_TARGET, 2, 30, 2, 10, 1
	playsewithpan SE_M_ROCK_THROW, SOUND_PAN_TARGET
	delay 2
	return

Move_THIEF:
	end

Move_BUBBLE_BEAM:
	loadspritegfx ANIM_TAG_BUBBLE
	@                                  Priority, Starting X, Starting Y, Ending X Offset, Ending Y Offset, ?, ?, ?
	playsewithpan SE_M_BUBBLE, SOUND_PAN_ATTACKER
	createsprite gWaterBubbleProjectileSpriteTemplate, ANIM_ATTACKER, 2, 16, -16, -10, -16, 15, 128, 75
	delay 5
	playsewithpan SE_M_BUBBLE, SOUND_PAN_ATTACKER
	createsprite gWaterBubbleProjectileSpriteTemplate, ANIM_ATTACKER, 2, 16, -16, 14, -4, 15, 128, 75
	delay 5
	playsewithpan SE_M_BUBBLE, SOUND_PAN_ATTACKER
	createsprite gWaterBubbleProjectileSpriteTemplate, ANIM_ATTACKER, 2, 16, -16, -16, 16, 15, 128, 75
	delay 5
	playsewithpan SE_M_BUBBLE, SOUND_PAN_ATTACKER
	createsprite gWaterBubbleProjectileSpriteTemplate, ANIM_ATTACKER, 2, 16, -16, 10, 16, 15, 128, 75
	delay 5
	playsewithpan SE_M_BUBBLE, SOUND_PAN_ATTACKER
	createsprite gWaterBubbleProjectileSpriteTemplate, ANIM_ATTACKER, 2, 16, -16, -14, 4, 15, 128, 75
	delay 5
	playsewithpan SE_M_BUBBLE, SOUND_PAN_ATTACKER
	createsprite gWaterBubbleProjectileSpriteTemplate, ANIM_ATTACKER, 2, 16, -16, 16, -16, 15, 128, 75
	waitforvisualfinish
	blendoff
	end

Move_ICY_WIND:
	end

Move_SMOKESCREEN:
	loadspritegfx ANIM_TAG_MIST_CLOUD
	loadspritegfx ANIM_TAG_MUSIC_NOTES
	playsewithpan SE_M_SAND_ATTACK, SOUND_PAN_ATTACKER
	call SandAttackPrefab
	waitforvisualfinish
	createsprite gPokeBallPuffSpriteTemplate, ANIM_TARGET, 2,  6, -6, -24, -32, 30, ANIM_TARGET, 0
	createsprite gPokeBallPuffSpriteTemplate, ANIM_TARGET, 2, -6, -6,  24, -32, 30, ANIM_TARGET, 1
	createsprite gPokeBallPuffSpriteTemplate, ANIM_TARGET, 2,  6,  6, -24,  32, 30, ANIM_TARGET, 2
	createsprite gPokeBallPuffSpriteTemplate, ANIM_TARGET, 2, -6,  6,  24,  32, 30, ANIM_TARGET, 3
	waitforvisualfinish
	call BlackFlashEffect
	end

Move_CONVERSION:
	loadspritegfx ANIM_TAG_ORBS
	@monbg ANIM_DEF_PARTNER
	@splitbgprio_foes ANIM_TARGET
	@setalpha 12, 8
	playsewithpan SE_M_SWIFT, SOUND_PAN_ATTACKER
	@call BlackFlashEffect
	call ConversionEffect
	waitforvisualfinish
	@call BlackFlashEffect
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	blendoff
	end

ConversionEffect:
	createsprite gSolidSquareCombineSpriteTemplate, ANIM_TARGET, 2,  88, -72, 108, -52, 30, ANIM_TARGET, 0
	createsprite gSolidSquareCombineSpriteTemplate, ANIM_TARGET, 2, 136, -72, 116, -52, 30, ANIM_TARGET, 0
	createsprite gSolidSquareCombineSpriteTemplate, ANIM_TARGET, 2,  88, -24, 108, -44, 30, ANIM_TARGET, 0
	createsprite gSolidSquareCombineSpriteTemplate, ANIM_TARGET, 2, 136, -24, 116, -44, 30, ANIM_TARGET, 0
	delay 28
	playsewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER
	createsprite gSolidSquareProjectileSpriteTemplate, ANIM_ATTACKER, 2, 112, -48, 0, 0, -30, 64, ANIM_ATTACKER, 0
	return

Move_CONVERSION_2:
	end

Move_ROLLING_KICK:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 1
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_HEADBUTT:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_HEADBUTT, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	delay 2
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 2
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_HORN_ATTACK:
	loadspritegfx ANIM_TAG_HORN_HIT
	createsprite gHornHitSpriteTemplate, ANIM_TARGET, 2, -40, 0, 8, 8, 8, ANIM_TARGET, 0
	playsewithpan SE_M_HORN_ATTACK, SOUND_PAN_TARGET
	delay 8
	createsprite gHornHitSpriteTemplate, ANIM_TARGET, 2, -32, 8, 8, 8, 8, ANIM_TARGET, 0
	playsewithpan SE_M_HORN_ATTACK, SOUND_PAN_TARGET
	waitforvisualfinish
	end

Move_FURY_ATTACK:
	loadspritegfx ANIM_TAG_HORN_HIT
	createsprite gHornHitSpriteTemplate, ANIM_TARGET, 2, -40,  -8,  8,  -8, 8, ANIM_TARGET, 0
	playsewithpan SE_M_HORN_ATTACK, SOUND_PAN_TARGET
	delay 5
	createsprite gHornHitSpriteTemplate, ANIM_TARGET, 2, -32,   0, 16,   0, 8, ANIM_TARGET, 0
	playsewithpan SE_M_HORN_ATTACK, SOUND_PAN_TARGET
	delay 5
	createsprite gHornHitSpriteTemplate, ANIM_TARGET, 2, -56, -16,  0, -16, 8, ANIM_TARGET, 0
	playsewithpan SE_M_HORN_ATTACK, SOUND_PAN_TARGET
	delay 10
	createsprite gHornHitSpriteTemplate, ANIM_TARGET, 2, -40,  -8,  8,  -8, 8, ANIM_TARGET, 0
	playsewithpan SE_M_HORN_ATTACK, SOUND_PAN_TARGET
	delay 5
	createsprite gHornHitSpriteTemplate, ANIM_TARGET, 2, -32,   0, 16,   0, 8, ANIM_TARGET, 0
	playsewithpan SE_M_HORN_ATTACK, SOUND_PAN_TARGET
	delay 5
	createsprite gHornHitSpriteTemplate, ANIM_TARGET, 2, -56, -16,  0, -16, 8, ANIM_TARGET, 0
	playsewithpan SE_M_HORN_ATTACK, SOUND_PAN_TARGET
	delay 10
	createvisualtask AnimTask_ShakeMon, 2, ANIM_TARGET, 5, 0, 6, 1
	delay 10
	waitforvisualfinish
	end

Move_HORN_DRILL:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	playsewithpan SE_M_HORN_ATTACK, SOUND_PAN_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	playsewithpan SE_M_HORN_ATTACK, SOUND_PAN_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 1
	playsewithpan SE_M_HORN_ATTACK, SOUND_PAN_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 1
	playsewithpan SE_M_HORN_ATTACK, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_THRASH:
	loadspritegfx ANIM_TAG_IMPACT
	@loadspritegfx ANIM_TAG_RED_BALL
	@call HardenSquarePrefab
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_ATTACKER, -4, 1, 12, 1
	waitforvisualfinish
	playsewithpan SE_M_MEGA_KICK2, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_TARGET, 2, -8, 8, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_TARGET, 2, 0, 0, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_TARGET, 2, 8, -8, ANIM_TARGET, 2
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_TARGET, -4, 1, 12, 1
	waitforvisualfinish
	end

Move_SING:
	loadspritegfx ANIM_TAG_MUSIC_NOTES
	createvisualtask SoundTask_PlayDoubleCry, 2, ANIM_ATTACKER, DOUBLE_CRY_GROWL
	createvisualtask AnimTask_StartSinAnimTimer, 5, 100
	createsprite gMusicNoteSpriteTemplate, ANIM_TARGET, 3, 10, 10, 0, 16
	waitforvisualfinish
	createsprite gMusicNote2SpriteTemplate, ANIM_TARGET, 2, 0, -20, 85, 100, 1
	waitforvisualfinish
	end

Move_LOW_KICK:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, -96, 0, 0, 15
	delay 15
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, 0, 15
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_EARTHQUAKE:
	createvisualtask AnimTask_HorizontalShake, 5, (MAX_BATTLERS_COUNT + 1), 10, 50
	createvisualtask AnimTask_HorizontalShake, 5, MAX_BATTLERS_COUNT, 10, 50
	playsewithpan SE_M_EARTHQUAKE, 0
	delay 10
	waitforvisualfinish
	end

Move_FISSURE:
	createvisualtask AnimTask_HorizontalShake, 3, (MAX_BATTLERS_COUNT + 1), 10, 50
	createvisualtask AnimTask_HorizontalShake, 3, ANIM_TARGET, 10, 50
	playsewithpan SE_M_EARTHQUAKE, SOUND_PAN_TARGET
	createsprite gComplexPaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 3, 1, RGB_BLACK, 14, RGB_WHITE, 14
	createvisualtask AnimTask_ShakeMon2, 5, 4, 6, 0, 38, 1
	delay 1
	createsprite gComplexPaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 3, 1, RGB_BLACK, 14, RGB_WHITE, 14
	delay 32
	createsprite gComplexPaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 3, 1, RGB_BLACK, 14, RGB_WHITE, 14
	createvisualtask AnimTask_ShakeMon2, 5, 4, 6, 0, 38, 1
	delay 1
	createsprite gComplexPaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 3, 1, RGB_BLACK, 14, RGB_WHITE, 14
	restorebg
	waitbgfadeout
	waitbgfadein
	end

FissureDirtPlumeFar:
	createsprite gDirtPlumeSpriteTemplate, ANIM_TARGET, 2, 1, 0, 12, -48, -16, 24
	createsprite gDirtPlumeSpriteTemplate, ANIM_TARGET, 2, 1, 0, 16, -16, -10, 24
	createsprite gDirtPlumeSpriteTemplate, ANIM_TARGET, 2, 1, 1, 14, -52, -18, 24
	createsprite gDirtPlumeSpriteTemplate, ANIM_TARGET, 2, 1, 1, 12, -32, -16, 24
	playsewithpan SE_M_DIG, SOUND_PAN_TARGET
	return

FissureDirtPlumeClose:
	createsprite gDirtPlumeSpriteTemplate, ANIM_TARGET, 2, 1, 0, 12, -24, -16, 24
	createsprite gDirtPlumeSpriteTemplate, ANIM_TARGET, 2, 1, 0, 16, -38, -10, 24
	createsprite gDirtPlumeSpriteTemplate, ANIM_TARGET, 2, 1, 1, 14, -20, -18, 24
	createsprite gDirtPlumeSpriteTemplate, ANIM_TARGET, 2, 1, 1, 12, -36, -16, 24
	playsewithpan SE_M_DIG, SOUND_PAN_TARGET
	return

Move_DIG:
	choosetwoturnanim DigSetUp, DigUnleash

DigEnd:
	end

DigSetUp:
	@createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 64, 0, 20
	invisible ANIM_ATTACKER
	waitforvisualfinish
	goto DigEnd

DigUnleash:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	loopsewithpan SE_M_TAKE_DOWN, SOUND_PAN_ATTACKER, 9, 2
	createsprite gBasicHitSplatSpriteTemplate, ANIM_TARGET, 2, -8, 8, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_TARGET, 2, 0, 0, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_TARGET, 2, 8, -8, ANIM_TARGET, 2
	delay 8
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	visible ANIM_ATTACKER
	@createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 2
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	goto DigEnd

DigThrowDirt:
	createsprite gDirtPlumeSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 12, 4, -16, 18
	createsprite gDirtPlumeSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 16, 4, -10, 18
	createsprite gDirtPlumeSpriteTemplate, ANIM_ATTACKER, 2, 0, 1, 14, 4, -18, 18
	createsprite gDirtPlumeSpriteTemplate, ANIM_ATTACKER, 2, 0, 1, 12, 4, -16, 18
	playsewithpan SE_M_DIG, SOUND_PAN_ATTACKER
	delay 32
	return

Move_MEDITATE:
	loadspritegfx ANIM_TAG_RED_BALL
	call HardenSquarePrefab
	waitforvisualfinish
	end

Move_AGILITY:
	delay 10
	end

Move_QUICK_ATTACK:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, -96, 0, 0, 15
	delay 15
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, 0, 15
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_RAGE:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, -8, ANIM_TARGET, 2
	playsewithpan SE_M_DOUBLE_SLAP, SOUND_PAN_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, 8, ANIM_TARGET, 2
	playsewithpan SE_M_DOUBLE_SLAP, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_TELEPORT:
	loadspritegfx ANIM_TAG_ORBS
	createvisualtask AnimTask_TeleportFlySquish, 2, 0
	waitforvisualfinish
	invisible ANIM_ATTACKER
	createsprite gOrbRisingSpriteTemplate, ANIM_ATTACKER, 2, -4, -16, ANIM_ATTACKER, -64, 16, 0, 0
	createsprite gOrbRisingSpriteTemplate, ANIM_ATTACKER, 2, -4,  -8, ANIM_ATTACKER, -64, 16, 0, 0
	createsprite gOrbRisingSpriteTemplate, ANIM_ATTACKER, 2, -4,   0, ANIM_ATTACKER, -64, 16, 0, 0
	createsprite gOrbRisingSpriteTemplate, ANIM_ATTACKER, 2, -4,   8, ANIM_ATTACKER, -64, 16, 0, 0
	createsprite gOrbRisingSpriteTemplate, ANIM_ATTACKER, 2, -4,  16, ANIM_ATTACKER, -64, 16, 0, 0
	waitforvisualfinish
	delay 20
	end

Move_DOUBLE_TEAM:
	loadspritegfx ANIM_TAG_GRAY_LIGHT_WALL
	monbg ANIM_ATTACKER
	setalpha 12, 8
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 10
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	restorebg
	clearmonbg ANIM_ATTACKER
	waitforvisualfinish
	delay 10
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 8, 0, 0, 2
	playsewithpan SE_M_DOUBLE_TEAM, SOUND_PAN_ATTACKER
	delay 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, -16, 0, 0, 2
	delay 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 16, 0, 0, 2
	playsewithpan SE_M_DOUBLE_TEAM, SOUND_PAN_ATTACKER
	delay 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, -16, 0, 0, 2
	delay 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 16, 0, 0, 2
	playsewithpan SE_M_DOUBLE_TEAM, SOUND_PAN_ATTACKER
	delay 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, -16, 0, 0, 2
	delay 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 16, 0, 0, 2
	playsewithpan SE_M_DOUBLE_TEAM, SOUND_PAN_ATTACKER
	delay 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, -16, 0, 0, 2
	delay 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 16, 0, 0, 2
	playsewithpan SE_M_DOUBLE_TEAM, SOUND_PAN_ATTACKER
	delay 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, -8, 0, 0, 2
	waitforvisualfinish
	delay 10
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0
	waitforvisualfinish
	delay 1
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0
	waitforvisualfinish
	clearmonbg ANIM_ATK_PARTNER
	blendoff
	end

Move_MINIMIZE:
	setalpha 10, 8
	createvisualtask AnimTask_Minimize, 2
	loopsewithpan SE_M_MINIMIZE, SOUND_PAN_ATTACKER, 34, 3
	waitforvisualfinish
	blendoff
	end

Move_METRONOME:
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 16, 0, 0, 8
	delay 2
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 8
	delay 5
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 16, 0, 0, 8
	delay 2
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 8
	waitforvisualfinish
	end

Move_SKULL_BASH:
	choosetwoturnanim SkullBashSetUp, SkullBashAttack
SkullBashEnd:
	end

SkullBashSetUp:
	call SkullBashSetUpHeadDown
	waitforvisualfinish
	goto SkullBashEnd

SkullBashSetUpHeadDown:
	loadspritegfx ANIM_TAG_ORBS,
	splitbgprio_foes ANIM_ATTACKER
	loopsewithpan SE_M_TAKE_DOWN, SOUND_PAN_ATTACKER, 9, 2
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 0, 4, RGB(13, 12, 31)
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 4, 0, RGB(13, 12, 31)
	waitforvisualfinish
	return

SkullBashAttack:
	loadspritegfx ANIM_TAG_IMPACT
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	waitforvisualfinish
	goto SkullBashEnd

Move_AMNESIA:
	loadspritegfx ANIM_TAG_AMNESIA
	monbg ANIM_ATTACKER
	splitbgprio ANIM_ATTACKER
	setalpha 8, 8
	createsprite gQuestionMarkSpriteTemplate, ANIM_ATTACKER, 13, 16, -16
	playsewithpan SE_M_METRONOME, SOUND_PAN_ATTACKER
	delay 15
	createsprite gQuestionMarkSpriteTemplate, ANIM_ATTACKER, 13, 32, 0
	playsewithpan SE_M_METRONOME, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createsprite gQuestionMarkSpriteTemplate, ANIM_ATTACKER, 13, 16, -16
	playsewithpan SE_M_METRONOME, SOUND_PAN_ATTACKER
	delay 15
	createsprite gQuestionMarkSpriteTemplate, ANIM_ATTACKER, 13, 32, 0
	playsewithpan SE_M_METRONOME, SOUND_PAN_ATTACKER
	waitforvisualfinish
	clearmonbg ANIM_ATTACKER
	blendoff
	end

Move_KINESIS:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, -8, ANIM_TARGET, 2
	playsewithpan SE_M_SUPERSONIC, SOUND_PAN_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, 8, ANIM_TARGET, 2
	playsewithpan SE_M_SUPERSONIC, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_GLARE:
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	delay 4
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	delay 4
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	end

Move_BARRAGE:
	loadspritegfx ANIM_TAG_BLACK_BALL_2
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_DOUBLE_TEAM, SOUND_PAN_ATTACKER
	createsprite gBarrageBallSpriteTemplate, ANIM_TARGET, 2, 20, 0, 0, 0, -25, 25, ANIM_ATTACKER, 0
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_TARGET, 3, 0, 6, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_SKY_ATTACK:
	choosetwoturnanim SkyAttackSetUp, SkyAttackUnleash
SkyAttackEnd:
	end

SkyAttackSetUp:
	monbg ANIM_DEF_PARTNER
	setalpha 12, 11
	createvisualtask AnimTask_GetTargetIsAttackerPartner, 5, ARG_RET_ID
	jumpretfalse SkyAttackSetUpAgainstOpponent
	goto SkyAttackSetUpAgainstPartner

SkyAttackSetUpAgainstOpponent:
	loadspritegfx ANIM_TAG_ORBS
	setalpha 12, 8
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 0, 4, RGB(31, 31, 12)
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 0, 4, RGB(31, 31, 31)
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	blendoff
	goto SkyAttackEnd

SkyAttackSetUpAgainstPartner:
	loadspritegfx ANIM_TAG_ORBS
	setalpha 12, 8
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 0, 4, RGB(31, 31, 12)
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 0, 4, RGB(31, 31, 31)
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	blendoff
	goto SkyAttackEnd

SkyAttackUnleash:
	loadspritegfx ANIM_TAG_ORBS
	loadspritegfx ANIM_TAG_IMPACT
	createvisualtask AnimTask_TeleportFlySquish, 2, 0
	waitforvisualfinish
	invisible ANIM_ATTACKER
	playsewithpan SE_M_FLY, SOUND_PAN_ATTACKER
	createsprite gOrbRisingSpriteTemplate, ANIM_ATTACKER, 2, -4, -16, ANIM_ATTACKER, -64, 16, 0, 0
	createsprite gOrbRisingSpriteTemplate, ANIM_ATTACKER, 2, -4,  -8, ANIM_ATTACKER, -64, 16, 0, 0
	createsprite gOrbRisingSpriteTemplate, ANIM_ATTACKER, 2, -4,   0, ANIM_ATTACKER, -64, 16, 0, 0
	createsprite gOrbRisingSpriteTemplate, ANIM_ATTACKER, 2, -4,   8, ANIM_ATTACKER, -64, 16, 0, 0
	createsprite gOrbRisingSpriteTemplate, ANIM_ATTACKER, 2, -4,  16, ANIM_ATTACKER, -64, 16, 0, 0
	waitforvisualfinish
	delay 20
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	blendoff
	goto SkyAttackEnd

Move_FLASH:
	playsewithpan SE_M_LEER, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_Flash, 2
	waitforvisualfinish
	end

Move_SPLASH:
	loopsewithpan SE_M_TAIL_WHIP, SOUND_PAN_ATTACKER, 38, 3
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 32, 0, 10
	delay 10
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 32, 0, 10
	delay 10
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 32, 0, 10
	delay 10
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 32, 0, 10
	delay 10
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 32, 0, 10
	delay 10
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 32, 0, 10
	delay 10
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, 0, 1
	waitforvisualfinish
	end

Move_ACID_ARMOR:
	setalpha 15, 0
	createvisualtask AnimTask_ScaleMonAndRestore, 0, 6, 6, 20, ANIM_ATTACKER, 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 16, 0, 20
	delay 20
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 20
	playsewithpan SE_M_ACID_ARMOR, SOUND_PAN_ATTACKER
	waitforvisualfinish
	blendoff
	end

Move_SHARPEN:
	loadspritegfx ANIM_TAG_RED_BALL
	call HardenSquarePrefab
	waitforvisualfinish
	end

Move_SUPER_FANG:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_TARGET, -4, 1, 12, 1
	waitforvisualfinish
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_SLASH:
	loadspritegfx ANIM_TAG_CUT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_SCRATCH, SOUND_PAN_TARGET
	createsprite gCuttingSliceSpriteTemplate, ANIM_ATTACKER, 2, 16, -32, 0
	createsprite gCuttingSliceSpriteTemplate, ANIM_ATTACKER, 2, 32, -32, 0
	createsprite gCuttingSliceSpriteTemplate, ANIM_ATTACKER, 2, 48, -32, 0
	delay 5
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	waitforvisualfinish
	end

Move_STRUGGLE:
	loadspritegfx ANIM_TAG_IMPACT
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, -8, ANIM_TARGET, 2
	playsewithpan SE_M_DOUBLE_SLAP, SOUND_PAN_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, 8, ANIM_TARGET, 2
	playsewithpan SE_M_DOUBLE_SLAP, SOUND_PAN_TARGET
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	waitforvisualfinish
	end

Move_SKETCH:
	end

Move_NIGHTMARE:
	end

NightmareInContest:
	createvisualtask AnimTask_BlendMonInAndOut, 2, ANIM_ATTACKER, RGB_WHITE, 10, 2, 1
	createvisualtask AnimTask_ShakeMon, 2, ANIM_ATTACKER, 3, 0, 32, 1
	playsewithpan SE_M_NIGHTMARE, SOUND_PAN_TARGET
	waitforvisualfinish
	restorebg
	waitbgfadein
	end

Move_FLAIL:
	end

Move_SPITE:
	end

Move_MACH_PUNCH:
	end

Move_FORESIGHT:
	end

Move_DESTINY_BOND:
	end

Move_ENDURE:
	end

Move_CHARM:
	end

Move_ROLLOUT:
	end

Move_FALSE_SWIPE:
	end

Move_SWAGGER:
	end

Move_MILK_DRINK:
	end

Move_MAGNITUDE:
	end

Move_RAPID_SPIN:
	end

Move_MOONLIGHT:
	end

Move_EXTREME_SPEED:
	end

Move_UPROAR:
	end

Move_HEAT_WAVE:
	end

@ Also used by Hail weather
Move_HAIL:
	end

Move_TORMENT:
	end

Move_MEMENTO:
	end

Move_FACADE:
	end

Move_SMELLING_SALT:
	end

Move_FOLLOW_ME:
	end

Move_CHARGE:
	end

Move_TAUNT:
	end

Move_HELPING_HAND:
	end

Move_ASSIST:
	end

Move_SUPERPOWER:
	end

Move_RECYCLE:
	end

Move_BRICK_BREAK:
	end

Move_YAWN:
	end

Move_ENDEAVOR:
	end

Move_ERUPTION:
	end

Move_SKILL_SWAP:
	end

Move_IMPRISON:
	end

Move_GRUDGE:
	end

Move_CAMOUFLAGE:
	end

Move_TAIL_GLOW:
	end

Move_LUSTER_PURGE:
	end

Move_MIST_BALL:
	end

Move_FEATHER_DANCE:
	end

Move_TEETER_DANCE:
	end

Move_MUD_SPORT:
	end

Move_NEEDLE_ARM:
	end

Move_SLACK_OFF:
	end

Move_CRUSH_CLAW:
	end

Move_AROMATHERAPY:
	end

Move_FAKE_TEARS:
	end

Move_AIR_CUTTER:
	end

Move_ODOR_SLEUTH:
	end

Move_GRASS_WHISTLE:
	end

Move_TICKLE:
	end

Move_WATER_SPOUT:
	end

Move_SHADOW_PUNCH:
	end

Move_EXTRASENSORY:
	end

Move_AERIAL_ACE:
	end

Move_IRON_DEFENSE:
	end

Move_BLOCK:
	end

Move_HOWL:
	end

Move_BULK_UP:
	end

Move_COVET:
	end

Move_VOLT_TACKLE:
	end

Move_WATER_SPORT:
	end

Move_CALM_MIND:
	end

Move_LEAF_BLADE:
	end

Move_DRAGON_DANCE:
	end

Move_SHOCK_WAVE:
	end

Move_HARDEN:
	loadspritegfx ANIM_TAG_RED_BALL
	call HardenSquarePrefab
	waitforvisualfinish
	end

HardenSquarePrefab:
	loopsewithpan SE_M_HARDEN, SOUND_PAN_ATTACKER, 28, 2
	createsprite gHardenCombineSpriteTemplate, ANIM_ATTACKER, 2, -32, -32, -6, -6, 24, ANIM_ATTACKER, 0
	createsprite gHardenCombineSpriteTemplate, ANIM_ATTACKER, 2,   0, -32,  0, -6, 24, ANIM_ATTACKER, 1
	createsprite gHardenCombineSpriteTemplate, ANIM_ATTACKER, 2,  32, -32,  6, -6, 24, ANIM_ATTACKER, 2
	createsprite gHardenCombineSpriteTemplate, ANIM_ATTACKER, 2, -32,   0, -6,  0, 24, ANIM_ATTACKER, 3
	createsprite gHardenCombineSpriteTemplate, ANIM_ATTACKER, 2,  32,   0,  6,  0, 24, ANIM_ATTACKER, 4
	createsprite gHardenCombineSpriteTemplate, ANIM_ATTACKER, 2, -32,  32, -6,  6, 24, ANIM_ATTACKER, 5
	createsprite gHardenCombineSpriteTemplate, ANIM_ATTACKER, 2,   0,  32,  0,  6, 24, ANIM_ATTACKER, 6
	createsprite gHardenCombineSpriteTemplate, ANIM_ATTACKER, 2,  32,  32,  6,  6, 24, ANIM_ATTACKER, 7
	return

Move_BELLY_DRUM:
	end

BellyDrumLeft:
	createsprite gBellyDrumHandSpriteTemplate, ANIM_ATTACKER, 3, 0
	createvisualtask AnimTask_ShakeMon, 2, ANIM_ATTACKER, 0, 8, 2, 1
	return

BellyDrumRight:
	createsprite gBellyDrumHandSpriteTemplate, ANIM_ATTACKER, 3, 1
	createvisualtask AnimTask_ShakeMon, 2, ANIM_ATTACKER, 0, 8, 2, 1
	return

Move_MIND_READER:
	end

Move_ICE_PUNCH:
	loadspritegfx ANIM_TAG_ICE_CRYSTALS
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, ANIM_TARGET, 2
	delay 10
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	delay 10
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 8, ANIM_TARGET, 2
	waitforvisualfinish
	call IceCrystalWallEffect
	delay 32
	clearmonbg ANIM_TARGET
	end

IceCrystalWallEffect:
	createsprite gIceCrystalSpriteTemplate, ANIM_TARGET, 2, -24, 32, ANIM_TARGET, -32, 128, 0, 0
	createsprite gIceCrystalSpriteTemplate, ANIM_TARGET, 2,  24, 32, ANIM_TARGET, -32, 128, 0, 0
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 24
	createsprite gIceCrystalSpriteTemplate, ANIM_TARGET, 2, -16, 32, ANIM_TARGET, -32, 128, 0, 0
	createsprite gIceCrystalSpriteTemplate, ANIM_TARGET, 2,  16, 32, ANIM_TARGET, -32, 128, 0, 0
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 24
	createsprite gIceCrystalSpriteTemplate, ANIM_TARGET, 2, -24, 32, ANIM_TARGET, -32, 128, 0, 0
	createsprite gIceCrystalSpriteTemplate, ANIM_TARGET, 2,  24, 32, ANIM_TARGET, -32, 128, 0, 0
	createsprite gIceCrystalSpriteTemplate, ANIM_TARGET, 2,  -8, 32, ANIM_TARGET, -32, 128, 0, 0
	createsprite gIceCrystalSpriteTemplate, ANIM_TARGET, 2,   8, 32, ANIM_TARGET, -32, 128, 0, 0
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 24
	createsprite gIceCrystalSpriteTemplate, ANIM_TARGET, 2, -16, 32, ANIM_TARGET, -32, 128, 0, 0
	createsprite gIceCrystalSpriteTemplate, ANIM_TARGET, 2,  16, 32, ANIM_TARGET, -32, 128, 0, 0
	createsprite gIceCrystalSpriteTemplate, ANIM_TARGET, 2,   0, 32, ANIM_TARGET, -32, 128, 0, 0
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	return

Move_REST:
	playsewithpan SE_M_SNORE, SOUND_PAN_ATTACKER
	loadspritegfx ANIM_TAG_LETTER_Z
	createsprite gSleepLetterZSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, -32, 30, 200, 0
	waitforvisualfinish
	createsprite gSleepLetterZSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, -32, 30, 200, 0
	waitforvisualfinish
	end

Move_CONFUSION:
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_SUPERSONIC, SOUND_PAN_TARGET
	createsprite gComplexPaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG | F_PAL_BATTLERS, 3, 1, RGB_WHITE, 10, RGB_WHITE, 0
	delay 20
	createsprite gComplexPaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG | F_PAL_BATTLERS, 3, 1, RGB_WHITE, 10, RGB_WHITE, 0
	delay 20
	createsprite gComplexPaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG | F_PAL_BATTLERS, 3, 1, RGB_WHITE, 10, RGB_WHITE, 0
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_PSYCHIC:
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_SUPERSONIC, SOUND_PAN_TARGET
	createsprite gComplexPaletteBlendSpriteTemplate, ANIM_TARGET, 2, F_PAL_BG | F_PAL_BATTLERS, 3, 1, RGB_WHITE, 10, RGB_WHITE, 0
	delay 20
	createsprite gComplexPaletteBlendSpriteTemplate, ANIM_TARGET, 2, F_PAL_BG | F_PAL_BATTLERS, 3, 1, RGB_WHITE, 10, RGB_WHITE, 0
	delay 20
	createsprite gComplexPaletteBlendSpriteTemplate, ANIM_TARGET, 2, F_PAL_BG | F_PAL_BATTLERS, 3, 1, RGB_WHITE, 10, RGB_WHITE, 0
	waitforvisualfinish
	createvisualtask AnimTask_BlendMonInAndOut, 5, ANIM_TARGET, RGB(27, 27, 0), 12, 1, 1
	createvisualtask AnimTask_ExtrasensoryDistortion, 5, 0
	waitforvisualfinish
	createvisualtask AnimTask_BlendMonInAndOut, 5, ANIM_TARGET, RGB(27, 27, 0), 12, 1, 1
	createvisualtask AnimTask_ExtrasensoryDistortion, 5, 1
	waitforvisualfinish
	createvisualtask AnimTask_BlendMonInAndOut, 5, ANIM_TARGET, RGB(27, 27, 0), 12, 1, 1
	createvisualtask AnimTask_ExtrasensoryDistortion, 5, 0
	waitforvisualfinish
	createvisualtask AnimTask_BlendMonInAndOut, 5, ANIM_TARGET, RGB(27, 27, 0), 12, 1, 1
	createvisualtask AnimTask_ExtrasensoryDistortion, 5, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_FUTURE_SIGHT:
	end

Move_THUNDER:
	loadspritegfx ANIM_TAG_LIGHTNING
	loadspritegfx ANIM_TAG_EXPLOSION
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gRBThunderSpriteTemplate, ANIM_TARGET, 2, 0, -32, ANIM_TARGET, 64, 17, 0, 0
	delay 2
	createsprite gRBThunderSpriteTemplate, ANIM_TARGET, 2, 0, -32, ANIM_TARGET, 64, 17, 0, 0
	delay 2
	createsprite gRBThunderSpriteTemplate, ANIM_TARGET, 2, 0, -32, ANIM_TARGET, 64, 17, 0, 0
	delay 2
	createsprite gRBThunderSpriteTemplate, ANIM_TARGET, 2, 0, -32, ANIM_TARGET, 64, 17, 0, 0
	delay 12
	createsprite gRBLightningFizzle1SpriteTemplate, ANIM_TARGET, 2, 0, 32, ANIM_TARGET, 32, 15, -24, 0
	createsprite gRBLightningFizzle2SpriteTemplate, ANIM_TARGET, 2, 0, 32, ANIM_TARGET, 32, 15,  24, 0
	waitforvisualfinish
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 1
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	createsprite gRBLightningBallSpriteTemplate, ANIM_TARGET, 3, 0, 0, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  -4, -32, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  -4, -24, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,   4,  32, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,   4,  24, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -32,   4, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -24,   4, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  32,  -4, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  24,  -4, 0, 1
	delay 3
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -20, -28, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -12, -20, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  20,  28, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  12,  20, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -20,  28, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3, -12,  20, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  20, -28, 0, 1
	createsprite gRBLightningSparkSpriteTemplate, ANIM_TARGET, 3,  12, -20, 0, 1
	waitforvisualfinish
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	end

Move_THUNDER_PUNCH:
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_LIGHTNING
	loadspritegfx ANIM_TAG_EXPLOSION
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	delay 16
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	createsprite gRBThunderSpriteTemplate, ANIM_TARGET, 2, 0, -32, ANIM_TARGET, 64, 17, 0, 0
	delay 2
	createsprite gRBThunderSpriteTemplate, ANIM_TARGET, 2, 0, -32, ANIM_TARGET, 64, 17, 0, 0
	delay 2
	createsprite gRBThunderSpriteTemplate, ANIM_TARGET, 2, 0, -32, ANIM_TARGET, 64, 17, 0, 0
	delay 2
	createsprite gRBThunderSpriteTemplate, ANIM_TARGET, 2, 0, -32, ANIM_TARGET, 64, 17, 0, 0
	delay 12
	createsprite gRBLightningFizzle1SpriteTemplate, ANIM_TARGET, 2, 0, 32, ANIM_TARGET, 32, 15, -24, 0
	createsprite gRBLightningFizzle2SpriteTemplate, ANIM_TARGET, 2, 0, 32, ANIM_TARGET, 32, 15,  24, 0
	waitforvisualfinish
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	end

Move_SACRED_FIRE:
	end

Move_SCRATCH:
	loadspritegfx ANIM_TAG_CUT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_SCRATCH, SOUND_PAN_TARGET
	createsprite gCuttingSliceSpriteTemplate, ANIM_ATTACKER, 2, 16, -32, 0
	createsprite gCuttingSliceSpriteTemplate, ANIM_ATTACKER, 2, 32, -32, 0
	createsprite gCuttingSliceSpriteTemplate, ANIM_ATTACKER, 2, 48, -32, 0
	delay 5
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	waitforvisualfinish
	end

Move_DRAGON_BREATH:
	end

Move_ROAR:
	loadspritegfx ANIM_TAG_NOISE_LINE
	createvisualtask SoundTask_PlayDoubleCry, 2, ANIM_ATTACKER, DOUBLE_CRY_ROAR
	createsprite gRoarNoiseLineSpriteTemplate, ANIM_ATTACKER, 2, 32, 0, -16, 20, 24, 257
	waitforvisualfinish
	createsprite gRoarNoiseLineSpriteTemplate, ANIM_ATTACKER, 2, 32, 0, -16, 20, 24, 257
	waitforvisualfinish
	delay 20
	createvisualtask AnimTask_SlideOffScreen, 5, ANIM_TARGET, 2
	waitforvisualfinish
	createvisualtask SoundTask_WaitForCry, 5
	waitforvisualfinish
	end

RoarEffect:
	createsprite gRoarNoiseLineSpriteTemplate, ANIM_ATTACKER, 2, 24, -8, 0
	createsprite gRoarNoiseLineSpriteTemplate, ANIM_ATTACKER, 2, 24, 0, 2
	createsprite gRoarNoiseLineSpriteTemplate, ANIM_ATTACKER, 2, 24, 8, 1
	delay 15
	createsprite gRoarNoiseLineSpriteTemplate, ANIM_ATTACKER, 2, 24, -8, 0
	createsprite gRoarNoiseLineSpriteTemplate, ANIM_ATTACKER, 2, 24, 0, 2
	createsprite gRoarNoiseLineSpriteTemplate, ANIM_ATTACKER, 2, 24, 8, 1
	return

Move_GROWL:
	loadspritegfx ANIM_TAG_MUSIC_NOTES
	createvisualtask SoundTask_PlayDoubleCry, 2, ANIM_ATTACKER, DOUBLE_CRY_GROWL
	createvisualtask AnimTask_StartSinAnimTimer, 5, 100
	createsprite gMusicNoteSpriteTemplate, ANIM_TARGET, 3, 10, 10, 0, 16
	delay 4
	createsprite gMusicNoteSpriteTemplate, ANIM_TARGET, 3, 10, 10, 0, 16
	delay 4
	createsprite gMusicNoteSpriteTemplate, ANIM_TARGET, 3, 10, 10, 0, 16
	waitforvisualfinish
	end

Move_SNORE:
	end

Move_LIGHT_SCREEN:
	loadspritegfx ANIM_TAG_GRAY_LIGHT_WALL
	monbg ANIM_ATTACKER
	setalpha 12, 8
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0
	waitforvisualfinish
	delay 1
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0
	waitforvisualfinish
	delay 1
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0
	waitforvisualfinish
	delay 3
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0
	waitforvisualfinish
	delay 1
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0
	waitforvisualfinish
	delay 1
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0
	waitforvisualfinish
	clearmonbg ANIM_ATTACKER
	blendoff
	end

SpecialScreenSparkle:
	createsprite gSpecialScreenSparkleSpriteTemplate, ANIM_ATTACKER, 2, 23, 0, ANIM_ATTACKER, TRUE
	delay 6
	createsprite gSpecialScreenSparkleSpriteTemplate, ANIM_ATTACKER, 2, 31, -8, ANIM_ATTACKER, TRUE
	delay 5
	createsprite gSpecialScreenSparkleSpriteTemplate, ANIM_ATTACKER, 2, 30, 20, ANIM_ATTACKER, TRUE
	delay 7
	createsprite gSpecialScreenSparkleSpriteTemplate, ANIM_ATTACKER, 2, 10, -15, ANIM_ATTACKER, TRUE
	delay 6
	createsprite gSpecialScreenSparkleSpriteTemplate, ANIM_ATTACKER, 2, 20, 10, ANIM_ATTACKER, TRUE
	delay 6
	createsprite gSpecialScreenSparkleSpriteTemplate, ANIM_ATTACKER, 2, 10, 18, ANIM_ATTACKER, TRUE
	return

Move_MIRROR_COAT:
	end

Move_REFLECT:
	loadspritegfx ANIM_TAG_GRAY_LIGHT_WALL
	monbg ANIM_ATTACKER
	setalpha 12, 8
	createvisualtask AnimTask_BlendColorCycle, 2, F_PAL_ATTACKER, 1, 4, 0, 11, RGB(2, 2, 2)
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0
	waitforvisualfinish
	delay 1
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0
	waitforvisualfinish
	delay 1
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0
	waitforvisualfinish
	delay 3
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0
	waitforvisualfinish
	delay 1
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0
	waitforvisualfinish
	delay 1
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0
	waitforvisualfinish
	clearmonbg ANIM_ATTACKER
	blendoff
	end

Move_BARRIER:
	loadspritegfx ANIM_TAG_GRAY_LIGHT_WALL
	monbg ANIM_ATTACKER
	setalpha 12, 8
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, ANIM_ATTACKER, 0
	waitforvisualfinish
	delay 1
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, ANIM_ATTACKER, 0
	waitforvisualfinish
	delay 1
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, ANIM_ATTACKER, 0
	waitforvisualfinish
	delay 3
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, ANIM_ATTACKER, 0
	waitforvisualfinish
	delay 1
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, ANIM_ATTACKER, 0
	waitforvisualfinish
	delay 1
	waitplaysewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER, 15
	createsprite gBarrierWallSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, ANIM_ATTACKER, 0
	waitforvisualfinish
	clearmonbg ANIM_ATTACKER
	blendoff
	end

Move_BUBBLE:
	loadspritegfx ANIM_TAG_BUBBLE
	@                                  Priority, Starting X, Starting Y, Ending X Offset, Ending Y Offset, ?, ?, ?
	playsewithpan SE_M_BUBBLE, SOUND_PAN_ATTACKER
	createsprite gWaterBubbleProjectileSpriteTemplate, ANIM_ATTACKER, 2, 16, -16, -10, -16, 15, 128, 100
	delay 5
	createsprite gWaterBubbleProjectileSpriteTemplate, ANIM_ATTACKER, 2, 16, -16, 14, -4, 15, 128, 100
	delay 5
	createsprite gWaterBubbleProjectileSpriteTemplate, ANIM_ATTACKER, 2, 16, -16, -16, 16, 15, 128, 100
	delay 5
	waitforvisualfinish
	blendoff
	end

Move_SMOG:
	loadspritegfx ANIM_TAG_MUSIC_NOTES
	monbg ANIM_TARGET
	splitbgprio_foes ANIM_TARGET
	setalpha 12, 8
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 0, 4, RGB(12, 12, 12)
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_ATTACKER
	createsprite gGasCloudSpriteTemplate, ANIM_TARGET, 2, 20, 0, 0, 0, 128, -25
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 4, 0, RGB(12, 12, 12)
	delay 50
	clearmonbg ANIM_TARGET
	blendoff
	end

SmogCloud:
	createsprite gSmogCloudSpriteTemplate, ANIM_ATTACKER, 2, 0, -24, 48, 240, 1, 0
	delay 7
	return

Move_FAINT_ATTACK:
	end

Move_SAND_ATTACK:
	loadspritegfx ANIM_TAG_MIST_CLOUD
	playsewithpan SE_M_SAND_ATTACK, SOUND_PAN_ATTACKER
	call SandAttackPrefab
	waitforvisualfinish
	end

SandAttackPrefab:
	createsprite gSandAttackSpriteTemplate, ANIM_TARGET, 2, -64, 16, 0, 19, ANIM_TARGET
	delay 1
	createsprite gSandAttackSpriteTemplate, ANIM_TARGET, 2, -56, 16, 1, 16, ANIM_TARGET
	delay 1
	createsprite gSandAttackSpriteTemplate, ANIM_TARGET, 2, -48,  8, 0, 13, ANIM_TARGET
	createsprite gSandAttackSpriteTemplate, ANIM_TARGET, 2, -48, 16, 2, 13, ANIM_TARGET
	delay 1
	createsprite gSandAttackSpriteTemplate, ANIM_TARGET, 2, -40,  8, 1, 10, ANIM_TARGET
	createsprite gSandAttackSpriteTemplate, ANIM_TARGET, 2, -40, 16, 3, 10, ANIM_TARGET
	delay 1
	createsprite gSandAttackSpriteTemplate, ANIM_TARGET, 2, -32,  0, 0,  7, ANIM_TARGET
	createsprite gSandAttackSpriteTemplate, ANIM_TARGET, 2, -32,  8, 2,  7, ANIM_TARGET
	createsprite gSandAttackSpriteTemplate, ANIM_TARGET, 2, -32, 16, 2,  7, ANIM_TARGET
	delay 1
	createsprite gSandAttackSpriteTemplate, ANIM_TARGET, 2, -24,  0, 1,  4, ANIM_TARGET
	createsprite gSandAttackSpriteTemplate, ANIM_TARGET, 2, -24,  8, 3,  4, ANIM_TARGET
	createsprite gSandAttackSpriteTemplate, ANIM_TARGET, 2, -24, 16, 3,  4, ANIM_TARGET
	delay 1
	createsprite gSandAttackSpriteTemplate, ANIM_TARGET, 2, -16,  0, 4,  1, ANIM_TARGET
	createsprite gSandAttackSpriteTemplate, ANIM_TARGET, 2, -16,  8, 4,  1, ANIM_TARGET
	createsprite gSandAttackSpriteTemplate, ANIM_TARGET, 2, -16, 16, 4,  1, ANIM_TARGET
	return

Move_MUD_SLAP:
	end

Move_DRAGON_RAGE:
	loadspritegfx ANIM_TAG_FIRE
	playsewithpan SE_M_DRAGON_RAGE, SOUND_PAN_ATTACKER
	call FlamethrowerSpray
	waitforvisualfinish
	call FlamethrowerHit
	waitforvisualfinish
	end

FlamethrowerHit:
	createsprite gSlidingFlameSpriteTemplate, ANIM_TARGET, 2, -32, 16, 48, 30, 160, 0
	delay 16
	createsprite gSlidingFlameSpriteTemplate, ANIM_TARGET, 2, -32, 16, 48, 30, 160, 0
	createsprite gSlidingFlameSpriteTemplate, ANIM_TARGET, 2, -32, 0, 48, 30, 160, 0
	delay 16
	createsprite gSlidingFlameSpriteTemplate, ANIM_TARGET, 2, -32, 16, 48, 30, 160, 0
	createsprite gSlidingFlameSpriteTemplate, ANIM_TARGET, 2, -32, 0, 48, 30, 160, 0
	createsprite gSlidingFlameSpriteTemplate, ANIM_TARGET, 2, -32, -16, 48, 30, 160, 0
	return

FlamethrowerSpray:
	createsprite gFlamethrowerSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 5
	createsprite gFlamethrowerSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 5
	createsprite gFlamethrowerSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 5
	createsprite gFlamethrowerSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 5
	createsprite gFlamethrowerSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 5
	createsprite gFlamethrowerSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	return

Move_RAIN_DANCE:
	end

Move_BITE:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_DOUBLE_TEAM, SOUND_PAN_ATTACKER
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, ANIM_TARGET, 2
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 8, ANIM_TARGET, 2
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_CRUNCH:
	end

Move_CLAMP:
	loadspritegfx ANIM_TAG_CUT
	loadspritegfx ANIM_TAG_TENDRILS
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_VICEGRIP, SOUND_PAN_TARGET
	createsprite gViceGripSpriteTemplate, ANIM_ATTACKER, 2, 0
	createsprite gViceGripSpriteTemplate, ANIM_ATTACKER, 2, 1
	delay 25
	createsprite gBindTendrilsSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 1, 0
	delay 10
	createsprite gBindTendrilsSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 1, 0
	delay 25
	createsprite gBindTendrilsSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 1, 0
	delay 10
	createsprite gBindTendrilsSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 1, 0
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_ICE_BEAM:
	loadspritegfx ANIM_TAG_ICE_CRYSTALS
	loadspritegfx ANIM_TAG_RAINBOW_RINGS
	playsewithpan SE_M_BUBBLE_BEAM, SOUND_PAN_ATTACKER
	createsprite gAuroraBeamOrbSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 1
	call AuroraBeamCreateTube
	waitforvisualfinish
	call IceCrystalWallEffect
	delay 32
	clearmonbg ANIM_TARGET
	end

IceBeamCreateCrystals:
	createsprite gIceBeamOuterCrystalSpriteTemplate, ANIM_ATTACKER, 2, 20, 12, 0, 12, 20
	createsprite gIceBeamOuterCrystalSpriteTemplate, ANIM_ATTACKER, 2, 20, -12, 0, -12, 20
	createsprite gIceBeamInnerCrystalSpriteTemplate, ANIM_ATTACKER, 2, 20, 0, 0, 0, 11
	delay 1
	return

Move_WITHDRAW:
	loadspritegfx ANIM_TAG_RED_BALL
	playsewithpan SE_M_HEADBUTT, SOUND_PAN_ATTACKER
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 64, 0, 20
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 0, 4, RGB(31, 31, 25)
	delay 8
	invisible ANIM_ATTACKER
	waitforvisualfinish
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2, -16,  8, 4, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2, -16,  0, 3, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2,  -8,  0, 1, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2,   0,  0, 1, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2,   8,  0, 1, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2,  16,  0, 0, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2,  16,  8, 2, 16, ANIM_ATTACKER
	waitforvisualfinish
	delay 4
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2, -16,  8, 4, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2, -16,  0, 3, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2,  -8,  0, 1, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2,   0,  0, 1, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2,   8,  0, 1, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2,  16,  0, 0, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2,  16,  8, 2, 16, ANIM_ATTACKER
	waitforvisualfinish
	delay 4
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2, -16,  8, 4, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2, -16,  0, 3, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2,  -8,  0, 1, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2,   0,  0, 1, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2,   8,  0, 1, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2,  16,  0, 0, 16, ANIM_ATTACKER
	createsprite gWithdrawSpriteTemplate, ANIM_ATTACKER, 2,  16,  8, 2, 16, ANIM_ATTACKER
	waitforvisualfinish
	visible ANIM_ATTACKER
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_ATTACKER, 0, 0, 0, 0
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 0, 4, RGB(31, 31, 31)
	waitforvisualfinish
	end

Move_AURORA_BEAM:
	loadspritegfx ANIM_TAG_RAINBOW_RINGS
	playsewithpan SE_M_BUBBLE_BEAM, SOUND_PAN_ATTACKER
	createsprite gAuroraBeamOrbSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 1
	call AuroraBeamCreateTube
	waitforvisualfinish
	end

AuroraBeamCreateTube:
	createsprite gAuroraBeamTubeSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 1
	createsprite gAuroraBeamTubeSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 1
	createsprite gAuroraBeamTubeSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 1
	createsprite gAuroraBeamTubeSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 1
	createsprite gAuroraBeamTubeSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 1
	createsprite gAuroraBeamTubeSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 1
	createsprite gAuroraBeamTubeSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 1
	createsprite gAuroraBeamTubeSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 1
	createsprite gAuroraBeamTubeSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	return

Move_SOLARBEAM:
	loadspritegfx ANIM_TAG_ORBS
	loadspritegfx ANIM_TAG_RAINBOW_RINGS
	choosetwoturnanim SolarBeamSetUp, SolarBeamUnleash

SolarBeamEnd:
	waitforvisualfinish
	end

SolarBeamSetUp:
	monbg ANIM_ATK_PARTNER
	setalpha 12, 8
	createvisualtask AnimTask_BlendColorCycle, 2, F_PAL_ATTACKER, 1, 4, 0, 11, RGB(31, 31, 11)
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	waitforvisualfinish
	clearmonbg ANIM_ATK_PARTNER
	blendoff
	goto SolarBeamEnd

SolarBeamUnleash:
	createsprite gAuroraBeamOrbSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 1
	call AuroraBeamCreateTube
	goto SolarBeamEnd

Move_BLIZZARD:
	loadspritegfx ANIM_TAG_ICE_CRYSTALS

	createsprite gBlizzardIceFallingSpriteTemplate, ANIM_TARGET, 2, -72, -64, -24, 24, 20, ANIM_TARGET, 0
	delay 18
	createsprite gBlizzardIceLandedSpriteTemplate, ANIM_TARGET, 2, -24, 20, 0, 100, ANIM_TARGET, 0

	createsprite gBlizzardIceFallingSpriteTemplate, ANIM_TARGET, 2, -30, -64, 8, 24, 20, ANIM_TARGET, 0
	delay 18
	createsprite gBlizzardIceLandedSpriteTemplate, ANIM_TARGET, 2, 8, 20, 0, 80, ANIM_TARGET, 0

	createsprite gBlizzardIceFallingSpriteTemplate, ANIM_TARGET, 2, -56, -64, -8, 24, 20, ANIM_TARGET, 0
	delay 18
	createsprite gBlizzardIceLandedSpriteTemplate, ANIM_TARGET, 2, -8, 20, 0, 60, ANIM_TARGET, 0

	createsprite gBlizzardIceFallingSpriteTemplate, ANIM_TARGET, 2, -24, -64, 24, 24, 20, ANIM_TARGET, 0
	delay 18
	createsprite gBlizzardIceLandedSpriteTemplate, ANIM_TARGET, 2, 24, 20, 0, 40, ANIM_TARGET, 0

	waitforvisualfinish
	end

BlizzardContinue:
	waitforvisualfinish
	panse SE_M_BLIZZARD, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, +2, 0
	call BlizzardIceCrystals
	call BlizzardIceCrystals
	playsewithpan SE_M_BLIZZARD2, SOUND_PAN_TARGET
	waitforvisualfinish
	call IceCrystalEffectLong
	waitforvisualfinish
	end

BlizzardIceCrystals:
	createsprite gSwirlingSnowballSpriteTemplate, ANIM_ATTACKER, 40, 0, -10, 0, -10, 72, 1
	createsprite gBlizzardIceCrystalSpriteTemplate, ANIM_ATTACKER, 40, 0, 0, 0, 0, 80, 0, 0, 1
	delay 3
	createsprite gSwirlingSnowballSpriteTemplate, ANIM_ATTACKER, 40, 0, -15, 0, -15, 72, 1
	createsprite gBlizzardIceCrystalSpriteTemplate, ANIM_ATTACKER, 40, 0, -10, 0, -10, 80, 0, 0, 1
	delay 3
	createsprite gSwirlingSnowballSpriteTemplate, ANIM_ATTACKER, 40, 0, -5, 0, -5, 72, 1
	createsprite gBlizzardIceCrystalSpriteTemplate, ANIM_ATTACKER, 40, 0, 10, 0, 10, 80, 0, 0, 1
	delay 3
	createsprite gSwirlingSnowballSpriteTemplate, ANIM_ATTACKER, 40, 0, -10, 0, -10, 72, 1
	createsprite gBlizzardIceCrystalSpriteTemplate, ANIM_ATTACKER, 40, 0, -20, 0, -20, 80, 0, 0, 1
	delay 3
	createsprite gSwirlingSnowballSpriteTemplate, ANIM_ATTACKER, 40, 0, -20, 0, -20, 72, 1
	createsprite gBlizzardIceCrystalSpriteTemplate, ANIM_ATTACKER, 40, 0, 15, 0, 15, 80, 0, 0, 1
	delay 3
	createsprite gSwirlingSnowballSpriteTemplate, ANIM_ATTACKER, 40, 0, -15, 0, -15, 72, 1
	createsprite gBlizzardIceCrystalSpriteTemplate, ANIM_ATTACKER, 40, 0, -20, 0, -20, 80, 0, 0, 1
	delay 3
	createsprite gSwirlingSnowballSpriteTemplate, ANIM_ATTACKER, 40, 0, -25, 0, -25, 72, 1
	createsprite gBlizzardIceCrystalSpriteTemplate, ANIM_ATTACKER, 40, 0, 20, 0, 20, 80, 0, 0, 1
	delay 3
	return

BlizzardAgainstPlayer:
	fadetobg BG_HIGHSPEED_PLAYER
	goto BlizzardContinue

Move_POWDER_SNOW:
	end

Move_HYDRO_PUMP:
	loadspritegfx ANIM_TAG_WATER_COLUMN
	panse SE_M_HYDRO_PUMP, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, +2, 0
	createsprite gSurfGeyserTopSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -64, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -48, 32, 0, 0
	waitforvisualfinish
	createsprite gSurfGeyserTopSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -64, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -48, 32, 0, 0
	waitforvisualfinish
	delay 8
	panse SE_M_HYDRO_PUMP, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, +2, 0
	createsprite gSurfGeyserTopSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -64, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -48, 32, 0, 0
	waitforvisualfinish
	createsprite gSurfGeyserTopSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -64, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -48, 32, 0, 0
	waitforvisualfinish
	end

HydroPumpBeams:
	createsprite gHydroPumpOrbSpriteTemplate, ANIM_ATTACKER, 3, 10, 10, 0, 16
	createsprite gHydroPumpOrbSpriteTemplate, ANIM_ATTACKER, 3, 10, 10, 0, -16
	delay 1
	createsprite gHydroPumpOrbSpriteTemplate, ANIM_ATTACKER, 3, 10, 10, 0, 16
	createsprite gHydroPumpOrbSpriteTemplate, ANIM_ATTACKER, 3, 10, 10, 0, -16
	delay 1
	return

HydroPumpHitSplats	:
	createsprite gWaterHitSplatSpriteTemplate, ANIM_ATTACKER, 4, 0, 15, ANIM_TARGET, 1
	createsprite gWaterHitSplatSpriteTemplate, ANIM_ATTACKER, 4, 0, -15, ANIM_TARGET, 1
	return

Move_SIGNAL_BEAM:
	end

Move_ABSORB:
	loadspritegfx ANIM_TAG_ORBS
	monbg ANIM_DEF_PARTNER
	splitbgprio_foes ANIM_TARGET
	setalpha 12, 8
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 0, 4, RGB(13, 31, 12)
	playsewithpan SE_M_ABSORB, SOUND_PAN_TARGET
	call AbsorbEffect
	delay 98
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 5, 5, 1
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 4, 0, RGB(13, 31, 12)
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	blendoff
	end

AbsorbEffect:
	createsprite gOrbCombineSpriteTemplate, ANIM_TARGET, 2, -24, -24, 24, ANIM_TARGET
	createsprite gOrbCombineSpriteTemplate, ANIM_TARGET, 2,  24, -24, 24, ANIM_TARGET
	createsprite gOrbCombineSpriteTemplate, ANIM_TARGET, 2, -24,  24, 24, ANIM_TARGET
	createsprite gOrbCombineSpriteTemplate, ANIM_TARGET, 2,  24,  24, 24, ANIM_TARGET
	delay 22
	playsewithpan SE_M_CRABHAMMER, SOUND_PAN_TARGET
	createsprite gOrbProjectileReversedSpriteTemplate, ANIM_ATTACKER, 2, 108, -40, -108, 40, -30, 76, ANIM_ATTACKER, 0
	return

Move_MEGA_DRAIN:
	loadspritegfx ANIM_TAG_ORBS
	monbg ANIM_DEF_PARTNER
	splitbgprio_foes ANIM_TARGET
	setalpha 12, 8
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 0, 4, RGB(13, 31, 12)
	playsewithpan SE_M_ABSORB, SOUND_PAN_TARGET
	call AbsorbEffect
	delay 98
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 5, 5, 1
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 4, 0, RGB(13, 31, 12)
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	blendoff
	end

MegaDrainAbsorbEffect:
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 0, 5, 8, 26
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 5, -18, -20, 35
	delay 4
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 10, -5, -8, 26
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, -10, 20, 20, 39
	delay 4
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, -5, 15, 16, 33
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 10, -5, -8, 26
	delay 4
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 0, -15, -16, 36
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 0, 5, 8, 26
	delay 4
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 0, 5, 8, 26
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 0, -15, -16, 36
	delay 4
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 10, -5, -8, 26
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, -5, 15, 16, 33
	delay 4
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, -10, 20, 20, 39
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 10, -5, -8, 26
	delay 4
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 0, 5, 8, 26
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 5, -18, -20, 35
	delay 4
	return

Move_GIGA_DRAIN:
	end

Move_LEECH_LIFE:
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_ORBS
	monbg ANIM_TARGET
	monbg ANIM_DEF_PARTNER
	splitbgprio_foes ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_ABSORB, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, ANIM_TARGET, 2
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 8, ANIM_TARGET, 2
	delay 1
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 0, 4, RGB(25, 25, 25)
	waitforvisualfinish
	call AbsorbEffect
	delay 98
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 5, 5, 1
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 4, 0, RGB(25, 25, 25)
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	blendoff
	end

Move_SYNTHESIS:
	end

Move_TOXIC:
	loadspritegfx ANIM_TAG_SPARKLE_6
	loadspritegfx ANIM_TAG_POISON_BUBBLE
	monbg ANIM_TARGET
	splitbgprio_all
	delay 0
	createvisualtask AnimTask_BlendBattleAnimPalExclude, 10, ANIM_TARGET, 0, 0, 4, RGB_BLACK
	createvisualtask AnimTask_GetTargetSide, 2
	fadetobg BG_HIGHSPEED_PLAYER
	waitbgfadeout
	createvisualtask AnimTask_StartSlidingBg, 5, 1600, 0, 0, -1
	@playsewithpan SE_M_GUST, SOUND_PAN_TARGET
	delay 100
	clearmonbg ANIM_TARGET
	delay 0
	restorebg
	waitbgfadeout
	createvisualtask AnimTask_BlendBattleAnimPalExclude, 10, ANIM_TARGET, 0, 4, 0, RGB_BLACK
	setarg 7, 0xFFFF
	waitbgfadein
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_ATTACKER
	createsprite gSludgeSplatSpriteTemplate, ANIM_TARGET, 13, 0, 0
	createsprite gAcidPoisonDropletSpriteTemplate, ANIM_TARGET, 2, -4, 8, 0, 6, 16
	playsewithpan SE_M_BUBBLE, SOUND_PAN_TARGET
	delay 10
	createsprite gAcidPoisonDropletSpriteTemplate, ANIM_TARGET, 2, 4, 8, 0, 6, 16
	playsewithpan SE_M_BUBBLE, SOUND_PAN_TARGET
	delay 10
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

ToxicBubbles:
	createsprite gToxicBubbleSpriteTemplate, ANIM_TARGET, 2, -24, 16, 1, 1
	playsewithpan SE_M_TOXIC, SOUND_PAN_TARGET
	delay 15
	createsprite gToxicBubbleSpriteTemplate, ANIM_TARGET, 2, 8, 16, 1, 1
	playsewithpan SE_M_TOXIC, SOUND_PAN_TARGET
	delay 15
	createsprite gToxicBubbleSpriteTemplate, ANIM_TARGET, 2, -8, 16, 1, 1
	playsewithpan SE_M_TOXIC, SOUND_PAN_TARGET
	delay 15
	createsprite gToxicBubbleSpriteTemplate, ANIM_TARGET, 2, 24, 16, 1, 1
	playsewithpan SE_M_TOXIC, SOUND_PAN_TARGET
	delay 15
	return

Move_SLUDGE:
	loadspritegfx ANIM_TAG_POISON_BUBBLE
	monbg ANIM_DEF_PARTNER
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_ATTACKER
	createsprite gSludgeProjectileSpriteTemplate, ANIM_TARGET, 2, 20, 0, 0, 0, -30, 64, ANIM_ATTACKER, 0
	delay 62
	createsprite gSludgeSplatSpriteTemplate, ANIM_TARGET, 13, 0, 0
	createsprite gAcidPoisonDropletSpriteTemplate, ANIM_TARGET, 2, -4, 8, 0, 6, 16
	playsewithpan SE_M_BUBBLE, SOUND_PAN_TARGET
	delay 10
	createsprite gAcidPoisonDropletSpriteTemplate, ANIM_TARGET, 2, 4, 8, 0, 6, 16
	playsewithpan SE_M_BUBBLE, SOUND_PAN_TARGET
	delay 10
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	end

Move_SLUDGE_BOMB:
	end

Move_ACID:
	loadspritegfx ANIM_TAG_POISON_BUBBLE
	monbg ANIM_DEF_PARTNER
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_ATTACKER
	createsprite gSludgeProjectileSpriteTemplate, ANIM_TARGET, 2, 20, 0, 0, 0, -30, 64, ANIM_ATTACKER, 0
	delay 62
	createsprite gSludgeSplatSpriteTemplate, ANIM_TARGET, 13, 0, 0
	createsprite gAcidPoisonDropletSpriteTemplate, ANIM_TARGET, 2, -4, 8, 0, 6, 16
	playsewithpan SE_M_BUBBLE, SOUND_PAN_TARGET
	delay 10
	createsprite gAcidPoisonDropletSpriteTemplate, ANIM_TARGET, 2, 4, 8, 0, 6, 16
	playsewithpan SE_M_BUBBLE, SOUND_PAN_TARGET
	delay 10
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	end

Move_BONEMERANG:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_DOUBLE_TEAM, SOUND_PAN_ATTACKER
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, ANIM_TARGET, 2
	delay 4
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	delay 4
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	delay 50
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_BONE_CLUB:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_DOUBLE_TEAM, SOUND_PAN_ATTACKER
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, 0, ANIM_TARGET, 2
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_BONE_RUSH:
	end

Move_SPIKES:
	end

Move_MEGAHORN:
	end

Move_GUST:
	loadspritegfx ANIM_TAG_GUST
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	playsewithpan SE_M_GUST, SOUND_PAN_TARGET
	createsprite gGustTornadoSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 32, 257
	playsewithpan SE_M_GUST2, SOUND_PAN_TARGET
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, ANIM_TARGET, 2
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 8, ANIM_TARGET, 2
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_WING_ATTACK:
	loadspritegfx ANIM_TAG_IMPACT
	setalpha 12, 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 4, 0, 7, 1
	waitforvisualfinish
	end

Move_PECK:
	loadspritegfx ANIM_TAG_IMPACT
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, -8, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 12, 12, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 4, 0, 6, 1
	waitforvisualfinish
	end

Move_AEROBLAST:
	end

AeroblastBeam:
	playsewithpan SE_M_JUMP_KICK, SOUND_PAN_ATTACKER
	createsprite gAirWaveCrescentSpriteTemplate, ANIM_ATTACKER, 2, 14, -12, 0, -12, 15, 0, 0
	createsprite gAirWaveCrescentSpriteTemplate, ANIM_ATTACKER, 2, 26, 8, 12, 8, 15, 0, 0
	delay 3
	playsewithpan SE_M_JUMP_KICK, SOUND_PAN_ATTACKER
	createsprite gAirWaveCrescentSpriteTemplate, ANIM_ATTACKER, 2, 14, -12, 0, -12, 15, 1, 0
	createsprite gAirWaveCrescentSpriteTemplate, ANIM_ATTACKER, 2, 26, 8, 12, 8, 15, 1, 0
	delay 3
	playsewithpan SE_M_JUMP_KICK, SOUND_PAN_ATTACKER
	createsprite gAirWaveCrescentSpriteTemplate, ANIM_ATTACKER, 2, 14, -12, 0, -12, 15, 2, 0
	createsprite gAirWaveCrescentSpriteTemplate, ANIM_ATTACKER, 2, 26, 8, 12, 8, 15, 2, 0
	delay 3
	playsewithpan SE_M_JUMP_KICK, SOUND_PAN_ATTACKER
	createsprite gAirWaveCrescentSpriteTemplate, ANIM_ATTACKER, 2, 14, -12, 0, -12, 15, 3, 0
	createsprite gAirWaveCrescentSpriteTemplate, ANIM_ATTACKER, 2, 26, 8, 12, 8, 15, 3, 0
	delay 3
	return

Move_WATER_GUN:
	loadspritegfx ANIM_TAG_WATER_DROPLET
	createsprite gWaterGunProjectileSpriteTemplate, ANIM_TARGET, 2, -16, -48, 0, 6, 82
	createsprite gWaterGunProjectileSpriteTemplate, ANIM_TARGET, 2,   0, -32, 0, 6, 64
	createsprite gWaterGunProjectileSpriteTemplate, ANIM_TARGET, 2,  16, -48, 0, 6, 82
	delay 63
	createsprite gWaterGunSplashSpriteTemplate, ANIM_TARGET, 3,   0, 32, ANIM_TARGET, 1, 16
	delay 16
	createsprite gWaterGunSplashSpriteTemplate, ANIM_TARGET, 3, -16, 32, ANIM_TARGET, 1, 16
	createsprite gWaterGunSplashSpriteTemplate, ANIM_TARGET, 3,  16, 32, ANIM_TARGET, 1, 16
	waitforvisualfinish
	end

Move_CRABHAMMER:
	loadspritegfx ANIM_TAG_CUT
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_VICEGRIP, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 1
	delay 10
	createsprite gViceGripSpriteTemplate, ANIM_ATTACKER, 2, 0
	createsprite gViceGripSpriteTemplate, ANIM_ATTACKER, 2, 1
	playsewithpan SE_M_BITE, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_SURF:
	loadspritegfx ANIM_TAG_SPARKLE_6
	loadspritegfx ANIM_TAG_WATER_COLUMN
	monbg ANIM_DEF_PARTNER
	splitbgprio_all
	delay 0
	createvisualtask AnimTask_BlendBattleAnimPalExclude, 10, ANIM_TARGET, 0, 0, 4, RGB_BLACK
	createvisualtask AnimTask_GetTargetSide, 2
	fadetobg BG_HIGHSPEED_PLAYER
	waitbgfadeout
	createvisualtask AnimTask_StartSlidingBg, 5, 1600, 0, 0, -1
	delay 100
	clearmonbg ANIM_DEF_PARTNER
	delay 0
	restorebg
	waitbgfadeout
	createvisualtask AnimTask_BlendBattleAnimPalExclude, 10, ANIM_TARGET, 0, 4, 0, RGB_BLACK
	setarg 7, 0xFFFF
	waitbgfadein
	createsprite gSurfGeyserTopSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -64, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, -8, 32, ANIM_TARGET, -48, 32, 0, 0
	waitforvisualfinish
	createsprite gSurfGeyserTopSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -64, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -48, 32, 0, 0
	delay 6
	createsprite gSurfGeyserBottomSpriteTemplate, ANIM_TARGET, 2, 8, 32, ANIM_TARGET, -48, 32, 0, 0
	waitforvisualfinish
	end

Move_FLAMETHROWER:
	loadspritegfx ANIM_TAG_FIRE
	playsewithpan SE_M_DRAGON_RAGE, SOUND_PAN_ATTACKER
	call FlamethrowerSpray
	waitforvisualfinish
	createsprite gSlidingFlameSpriteTemplate, ANIM_TARGET, 2, -32, 16, 48, 30, 160, 0
	delay 16
	createsprite gSlidingFlameSpriteTemplate, ANIM_TARGET, 2, -32, 16, 48, 30, 160, 0
	createsprite gSlidingFlameSpriteTemplate, ANIM_TARGET, 2, -32, 0, 48, 30, 160, 0
	waitforvisualfinish
	end

FlamethrowerCreateFlames:
	createsprite gFlamethrowerFlameSpriteTemplate, ANIM_ATTACKER, 3, 10, 10, 0, 16
	delay 2
	createsprite gFlamethrowerFlameSpriteTemplate, ANIM_ATTACKER, 3, 10, 10, 0, 16
	delay 2
	return

@ Also used by Sandstorm weather
Move_SANDSTORM:
	end

Move_WHIRLPOOL:
	end

Move_FLY:
	loadspritegfx ANIM_TAG_ORBS
	loadspritegfx ANIM_TAG_IMPACT
	choosetwoturnanim FlySetUp, FlyUnleash

FlyEnd:
	waitforvisualfinish
	end

FlySetUp:
	playsewithpan SE_M_FLY, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_TeleportFlySquish, 2, 0
	waitforvisualfinish
	invisible ANIM_ATTACKER
	createsprite gOrbRisingSpriteTemplate, ANIM_ATTACKER, 2, -4, -16, ANIM_ATTACKER, -64, 16, 0, 0
	createsprite gOrbRisingSpriteTemplate, ANIM_ATTACKER, 2, -4,  -8, ANIM_ATTACKER, -64, 16, 0, 0
	createsprite gOrbRisingSpriteTemplate, ANIM_ATTACKER, 2, -4,   0, ANIM_ATTACKER, -64, 16, 0, 0
	createsprite gOrbRisingSpriteTemplate, ANIM_ATTACKER, 2, -4,   8, ANIM_ATTACKER, -64, 16, 0, 0
	createsprite gOrbRisingSpriteTemplate, ANIM_ATTACKER, 2, -4,  16, ANIM_ATTACKER, -64, 16, 0, 0
	waitforvisualfinish
	delay 20
	goto FlyEnd

FlyUnleash:
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_JUMP_KICK, SOUND_PAN_TARGET
	delay 4
	loopsewithpan SE_M_TAKE_DOWN, SOUND_PAN_ATTACKER, 9, 2
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	delay 8
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	goto FlyEnd

Move_BOUNCE:
	end

Move_KARATE_CHOP:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_DOUBLE_TEAM, SOUND_PAN_ATTACKER
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -12, ANIM_TARGET, 2
	playsewithpan SE_M_MEGA_KICK2, SOUND_PAN_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -4, ANIM_TARGET, 2
	playsewithpan SE_M_MEGA_KICK2, SOUND_PAN_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, 4, ANIM_TARGET, 2
	playsewithpan SE_M_MEGA_KICK2, SOUND_PAN_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, 12, ANIM_TARGET, 2
	playsewithpan SE_M_MEGA_KICK2, SOUND_PAN_TARGET
	delay 5
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_CROSS_CHOP:
	end

Move_JUMP_KICK:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_JUMP_KICK, SOUND_PAN_TARGET
	delay 4
	loopsewithpan SE_M_TAKE_DOWN, SOUND_PAN_ATTACKER, 9, 2
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	delay 8
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_HI_JUMP_KICK:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_JUMP_KICK, SOUND_PAN_TARGET
	delay 4
	loopsewithpan SE_M_TAKE_DOWN, SOUND_PAN_ATTACKER, 9, 2
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	delay 8
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_DOUBLE_KICK:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_DEF_PARTNER
	setalpha 12, 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, -8, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 12, 12, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, -8, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 12, 12, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 4, 0, 6, 1
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	blendoff
	end

Move_TRIPLE_KICK:
	end

Move_DYNAMIC_PUNCH:
	end

Move_COUNTER:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, -96, 0, 0, 15
	delay 15
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	delay 8
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 2
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_VITAL_THROW:
	end

Move_ROCK_SMASH:
	end

Move_SUBMISSION:
	loadspritegfx ANIM_TAG_IMPACT
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, -96, 0, 0, 15
	delay 15
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, -8, ANIM_TARGET, 2
	playsewithpan SE_M_DOUBLE_SLAP, SOUND_PAN_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, 8, ANIM_TARGET, 2
	playsewithpan SE_M_DOUBLE_SLAP, SOUND_PAN_TARGET
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, 0, 1
	waitforvisualfinish
	end

SubmissionHit:
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 3, 0, -12, ANIM_TARGET, 1
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 3, -12, 8, ANIM_TARGET, 1
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 3, 12, 0, ANIM_TARGET, 1
	delay 8
	return

@ Also used by Sunny weather
Move_SUNNY_DAY:
	end

SunnyDayLightRay:
	createsprite gSunlightRaySpriteTemplate, ANIM_ATTACKER, 40
	delay 6
	return

Move_COTTON_SPORE:
	end

CreateCottonSpores:
	createsprite gSporeParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, -20, 85, 80, 0
	delay 12
	createsprite gSporeParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, -10, 170, 80, 0
	delay 12
	createsprite gSporeParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, -15, 0, 80, 0
	delay 12
	return

Move_SPORE:
	loadspritegfx ANIM_TAG_ORBS
	call PowderParticlesPrefab
	waitforvisualfinish
	end

Move_PETAL_DANCE:
	loadspritegfx ANIM_TAG_FIRE
	loadspritegfx ANIM_TAG_IMPACT
	playsewithpan SE_M_PETAL_DANCE, SOUND_PAN_ATTACKER
	call PetalDanceFoe
	call PetalDancePlayer
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	playsewithpan SE_M_COMET_PUNCH, SOUND_PAN_TARGET
	delay 8
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	waitforvisualfinish
	end

PetalDanceFoe:
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, -48, -10, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, -41, 15, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, -30, 0, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, -13, 22, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, 0, -8, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, 11, 0, 80, 0, ANIM_TARGET
	delay 8
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, 48, -10, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, -41, -15, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, 30, 0, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, -13, -22, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, 0, -8, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, 11, 0, 80, 0, ANIM_TARGET
	delay 8
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, 48, 10, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, 41, -15, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, 30, 0, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, 13, -22, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, 0, 8, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, -11, 0, 80, 0, ANIM_TARGET
	delay 8
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, -48, 10, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, 41, 15, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, -30, 0, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, 13, 22, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, 0, 8, 80, 0, ANIM_TARGET
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_TARGET, 2, 1, -11, 0, 80, 0, ANIM_TARGET
	return

PetalDancePlayer:
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, -48, -10, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, -41, 15, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, -30, 0, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, -13, 22, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, -8, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, 11, 0, 80, 0, ANIM_ATTACKER
	delay 8
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, 48, -10, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, -41, -15, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, 30, 0, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, -13, -22, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, -8, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, 11, 0, 80, 0, ANIM_ATTACKER
	delay 8
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, 48, 10, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, 41, -15, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, 30, 0, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, 13, -22, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 8, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, -11, 0, 80, 0, ANIM_ATTACKER
	delay 8
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, -48, 10, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, 41, 15, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, -30, 0, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, 13, 22, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 8, 80, 0, ANIM_ATTACKER
	createsprite gPetalDanceParticleSpriteTemplate, ANIM_ATTACKER, 2, 0, -11, 0, 80, 0, ANIM_ATTACKER
	return

Move_RAZOR_LEAF:
	loadspritegfx ANIM_TAG_CUT
	loadspritegfx ANIM_TAG_LEAF
	loadspritegfx ANIM_TAG_RAZOR_LEAF
	loopsewithpan SE_M_POISON_POWDER, SOUND_PAN_ATTACKER, 10, 3
	createsprite gRazorLeafParticleSpriteTemplate, ANIM_TARGET, 2, -2, -3, 13
	delay 10
	createsprite gRazorLeafParticleSpriteTemplate, ANIM_TARGET, 2, 0, -2, 12
	delay 10
	createsprite gRazorLeafParticleSpriteTemplate, ANIM_TARGET, 2, 2, -1, 11
	waitforvisualfinish
	playsewithpan SE_M_CUT, SOUND_PAN_TARGET
	createsprite gCuttingSliceSpriteTemplate, ANIM_ATTACKER, 2, 56, -48, 0
	delay 5
	createvisualtask AnimTask_ShakeMon, 2, ANIM_TARGET, 0, 3, 10, 1
	waitforvisualfinish
	end

Move_NATURE_POWER:
	@ No actual animation, uses the animation of a move from sNaturePowerMoves instead

Move_ANCIENT_POWER:
	end

Move_OCTAZOOKA:
	end

Move_MIST:
	loadspritegfx ANIM_TAG_SPARKLE_6
	monbg ANIM_DEF_PARTNER
	splitbgprio_all
	delay 0
	createvisualtask AnimTask_BlendBattleAnimPalExclude, 10, ANIM_TARGET, 0, 0, 4, RGB_BLACK
	createvisualtask AnimTask_GetTargetSide, 2
	fadetobg BG_HIGHSPEED_PLAYER
	waitbgfadeout
	createvisualtask AnimTask_StartSlidingBg, 5, 1600, 0, 0, -1
	@playsewithpan SE_M_GUST, SOUND_PAN_TARGET
	delay 100
	clearmonbg ANIM_DEF_PARTNER
	delay 0
	restorebg
	waitbgfadeout
	createvisualtask AnimTask_BlendBattleAnimPalExclude, 10, ANIM_TARGET, 0, 4, 0, RGB_BLACK
	setarg 7, 0xFFFF
	waitbgfadein
	end

MistCloud:
	createsprite gMistCloudSpriteTemplate, ANIM_ATTACKER, 2, 0, -24, 48, 240, 0, 1
	delay 7
	return

Move_HAZE:
	loadspritegfx ANIM_TAG_SPARKLE_6
	monbg ANIM_DEF_PARTNER
	splitbgprio_all
	delay 0
	createvisualtask AnimTask_BlendBattleAnimPalExclude, 10, ANIM_TARGET, 0, 0, 4, RGB_BLACK
	createvisualtask AnimTask_GetTargetSide, 2
	fadetobg BG_HIGHSPEED_PLAYER
	waitbgfadeout
	createvisualtask AnimTask_StartSlidingBg, 5, 1600, 0, 0, -1
	@playsewithpan SE_M_GUST, SOUND_PAN_TARGET
	delay 100
	clearmonbg ANIM_DEF_PARTNER
	delay 0
	restorebg
	waitbgfadeout
	createvisualtask AnimTask_BlendBattleAnimPalExclude, 10, ANIM_TARGET, 0, 4, 0, RGB_BLACK
	setarg 7, 0xFFFF
	waitbgfadein
	end

Move_FIRE_PUNCH:
	loadspritegfx ANIM_TAG_FIRE
	loadspritegfx ANIM_TAG_IMPACT
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	delay 16
	loopsewithpan SE_M_EMBER, SOUND_PAN_ATTACKER, 5, 2
	createsprite gLargeEmberSpriteTemplate, ANIM_TARGET, 2, -16, 16, 0, 30, ANIM_TARGET, 0
	playsewithpan SE_M_FLAME_WHEEL, SOUND_PAN_TARGET
	delay 30
	createsprite gLargeEmberSpriteTemplate, ANIM_TARGET, 2, 16, 16, 0, 30, ANIM_TARGET, 0
	playsewithpan SE_M_FLAME_WHEEL, SOUND_PAN_TARGET
	delay 30
	createsprite gLargeEmberSpriteTemplate, ANIM_TARGET, 2, 0, 16, 0, 30, ANIM_TARGET, 0
	playsewithpan SE_M_FLAME_WHEEL, SOUND_PAN_TARGET
	waitforvisualfinish
	end

FireSpreadEffect:
	createsprite gFireSpreadSpriteTemplate, ANIM_TARGET, 1, 0, 10, 192, 176, 40
	createsprite gFireSpreadSpriteTemplate, ANIM_TARGET, 1, 0, 10, -192, 240, 40
	createsprite gFireSpreadSpriteTemplate, ANIM_TARGET, 1, 0, 10, 192, -160, 40
	createsprite gFireSpreadSpriteTemplate, ANIM_TARGET, 1, 0, 10, -192, -112, 40
	createsprite gFireSpreadSpriteTemplate, ANIM_TARGET, 1, 0, 10, 160, 48, 40
	createsprite gFireSpreadSpriteTemplate, ANIM_TARGET, 1, 0, 10, -224, -32, 40
	createsprite gFireSpreadSpriteTemplate, ANIM_TARGET, 1, 0, 10, 112, -128, 40
	return

Move_LEER:
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	delay 4
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	delay 4
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	end

Move_DREAM_EATER:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_ATTACKER
	setalpha 12, 8
	call BlackFlashEffect
	delay 8
	call BlackFlashEffect
	delay 8
	call BlackFlashEffect
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 16, ANIM_TARGET, 2
	clearmonbg ANIM_TARGET
	waitforvisualfinish
	end

BlackFlashEffect:
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	delay 8
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	return

DreamEaterAbsorb:
	playsewithpan SE_M_SWAGGER, SOUND_PAN_TARGET
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 0, 5, 8, 26
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 5, -18, -40, 35
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, -10, 20, 20, 39
	delay 4
	playsewithpan SE_M_SWAGGER, SOUND_PAN_TARGET
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 0, 5, 28, 26
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 10, -5, -8, 26
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, -10, 20, 40, 39
	delay 4
	playsewithpan SE_M_SWAGGER, SOUND_PAN_TARGET
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 10, -5, -8, 26
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, -5, 15, 16, 33
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 10, -5, -32, 26
	delay 4
	playsewithpan SE_M_SWAGGER, SOUND_PAN_TARGET
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 0, -15, -16, 36
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 0, 5, 8, 26
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 10, -5, -8, 26
	delay 4
	playsewithpan SE_M_SWAGGER, SOUND_PAN_TARGET
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, -5, 15, 16, 33
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 0, -15, -16, 36
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 0, 5, 8, 26
	delay 4
	playsewithpan SE_M_SWAGGER, SOUND_PAN_TARGET
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 0, 5, 8, 26
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, -5, 15, 16, 33
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 10, -5, -40, 26
	delay 4
	playsewithpan SE_M_SWAGGER, SOUND_PAN_TARGET
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, -5, 15, 36, 33
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 10, -5, -8, 26
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, -10, 20, 20, 39
	delay 4
	playsewithpan SE_M_SWAGGER, SOUND_PAN_TARGET
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 0, 5, 8, 26
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 0, 5, 8, 26
	createsprite gOrbProjectileSpriteTemplate, ANIM_ATTACKER, 3, 5, -18, -20, 35
	delay 4
	return

Move_POISON_GAS:
	loadspritegfx ANIM_TAG_MUSIC_NOTES
	monbg ANIM_TARGET
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_ATTACKER
	createsprite gGasCloudSpriteTemplate, ANIM_TARGET, 2, 20, 0, 0, 0, 128, -25
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_BIND:
	loadspritegfx ANIM_TAG_TENDRILS
	monbg ANIM_TARGET
	setalpha 12, 8
	createsprite gBindTendrilsSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 1, 0
	delay 15
	createsprite gBindTendrilsSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 1, 0
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_WRAP:
	loadspritegfx ANIM_TAG_TENDRILS
	monbg ANIM_TARGET
	setalpha 12, 8
	createsprite gBindTendrilsSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 1, 0
	delay 15
	createsprite gBindTendrilsSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 1, 0
	delay 15
	createsprite gBindTendrilsSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 1, 0
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_PSYBEAM:
	loadspritegfx ANIM_TAG_RAINBOW_RINGS
	playsewithpan SE_M_BUBBLE_BEAM, SOUND_PAN_ATTACKER
	createsprite gAuroraBeamOrbSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 1
	call AuroraBeamCreateTube
	waitforvisualfinish
	loopsewithpan SE_M_SUPERSONIC, SOUND_PAN_TARGET, 10, 2
	createsprite gComplexPaletteBlendSpriteTemplate, ANIM_TARGET, 2, F_PAL_BG | F_PAL_BATTLERS, 3, 1, RGB_WHITE, 10, RGB_WHITE, 0
	delay 20
	createsprite gComplexPaletteBlendSpriteTemplate, ANIM_TARGET, 2, F_PAL_BG | F_PAL_BATTLERS, 3, 1, RGB_WHITE, 10, RGB_WHITE, 0
	delay 20
	createsprite gComplexPaletteBlendSpriteTemplate, ANIM_TARGET, 2, F_PAL_BG | F_PAL_BATTLERS, 3, 1, RGB_WHITE, 10, RGB_WHITE, 0
	waitforvisualfinish
	end

PsybeamRings:
	createsprite gGoldRingSpriteTemplate, ANIM_TARGET, 2, 16, 0, 0, 0, 13, 0
	delay 4
	return

Move_HYPNOSIS:
	playsewithpan SE_M_SUPERSONIC, SOUND_PAN_ATTACKER
	call BlackFlashEffect
	delay 8
	playsewithpan SE_M_SUPERSONIC, SOUND_PAN_ATTACKER
	call BlackFlashEffect
	delay 8
	playsewithpan SE_M_SUPERSONIC, SOUND_PAN_ATTACKER
	call BlackFlashEffect
	waitforvisualfinish
	end

HypnosisRings:
	playsewithpan SE_M_SUPERSONIC, SOUND_PAN_ATTACKER
	createsprite gGoldRingSpriteTemplate, ANIM_TARGET, 2, 0, 8, 0, 8, 27, 0
	createsprite gGoldRingSpriteTemplate, ANIM_TARGET, 2, 16, -8, 0, -8, 27, 0
	delay 6
	return

Move_PSYWAVE:
	loadspritegfx ANIM_TAG_MUSIC_NOTES
	createsoundtask SoundTask_LoopSEAdjustPanning, SE_M_TELEPORT, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 9, 0, 10
	createvisualtask AnimTask_StartSinAnimTimer, 5, 100
	createsprite gSupersonicSpriteTemplate, ANIM_TARGET, 3, 10, 10, 0, 32
	waitforvisualfinish
	end

Move_ZAP_CANNON:
	end

Move_STEEL_WING:
	end

Move_IRON_TAIL:
	end

Move_POISON_TAIL:
	end

Move_METAL_CLAW:
	end

Move_NIGHT_SHADE:
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_SUPERSONIC, SOUND_PAN_TARGET
	createsprite gComplexPaletteBlendSpriteTemplate, ANIM_TARGET, 2, F_PAL_BG | F_PAL_BATTLERS, 3, 1, RGB_WHITE, 10, RGB_WHITE, 0
	delay 20
	createsprite gComplexPaletteBlendSpriteTemplate, ANIM_TARGET, 2, F_PAL_BG | F_PAL_BATTLERS, 3, 1, RGB_WHITE, 10, RGB_WHITE, 0
	delay 20
	createsprite gComplexPaletteBlendSpriteTemplate, ANIM_TARGET, 2, F_PAL_BG | F_PAL_BATTLERS, 3, 1, RGB_WHITE, 10, RGB_WHITE, 0
	waitforvisualfinish
	createvisualtask AnimTask_BlendMonInAndOut, 5, ANIM_TARGET, RGB(27, 27, 0), 12, 1, 1
	createvisualtask AnimTask_ExtrasensoryDistortion, 5, 0
	waitforvisualfinish
	createvisualtask AnimTask_BlendMonInAndOut, 5, ANIM_TARGET, RGB(27, 27, 0), 12, 1, 1
	createvisualtask AnimTask_ExtrasensoryDistortion, 5, 1
	waitforvisualfinish
	createvisualtask AnimTask_BlendMonInAndOut, 5, ANIM_TARGET, RGB(27, 27, 0), 12, 1, 1
	createvisualtask AnimTask_ExtrasensoryDistortion, 5, 0
	waitforvisualfinish
	createvisualtask AnimTask_BlendMonInAndOut, 5, ANIM_TARGET, RGB(27, 27, 0), 12, 1, 1
	createvisualtask AnimTask_ExtrasensoryDistortion, 5, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_EGG_BOMB:
	loadspritegfx ANIM_TAG_BLACK_BALL_2
	loadspritegfx ANIM_TAG_EXPLOSION
	playsewithpan SE_M_TAIL_WHIP, SOUND_PAN_ATTACKER
	createsprite gBarrageBallSpriteTemplate, ANIM_TARGET, 2, 20, 0, 0, 0, -25, 25, ANIM_ATTACKER, 0
	waitforvisualfinish
	delay 10
	playsewithpan SE_M_SELF_DESTRUCT, SOUND_PAN_TARGET
	createsprite gExplosionSpriteTemplate, ANIM_TARGET, 4, 0, 0, 1, 0
	waitforvisualfinish
	end

Move_SHADOW_BALL:
	end

Move_LICK:
	loadspritegfx ANIM_TAG_POISON_BUBBLE
	monbg ANIM_TARGET
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_ATTACKER
	createsprite gSludgeSplatSpriteTemplate, ANIM_TARGET, 13, 0, 0
	createsprite gAcidPoisonDropletSpriteTemplate, ANIM_TARGET, 2, -4, 8, 0, 6, 16
	playsewithpan SE_M_BUBBLE, SOUND_PAN_TARGET
	delay 10
	createsprite gAcidPoisonDropletSpriteTemplate, ANIM_TARGET, 2, 4, 8, 0, 6, 16
	playsewithpan SE_M_BUBBLE, SOUND_PAN_TARGET
	delay 10
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_FOCUS_ENERGY:
	loadspritegfx ANIM_TAG_ORBS,
	splitbgprio_foes ANIM_ATTACKER
	loopsewithpan SE_M_TAKE_DOWN, SOUND_PAN_ATTACKER, 9, 2
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	waitforvisualfinish
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 2
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	waitforvisualfinish
	end

Move_BIDE:
	choosetwoturnanim BideSetUp, BideUnleash
	end

BideSetUp:
	loadspritegfx ANIM_TAG_ORBS,
	splitbgprio_foes ANIM_ATTACKER
	loopsewithpan SE_M_TAKE_DOWN, SOUND_PAN_ATTACKER, 9, 2
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 64, 16, 32, 0xFE00, 0, ANIM_ATTACKER, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 64, 16, 32, 0xFE00, 0, ANIM_ATTACKER, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 64, 16, 32, 0xFE00, 0, ANIM_ATTACKER, 0
	waitforvisualfinish
	end

BideUnleash:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	loopsewithpan SE_M_TAKE_DOWN, SOUND_PAN_ATTACKER, 9, 2
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -8, 8, ANIM_TARGET, 2
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 8, -8, ANIM_TARGET, 2
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_STRING_SHOT:
	loadspritegfx ANIM_TAG_STRING
	loadspritegfx ANIM_TAG_SPIDER_WEB
	loopsewithpan SE_M_STRING_SHOT, SOUND_PAN_ATTACKER, 9, 6
	createsprite gStringShotSpriteTemplate, ANIM_ATTACKER, 2, 32, -24, 0, 4, ANIM_ATTACKER
	waitforvisualfinish
	createsprite gStringShotSpriteTemplate, ANIM_ATTACKER, 2, 40, -16, 0, 4, ANIM_ATTACKER
	waitforvisualfinish
	createsprite gStringShotSpriteTemplate, ANIM_ATTACKER, 2, 48,  -8, 0, 4, ANIM_ATTACKER
	waitforvisualfinish
	playsewithpan SE_M_STRING_SHOT2, SOUND_PAN_TARGET
	createsprite gStringWrapSpriteTemplate, ANIM_TARGET, 2, 32, -16, -32, -16, 30, 100
	createsprite gStringWrapSpriteTemplate, ANIM_TARGET, 2, 32,   0, -32,   0, 30, 100
	createsprite gStringWrapSpriteTemplate, ANIM_TARGET, 2, 32,  16, -32,  16, 30, 100
	waitforvisualfinish
	end

StringShotThread:
	createsprite gWebThreadSpriteTemplate, ANIM_TARGET, 2, 20, 0, 512, 20, 1
	delay 1
	return

Move_SPIDER_WEB:
	end

Move_RAZOR_WIND:
	choosetwoturnanim RazorWindSetUp, RazorWindUnleash

RazorWindEnd:
	waitforvisualfinish
	end

RazorWindSetUp:
	loadspritegfx ANIM_TAG_ORBS,
	splitbgprio_foes ANIM_ATTACKER
	loopsewithpan SE_M_TAKE_DOWN, SOUND_PAN_ATTACKER, 9, 2
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 64, 16, 32, 0xFE00, 0, ANIM_ATTACKER, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 64, 16, 32, 0xFE00, 0, ANIM_ATTACKER, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 64, 16, 32, 0xFE00, 0, ANIM_ATTACKER, 0
	waitforvisualfinish
	goto RazorWindUnleash

RazorWindUnleash:
	loadspritegfx ANIM_TAG_CUT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_SCRATCH, SOUND_PAN_TARGET
	createsprite gCuttingSliceSpriteTemplate, ANIM_ATTACKER, 2, 32, -32, 0
	delay 5
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	waitforvisualfinish
	goto RazorWindEnd

Move_DISABLE:
	splitbgprio ANIM_TARGET
	playsewithpan SE_M_DETECT, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	delay 1
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	restorebg
	waitforvisualfinish
	blendoff
	end

Move_RECOVER:
	loadspritegfx ANIM_TAG_ORBS
	splitbgprio_foes ANIM_ATTACKER
	playsewithpan SE_M_LEER, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_BlendColorCycle, 2, F_PAL_ATTACKER, 0, 6, 0, 11, RGB(31, 31, 11)
	waitforvisualfinish
	loopsewithpan SE_M_TAKE_DOWN, SOUND_PAN_ATTACKER, 9, 2
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	waitforvisualfinish
	end
	

RecoverAbsorbEffect:
	createsprite gPowerAbsorptionOrbSpriteTemplate, ANIM_ATTACKER, 2, 40, -10, 13
	delay 3
	createsprite gPowerAbsorptionOrbSpriteTemplate, ANIM_ATTACKER, 2, -35, -10, 13
	delay 3
	createsprite gPowerAbsorptionOrbSpriteTemplate, ANIM_ATTACKER, 2, 15, -40, 13
	delay 3
	createsprite gPowerAbsorptionOrbSpriteTemplate, ANIM_ATTACKER, 2, -10, -32, 13
	delay 3
	createsprite gPowerAbsorptionOrbSpriteTemplate, ANIM_ATTACKER, 2, 25, -20, 13
	delay 3
	createsprite gPowerAbsorptionOrbSpriteTemplate, ANIM_ATTACKER, 2, -40, -20, 13
	delay 3
	createsprite gPowerAbsorptionOrbSpriteTemplate, ANIM_ATTACKER, 2, 5, -40, 13
	delay 3
	return

Move_MIMIC:
	loadspritegfx ANIM_TAG_ORBS
	monbg ANIM_DEF_PARTNER
	splitbgprio_foes ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_SWIFT, SOUND_PAN_ATTACKER
	call BlackSquareCombineWithReverseProjectilePrefab
	waitforvisualfinish
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	blendoff
	end

Move_CONSTRICT:
	loadspritegfx ANIM_TAG_TENDRILS
	monbg ANIM_TARGET
	setalpha 12, 8
	createsprite gBindTendrilsSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 1, 0
	delay 20
	createsprite gBindTendrilsSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 1, 0
	delay 20
	createsprite gBindTendrilsSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 1, 0
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

Move_CURSE:
	choosetwoturnanim CurseGhost, CurseStats

CurseGhost:
	end

CurseStats:
	end

CurseStats1:
	playsewithpan SE_M_DRAGON_RAGE, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_DrawFallingWhiteLinesOnAttacker, 5
	createvisualtask AnimTask_BlendColorCycle, 5, F_PAL_ATTACKER, 4, 2, 0, 10, RGB_RED
	return

Move_SOFT_BOILED:
	loadspritegfx ANIM_TAG_HORN_HIT
	loadspritegfx ANIM_TAG_ORBS
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, -48, 0, 0, 15
	waitforvisualfinish
	playsewithpan SE_M_TAIL_WHIP, SOUND_PAN_ATTACKER
	createsprite gSoftBoiledEggSpriteTemplate, ANIM_TARGET, 2, 0, 0, 0, 0
	waitforvisualfinish
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	delay 1
	createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	waitforvisualfinish
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, 0, 1
	waitforvisualfinish
	end

Move_HEAL_BELL:
	end

Move_FAKE_OUT:
	end

Move_SCARY_FACE:
	end

Move_SWEET_KISS:
	end

Move_LOVELY_KISS:
	loadspritegfx ANIM_TAG_RED_ORB
	createvisualtask SoundTask_PlayDoubleCry, 2, ANIM_ATTACKER, DOUBLE_CRY_GROWL
	createvisualtask AnimTask_StartSinAnimTimer, 5, 100
	createsprite gHeartSineWaveSpriteTemplate, ANIM_TARGET, 3, 10, 10, 0, 16
	waitforvisualfinish
	end

Move_FURY_SWIPES:
	loadspritegfx ANIM_TAG_CUT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_SCRATCH, SOUND_PAN_TARGET
	createsprite gCuttingSliceSpriteTemplate, ANIM_ATTACKER, 2, 16, -32, 0
	createsprite gCuttingSliceSpriteTemplate, ANIM_ATTACKER, 2, 32, -32, 0
	createsprite gCuttingSliceSpriteTemplate, ANIM_ATTACKER, 2, 48, -32, 0
	delay 5
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	waitforvisualfinish
	end

Move_INGRAIN:
	end

Move_PRESENT:
	end

Move_BATON_PASS:
	end

Move_PERISH_SONG:
	end

Move_SLEEP_TALK:
	end

Move_HYPER_FANG:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_DOUBLE_TEAM, SOUND_PAN_ATTACKER
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 16, 0, ANIM_TARGET, 1
	delay 4
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -16, 0, ANIM_TARGET, 1
	delay 4
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, -4, 12, ANIM_TARGET, 1
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	end

Move_TRI_ATTACK:
	loadspritegfx ANIM_TAG_TRI_ATTACK_TRIANGLE
	call BlackFlashEffect
	createsprite gTriAttackTriangleSpriteTemplate, ANIM_TARGET, 2, 16, 0, 24, -24, 60, 257
	playsewithpan SE_M_TRI_ATTACK, SOUND_PAN_ATTACKER
	waitforvisualfinish
	end

Move_WILL_O_WISP:
	end

Move_ENCORE:
	end

Move_TRICK:
	end

Move_WISH:
	end

Move_STOCKPILE:
	end

Move_SPIT_UP:
	end

Move_SWALLOW:
	end

Move_TRANSFORM:
	loadspritegfx ANIM_TAG_ORBS
	loadspritegfx ANIM_TAG_MUSIC_NOTES
	playsewithpan SE_M_TELEPORT, SOUND_PAN_ATTACKER
	call BlackSquareCombineWithReverseProjectilePrefab
	waitforvisualfinish
	call PokeBallPuffPrefab
	waitforvisualfinish
	createvisualtask AnimTask_TransformMon, 2, 0
	waitforvisualfinish
	clearmonbg ANIM_ATTACKER
	end

PokeBallPuffPrefab:
	createsprite gPokeBallPuffSpriteTemplate, ANIM_ATTACKER, 2, -8,  -8, -24, -24, 40, ANIM_ATTACKER, 0
	createsprite gPokeBallPuffSpriteTemplate, ANIM_ATTACKER, 2,  8,  -8,  24, -24, 40, ANIM_ATTACKER, 1
	createsprite gPokeBallPuffSpriteTemplate, ANIM_ATTACKER, 2, -8,   8, -24,  24, 40, ANIM_ATTACKER, 2
	createsprite gPokeBallPuffSpriteTemplate, ANIM_ATTACKER, 2,  8,   8,  24,  24, 40, ANIM_ATTACKER, 3
	return

BlackSquareCombineWithReverseProjectilePrefab:
	createsprite gSolidSquareCombineSpriteTemplate, ANIM_TARGET, 2, -24, -24, -4, -4, 24, ANIM_TARGET, 0
	createsprite gSolidSquareCombineSpriteTemplate, ANIM_TARGET, 2,  24, -24,  4, -4, 24, ANIM_TARGET, 0
	createsprite gSolidSquareCombineSpriteTemplate, ANIM_TARGET, 2, -24,  24, -4,  4, 24, ANIM_TARGET, 0
	createsprite gSolidSquareCombineSpriteTemplate, ANIM_TARGET, 2,  24,  24,  4,  4, 24, ANIM_TARGET, 0
	delay 28
	playsewithpan SE_M_BARRIER, SOUND_PAN_ATTACKER
	createsprite gSolidSquareProjectileReversedSpriteTemplate, ANIM_ATTACKER, 2, 112, -48, -108, 44, -30, 64, ANIM_ATTACKER, 0
	return

Move_MORNING_SUN:
	end

Move_SWEET_SCENT:
	loadspritegfx ANIM_TAG_PINK_PETAL
	playsewithpan SE_M_SWEET_SCENT, SOUND_PAN_ATTACKER
	createsprite gSweetScentPetalSpriteTemplate, ANIM_ATTACKER, 2, 100, 0, 100
	delay 25
	setpan 0
	call SweetScentEffect
	createsprite gSweetScentPetalSpriteTemplate, ANIM_ATTACKER, 2, 55, 0
	setpan SOUND_PAN_TARGET
	createvisualtask AnimTask_BlendColorCycle, 2, F_PAL_DEF_SIDE, 1, 5, 5, 13, RGB(31, 21, 21)
	call SweetScentEffect
	waitforvisualfinish
	end

SweetScentEffect:
	createsprite gSweetScentPetalSpriteTemplate, ANIM_ATTACKER, 2, 70, 1, 64
	delay 2
	createsprite gSweetScentPetalSpriteTemplate, ANIM_ATTACKER, 2, 60, 0, 64
	delay 5
	createsprite gSweetScentPetalSpriteTemplate, ANIM_ATTACKER, 2, 80, 1, 64
	delay 2
	createsprite gSweetScentPetalSpriteTemplate, ANIM_ATTACKER, 2, 58, 0, 120
	delay 2
	createsprite gSweetScentPetalSpriteTemplate, ANIM_ATTACKER, 2, 100, 0, 120
	delay 2
	createsprite gSweetScentPetalSpriteTemplate, ANIM_ATTACKER, 2, 90, 0, 64
	delay 2
	createsprite gSweetScentPetalSpriteTemplate, ANIM_ATTACKER, 2, 48, 0, 64
	delay 2
	createsprite gSweetScentPetalSpriteTemplate, ANIM_ATTACKER, 2, 95, 1, 80
	delay 2
	createsprite gSweetScentPetalSpriteTemplate, ANIM_ATTACKER, 2, 100, 0, 120
	delay 2
	createsprite gSweetScentPetalSpriteTemplate, ANIM_ATTACKER, 2, 75, 1, 64
	delay 2
	createsprite gSweetScentPetalSpriteTemplate, ANIM_ATTACKER, 2, 85, 0, 120
	delay 2
	return

Move_HYPER_BEAM:
	@loadspritegfx ANIM_TAG_ORBS
	loadspritegfx ANIM_TAG_RAINBOW_RINGS
	loadspritegfx ANIM_TAG_IMPACT
	@monbg ANIM_DEF_PARTNER
	@splitbgprio_foes ANIM_TARGET
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	@createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	@delay 1
	@createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	@delay 1
	@createsprite gOrbSpiralInwardSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 800, 200, 0
	waitforvisualfinish
	@clearmonbg ANIM_DEF_PARTNER
	playsewithpan SE_M_HYPER_BEAM, SOUND_PAN_ATTACKER
	createsprite gAuroraBeamOrbSpriteTemplate, ANIM_TARGET, 2, 16, 0, -16, 8, 24, 257
	delay 1
	createsoundtask SoundTask_LoopSEAdjustPanning, SE_M_HYPER_BEAM2, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 1, 15, 0, 5
	call AuroraBeamCreateTube
	waitforvisualfinish
	loopsewithpan SE_M_TAKE_DOWN, SOUND_PAN_ATTACKER, 9, 2
	createsprite gBasicHitSplatSpriteTemplate, ANIM_TARGET, 2, -8, 8, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_TARGET, 2, 0, 0, ANIM_TARGET, 2
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_TARGET, 2, 8, -8, ANIM_TARGET, 2
	delay 8
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	waitforvisualfinish
	createvisualtask AnimTask_InvertScreenColor, 2, 257, 257, 257
	end

HyperBeamOrbs:
	createsprite gHyperBeamOrbSpriteTemplate, ANIM_TARGET, 2
	createsprite gHyperBeamOrbSpriteTemplate, ANIM_TARGET, 2
	delay 1
	return

Move_FLATTER:
	end

Move_ROLE_PLAY:
	end

Move_REFRESH:
	end

Move_BLAZE_KICK:
	end

Move_HYPER_VOICE:
	end

Move_SAND_TOMB:
	end

SandTombSwirlingDirt:
	createsprite gSwirlingDirtSpriteTemplate, ANIM_TARGET, 2, 0, 32, 528, 30, 10, 50, ANIM_TARGET
	delay 2
	createsprite gSwirlingDirtSpriteTemplate, ANIM_TARGET, 2, 0, 36, 480, 20, 13, -46, ANIM_TARGET
	delay 2
	createsprite gSwirlingDirtSpriteTemplate, ANIM_TARGET, 2, 0, 37, 576, 20, 5, 42, ANIM_TARGET
	delay 2
	createsprite gSwirlingDirtSpriteTemplate, ANIM_TARGET, 2, 0, 35, 400, 25, 8, -42, ANIM_TARGET
	delay 2
	createsprite gSwirlingDirtSpriteTemplate, ANIM_TARGET, 2, 0, 32, 512, 25, 13, 46, ANIM_TARGET
	delay 2
	createsprite gSwirlingDirtSpriteTemplate, ANIM_TARGET, 2, 0, 37, 464, 30, 12, -50, ANIM_TARGET
	delay 2
	return

Move_SHEER_COLD:
	end

Move_ARM_THRUST:
	end

Move_MUDDY_WATER:
	end

Move_BULLET_SEED:
	end

Move_DRAGON_CLAW:
	end

Move_MUD_SHOT:
	end

Move_METEOR_MASH:
	end

Move_REVENGE:
	end

Move_POISON_FANG:
	end

Move_SUBSTITUTE:
	loadspritegfx ANIM_TAG_MUSIC_NOTES
	playsewithpan SE_M_ATTRACT, SOUND_PAN_ATTACKER
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, -96, 0, 0, 15
	waitforvisualfinish
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, 0, 1
	createvisualtask AnimTask_MonToSubstitute, 2
	createsprite gPokeBallPuffSpriteTemplate, ANIM_TARGET, 2, -8,  -8, -24, -16, 40, 0, ANIM_TARGET
	createsprite gPokeBallPuffSpriteTemplate, ANIM_TARGET, 2,  8,  -8,  24, -16, 40, 1, ANIM_TARGET
	createsprite gPokeBallPuffSpriteTemplate, ANIM_TARGET, 2, -8,   8, -24,  32, 40, 2, ANIM_TARGET
	createsprite gPokeBallPuffSpriteTemplate, ANIM_TARGET, 2,  8,   8,  24,  32, 40, 3, ANIM_TARGET
	waitforvisualfinish
	end

Move_FRENZY_PLANT:
	end

Move_METAL_SOUND:
	end

MetalSoundRings:
	panse SE_M_SCREECH, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, +2, 0
	createsprite gMetalSoundSpriteTemplate, ANIM_TARGET, 2, 16, 0, 0, 0, 30, 0
	delay 2
	return

Move_FOCUS_PUNCH:
	end

Move_RETURN:
	end

Move_COSMIC_POWER:
	end

Move_BLAST_BURN:
	end

Move_ROCK_TOMB:
	end

Move_SILVER_WIND:
	end

Move_SNATCH:
	end

Move_DIVE:
	end

Move_ROCK_BLAST:
	end

Move_OVERHEAT:
	end

Move_HYDRO_CANNON:
	end

Move_ASTONISH:
	end

Move_SEISMIC_TOSS:
	loadspritegfx ANIM_TAG_ORB
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, -96, 0, 0, 15
	createsprite gSeismicTossOrbUpSpriteTemplate, ANIM_TARGET, 2, 0, 0, ANIM_TARGET, -80, 30, 0, 0
	invisible ANIM_TARGET
	waitforvisualfinish
	createsprite gSeismicTossOrbDownSpriteTemplate, ANIM_TARGET, 2, 0, -64, ANIM_TARGET, -80, 30, 0, 0
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0, 0, 15
	waitforvisualfinish
	visible ANIM_TARGET
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 4, 7, 1
	waitforvisualfinish
	end

Move_MAGIC_COAT:
	end

Move_WATER_PULSE:
	end

Move_PSYCHO_BOOST:
	end

Move_KNOCK_OFF:
	end

Move_DOOM_DESIRE:
	end

UnusedDoomDesireHit:
	loadspritegfx ANIM_TAG_EXPLOSION
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 3, 0, 16, RGB_WHITE
	waitforvisualfinish
	delay 10
	createvisualtask AnimTask_DoomDesireLightBeam, 5
	delay 5
	playsewithpan SE_M_CONFUSE_RAY, SOUND_PAN_ATTACKER
	delay 10
	playsewithpan SE_M_CONFUSE_RAY, 0
	delay 10
	playsewithpan SE_M_CONFUSE_RAY, SOUND_PAN_TARGET
	delay 23
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_TARGET, 10, 0, 20, 1
	playsewithpan SE_M_SELF_DESTRUCT, SOUND_PAN_TARGET
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 1, 1
	delay 6
	playsewithpan SE_M_SELF_DESTRUCT, SOUND_PAN_TARGET
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, 24, -24, 1, 1
	delay 6
	playsewithpan SE_M_SELF_DESTRUCT, SOUND_PAN_TARGET
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, -16, 16, 1, 1
	delay 6
	playsewithpan SE_M_SELF_DESTRUCT, SOUND_PAN_TARGET
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, -24, -12, 1, 1
	delay 6
	playsewithpan SE_M_SELF_DESTRUCT, SOUND_PAN_TARGET
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, 16, 16, 1, 1
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 3, 16, 0, RGB_WHITE
	waitforvisualfinish
	end

Move_SKY_UPPERCUT:
	end

Move_SECRET_POWER:
	createvisualtask AnimTask_GetBattleTerrain, 5
	jumpargeq 0, BATTLE_TERRAIN_GRASS,      Move_NEEDLE_ARM
	jumpargeq 0, BATTLE_TERRAIN_LONG_GRASS, Move_MAGICAL_LEAF
	jumpargeq 0, BATTLE_TERRAIN_SAND,       Move_MUD_SHOT
	jumpargeq 0, BATTLE_TERRAIN_UNDERWATER, Move_WATERFALL
	jumpargeq 0, BATTLE_TERRAIN_WATER,      Move_SURF
	jumpargeq 0, BATTLE_TERRAIN_POND,       Move_BUBBLE_BEAM
	jumpargeq 0, BATTLE_TERRAIN_MOUNTAIN,   Move_ROCK_THROW
	jumpargeq 0, BATTLE_TERRAIN_CAVE,       Move_BITE
	jumpargeq 0, BATTLE_TERRAIN_BUILDING,   Move_STRENGTH
	goto Move_SLAM

Move_TWISTER:
	end

Move_MAGICAL_LEAF:
	end

Move_ICE_BALL:
	end

Move_WEATHER_BALL:
	end

Move_COUNT:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_DOUBLE_SLAP, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_TARGET, 3, 0, 6, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

IceCrystalEffectShort:
	createsprite gIceCrystalHitLargeSpriteTemplate, ANIM_TARGET, 2, -10, -10, 0
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 4
	createsprite gIceCrystalHitSmallSpriteTemplate, ANIM_TARGET, 2, 10, 20, 0
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 4
	createsprite gIceCrystalHitLargeSpriteTemplate, ANIM_TARGET, 2, -5, 10, 0
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 4
	createsprite gIceCrystalHitSmallSpriteTemplate, ANIM_TARGET, 2, 17, -12, 0
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 4
	createsprite gIceCrystalHitSmallSpriteTemplate, ANIM_TARGET, 2, -15, 15, 0
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 4
	createsprite gIceCrystalHitSmallSpriteTemplate, ANIM_TARGET, 2, 0, 0, 0
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 4
	createsprite gIceCrystalHitLargeSpriteTemplate, ANIM_TARGET, 2, 20, 2, 0
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	return

IceCrystalEffectLong:
	createsprite gIceCrystalHitLargeSpriteTemplate, ANIM_TARGET, 2, -10, -10, 1
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 4
	createsprite gIceCrystalHitSmallSpriteTemplate, ANIM_TARGET, 2, 10, 20, 1
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 4
	createsprite gIceCrystalHitLargeSpriteTemplate, ANIM_TARGET, 2, -29, 0, 1
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 4
	createsprite gIceCrystalHitSmallSpriteTemplate, ANIM_TARGET, 2, 29, -20, 1
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 4
	createsprite gIceCrystalHitLargeSpriteTemplate, ANIM_TARGET, 2, -5, 10, 1
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 4
	createsprite gIceCrystalHitSmallSpriteTemplate, ANIM_TARGET, 2, 17, -12, 1
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 4
	createsprite gIceCrystalHitLargeSpriteTemplate, ANIM_TARGET, 2, -20, 0, 1
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 4
	createsprite gIceCrystalHitSmallSpriteTemplate, ANIM_TARGET, 2, -15, 15, 1
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 4
	createsprite gIceCrystalHitSmallSpriteTemplate, ANIM_TARGET, 2, 26, -5, 1
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 4
	createsprite gIceCrystalHitSmallSpriteTemplate, ANIM_TARGET, 2, 0, 0, 1
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	delay 4
	createsprite gIceCrystalHitLargeSpriteTemplate, ANIM_TARGET, 2, 20, 2, 1
	playsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET
	return

IceSpikesEffectShort: @ Unused
	loopsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET, 6, 4
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, 0, 24, 0
	delay 4
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, 8, 24, 0
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, -8, 24, 0
	delay 4
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, 16, 24, 0
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, -16, 24, 0
	delay 4
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, 24, 24, 0
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, -24, 24, 0
	delay 4
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, 32, 24, 0
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, -32, 24, 0
	return

IceSpikesEffectLong:
	loopsewithpan SE_M_ICY_WIND, SOUND_PAN_TARGET, 6, 4
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, 0, 24, 1
	delay 4
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, 8, 24, 1
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, -8, 24, 1
	delay 4
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, 16, 24, 1
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, -16, 24, 1
	delay 4
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, 24, 24, 1
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, -24, 24, 1
	delay 4
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, 32, 24, 1
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, -32, 24, 1
	delay 4
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, 40, 24, 1
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, -40, 24, 1
	delay 4
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, 48, 24, 1
	createsprite gIceGroundSpikeSpriteTemplate, ANIM_TARGET, 2, -48, 24, 1
	return

GrantingStarsEffect:
	createsprite gGrantingStarsSpriteTemplate, ANIM_ATTACKER, 2, -15, 0, 0, 0, 32, 60
	delay 8
	createsprite gGrantingStarsSpriteTemplate, ANIM_ATTACKER, 2, 12, -5, 0, 0, 32, 60
	delay 8
	return

HealingEffect:
	playsewithpan SE_M_ABSORB_2, SOUND_PAN_ATTACKER
	createsprite gHealingBlueStarSpriteTemplate, ANIM_ATTACKER, 2, 0, -5, 0, 0
	delay 7
	createsprite gHealingBlueStarSpriteTemplate, ANIM_ATTACKER, 2, -15, 10, 0, 0
	delay 7
	createsprite gHealingBlueStarSpriteTemplate, ANIM_ATTACKER, 2, -15, -15, 0, 0
	delay 7
	createsprite gHealingBlueStarSpriteTemplate, ANIM_ATTACKER, 2, 10, -5, 0, 0
	delay 7
	return

HealingEffect2:
	playsewithpan SE_M_ABSORB_2, SOUND_PAN_TARGET
	createsprite gHealingBlueStarSpriteTemplate, ANIM_TARGET, 2, 0, -5, 1, 0
	delay 7
	createsprite gHealingBlueStarSpriteTemplate, ANIM_TARGET, 2, -15, 10, 1, 0
	delay 7
	createsprite gHealingBlueStarSpriteTemplate, ANIM_TARGET, 2, -15, -15, 1, 0
	delay 7
	createsprite gHealingBlueStarSpriteTemplate, ANIM_TARGET, 2, 10, -5, 1, 0
	delay 7
	return

PoisonBubblesEffect:
	createsprite gPoisonBubbleSpriteTemplate, ANIM_TARGET, 2, 10, 10, 0
	playsewithpan SE_M_TOXIC, SOUND_PAN_TARGET
	delay 6
	createsprite gPoisonBubbleSpriteTemplate, ANIM_TARGET, 2, 20, -20, 0
	playsewithpan SE_M_TOXIC, SOUND_PAN_TARGET
	delay 6
	createsprite gPoisonBubbleSpriteTemplate, ANIM_TARGET, 2, -20, 15, 0
	playsewithpan SE_M_TOXIC, SOUND_PAN_TARGET
	delay 6
	createsprite gPoisonBubbleSpriteTemplate, ANIM_TARGET, 2, 0, 0, 0
	playsewithpan SE_M_TOXIC, SOUND_PAN_TARGET
	delay 6
	createsprite gPoisonBubbleSpriteTemplate, ANIM_TARGET, 2, -20, -20, 0
	playsewithpan SE_M_TOXIC, SOUND_PAN_TARGET
	delay 6
	createsprite gPoisonBubbleSpriteTemplate, ANIM_TARGET, 2, 16, -8, 0
	playsewithpan SE_M_TOXIC, SOUND_PAN_TARGET
	return

WaterBubblesEffectShort:
	createsprite gWaterBubbleSpriteTemplate, ANIM_ATTACKER, 2, 10, 10, 0
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_ATTACKER, 2, 20, -20, 0
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_ATTACKER, 2, -20, 15, 0
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 0
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_ATTACKER, 2, -20, -20, 0
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, 0
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	return

WaterBubblesEffectLong:
	createsprite gWaterBubbleSpriteTemplate, ANIM_ATTACKER, 2, 10, 10, 1
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_ATTACKER, 2, -28, -10, 1
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_ATTACKER, 2, 20, -20, 1
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_ATTACKER, 2, -20, 15, 1
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, 1
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_ATTACKER, 2, 27, 8, 1
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_ATTACKER, 2, -20, -20, 1
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_ATTACKER, 2, 16, -8, 1
	playsewithpan SE_M_BUBBLE3, SOUND_PAN_TARGET
	return

ElectricityEffect:
	playsewithpan SE_M_THUNDERBOLT2, SOUND_PAN_TARGET
	createsprite gElectricitySpriteTemplate, ANIM_TARGET, 2, 5, 0, 5, 0
	delay 2
	createsprite gElectricitySpriteTemplate, ANIM_TARGET, 2, -5, 10, 5, 1
	delay 2
	createsprite gElectricitySpriteTemplate, ANIM_TARGET, 2, 15, 20, 5, 2
	delay 2
	createsprite gElectricitySpriteTemplate, ANIM_TARGET, 2, -15, -10, 5, 0
	delay 2
	createsprite gElectricitySpriteTemplate, ANIM_TARGET, 2, 25, 0, 5, 1
	delay 2
	createsprite gElectricitySpriteTemplate, ANIM_TARGET, 2, -8, 8, 5, 2
	delay 2
	createsprite gElectricitySpriteTemplate, ANIM_TARGET, 2, 2, -8, 5, 0
	delay 2
	createsprite gElectricitySpriteTemplate, ANIM_TARGET, 2, -20, 15, 5, 1
	return

ConfusionEffect:
	loopsewithpan SE_M_DIZZY_PUNCH, SOUND_PAN_TARGET, 13, 6
	createsprite gConfusionDuckSpriteTemplate, ANIM_TARGET, 2, 0, -15, 0, 3, 90
	createsprite gConfusionDuckSpriteTemplate, ANIM_TARGET, 2, 0, -15, 51, 3, 90
	createsprite gConfusionDuckSpriteTemplate, ANIM_TARGET, 2, 0, -15, 102, 3, 90
	createsprite gConfusionDuckSpriteTemplate, ANIM_TARGET, 2, 0, -15, 153, 3, 90
	createsprite gConfusionDuckSpriteTemplate, ANIM_TARGET, 2, 0, -15, 204, 3, 90
	return

SetPsychicBackground:
	fadetobg BG_PSYCHIC
	waitbgfadeout
	createvisualtask AnimTask_SetPsychicBackground, 5
	waitbgfadein
	return

UnsetPsychicBackground:
	restorebg
	waitbgfadeout
	setarg 7, 0xFFFF
	waitbgfadein
	return

SetSkyBg:
	jumpifcontest SetSkyBgContest
	fadetobg BG_SKY
	waitbgfadeout
	createvisualtask AnimTask_StartSlidingBg, 5, -2304, 768, 1, -1
SetSkyBgContinue:
	waitbgfadein
	return

SetSkyBgContest:
	fadetobg BG_SKY_CONTESTS
	waitbgfadeout
	createvisualtask AnimTask_StartSlidingBg, 5, 2304, 768, 0, -1
	goto SetSkyBgContinue

UnsetSkyBg:
	restorebg
	waitbgfadeout
	setarg 7, 0xFFFF
	waitbgfadein
	return

SetSolarBeamBg:
	createvisualtask AnimTask_IsContest, 2
	jumprettrue SetSolarBeamBgContest
	createvisualtask AnimTask_IsTargetPlayerSide, 2
	jumpretfalse SetSolarBeamBgOpponent
	goto SetSolarBeamBgPlayer

SetSolarBeamBgContinue:
	waitbgfadein
	return

SetSolarBeamBgContest:
	fadetobg BG_SOLARBEAM_CONTESTS
	goto SetSolarBeamBgContinue

SetSolarBeamBgPlayer:
	fadetobg BG_SOLARBEAM_PLAYER
	goto SetSolarBeamBgContinue

SetSolarBeamBgOpponent:
	fadetobg BG_SOLARBEAM_OPPONENT
	goto SetSolarBeamBgContinue

UnsetSolarBeamBg:
	restorebg
	waitbgfadein
	return

Status_Poison:
	loopsewithpan SE_M_TOXIC, SOUND_PAN_TARGET, 13, 6
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_ATTACKER, 1, 0, 18, 2
	createvisualtask AnimTask_BlendColorCycle, 2, F_PAL_ATTACKER, 2, 2, 0, 12, RGB(30, 0, 31)
	end

Status_Confusion:
	loadspritegfx ANIM_TAG_DUCK
	call ConfusionEffect
	end

Status_Burn:
	loadspritegfx ANIM_TAG_SMALL_EMBER
	playsewithpan SE_M_FLAME_WHEEL, SOUND_PAN_TARGET
	call BurnFlame
	call BurnFlame
	call BurnFlame
	waitforvisualfinish
	end

BurnFlame:
	createsprite gBurnFlameSpriteTemplate, ANIM_TARGET, 2, -24, 24, 24, 24, 20, 1, 1
	delay 4
	return

Status_Infatuation:
	loadspritegfx ANIM_TAG_MAGENTA_HEART
	playsewithpan SE_M_CHARM, SOUND_PAN_ATTACKER
	createsprite gMagentaHeartSpriteTemplate, ANIM_ATTACKER, 3, 0, 20
	delay 15
	playsewithpan SE_M_CHARM, SOUND_PAN_ATTACKER
	createsprite gMagentaHeartSpriteTemplate, ANIM_ATTACKER, 3, -20, 20
	delay 15
	playsewithpan SE_M_CHARM, SOUND_PAN_ATTACKER
	createsprite gMagentaHeartSpriteTemplate, ANIM_ATTACKER, 3, 20, 20
	end

Status_Sleep:
	loadspritegfx ANIM_TAG_LETTER_Z
	playsewithpan SE_M_SNORE, SOUND_PAN_ATTACKER
	createsprite gSleepLetterZSpriteTemplate, ANIM_ATTACKER, 2, 4, -10, 16, 0, 0
	delay 30
	createsprite gSleepLetterZSpriteTemplate, ANIM_ATTACKER, 2, 4, -10, 16, 0, 0
	end

Status_Paralysis:
	loadspritegfx ANIM_TAG_SPARK_2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_ATTACKER, 1, 0, 10, 1
	call ElectricityEffect
	end

Status_Freeze:
	playsewithpan SE_M_ICY_WIND, 0
	loadspritegfx ANIM_TAG_ICE_CUBE
	monbg ANIM_DEF_PARTNER
	splitbgprio ANIM_TARGET
	waitplaysewithpan SE_M_HAIL, SOUND_PAN_TARGET, 17
	createvisualtask AnimTask_FrozenIceCube, 2
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	end

Status_Curse:
	loadspritegfx ANIM_TAG_GHOSTLY_SPIRIT
	monbg ANIM_DEF_PARTNER
	playsewithpan SE_M_NIGHTMARE, SOUND_PAN_TARGET
	createsprite gCurseGhostSpriteTemplate, ANIM_TARGET, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_TARGET, 2, 0, 14, 1
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	end

Status_Nightmare:
	end

General_CastformChange:
	createvisualtask AnimTask_IsMonInvisible, 2
	jumpreteq TRUE, CastformChangeSkipAnim
	goto CastformChangeContinue

CastformChangeContinue:
	monbg ANIM_ATTACKER
	playsewithpan SE_M_TELEPORT, SOUND_PAN_ATTACKER
	waitplaysewithpan SE_M_MINIMIZE, SOUND_PAN_ATTACKER, 48
	createvisualtask AnimTask_TransformMon, 2, 1
	waitforvisualfinish
	clearmonbg ANIM_ATTACKER
	end

CastformChangeSkipAnim:
	createvisualtask AnimTask_CastformGfxChange, 2, 1
	end

General_StatsChange:
	createvisualtask AnimTask_StatsChange, 5
	waitforvisualfinish
	end

General_SubstituteFade:
	monbg ANIM_ATTACKER
	createvisualtask AnimTask_SubstituteFadeToInvisible, 5
	createvisualtask AnimTask_BlendBattleAnimPal, 10, F_PAL_ATTACKER, 0, 0, 16, RGB_WHITE
	waitforvisualfinish
	delay 1
	clearmonbg ANIM_ATTACKER
	delay 2
	blendoff
	createvisualtask AnimTask_BlendBattleAnimPal, 10, F_PAL_ATTACKER, 0, 0, 0, RGB_WHITE
	createvisualtask AnimTask_SwapMonSpriteToFromSubstitute, 2, TRUE
	end

General_SubstituteAppear:
	createvisualtask AnimTask_MonToSubstitute, 2
	end

General_BaitThrow:
	createvisualtask AnimTask_SafariOrGhost_DecideAnimSides, 2, 0
	createvisualtask AnimTask_LoadBaitGfx, 2
	delay 0
	waitplaysewithpan SE_M_JUMP_KICK, SOUND_PAN_ATTACKER, 22
	createsprite gSafariBaitSpriteTemplate, ANIM_TARGET, 3, -18, 12, 0, 32
	delay 50
	loopsewithpan SE_M_TAIL_WHIP, SOUND_PAN_TARGET, 19, 2
	createvisualtask AnimTask_SwayMon, 5, 1, 8, 1536, 2, ANIM_TARGET
	waitforvisualfinish
	createvisualtask AnimTask_FreeBaitGfx, 2
	end

General_ItemKnockoff:
	loadspritegfx ANIM_TAG_ITEM_BAG
	createsprite gKnockOffItemSpriteTemplate, ANIM_TARGET, 2
	end

General_TurnTrap:
	createvisualtask AnimTask_GetTrappedMoveAnimId, 5
	jumpargeq 0, TRAP_ANIM_FIRE_SPIN, Status_FireSpin
	jumpargeq 0, TRAP_ANIM_WHIRLPOOL, Status_Whirlpool
	jumpargeq 0, TRAP_ANIM_CLAMP,     Status_Clamp
	jumpargeq 0, TRAP_ANIM_SAND_TOMB, Status_SandTomb
	goto Status_BindWrap

Status_BindWrap:
	loadspritegfx ANIM_TAG_TENDRILS
	loopsewithpan SE_M_SCRATCH, SOUND_PAN_TARGET, 6, 2
	createsprite gConstrictBindingSpriteTemplate, ANIM_TARGET, 4, 0, 16, 0, 1
	delay 7
	createsprite gConstrictBindingSpriteTemplate, ANIM_TARGET, 2, 0, 8, 1, 1
	delay 3
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_TARGET, 2, 0, 8, 1
	delay 20
	setarg 7, 0xFFFF
	playsewithpan SE_M_BIND, SOUND_PAN_TARGET
	waitforvisualfinish
	end

Status_FireSpin:
	loadspritegfx ANIM_TAG_SMALL_EMBER
	playsewithpan SE_M_SACRED_FIRE2, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 2, 30, 1
	call FireSpinEffect
	call FireSpinEffect
	waitforvisualfinish
	stopsound
	end

Status_Whirlpool:
	end

Status_Clamp:
	loadspritegfx ANIM_TAG_CLAMP
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_VICEGRIP, SOUND_PAN_TARGET
	createsprite gClampJawSpriteTemplate, ANIM_ATTACKER, 2, -32, 0, 2, 819, 0, 10
	createsprite gClampJawSpriteTemplate, ANIM_ATTACKER, 2, 32, 0, 6, -819, 0, 10
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 3, 0, 5, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	waitforvisualfinish
	end

Status_SandTomb:
	loadspritegfx ANIM_TAG_MUD_SAND
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 0, F_PAL_TARGET, 2, 0, 7, RGB(19, 17, 0)
	createvisualtask AnimTask_ShakeMon, 5, ANIM_TARGET, 0, 2, 30, 1
	playsewithpan SE_M_SAND_TOMB, SOUND_PAN_TARGET
	call SandTombSwirlingDirt
	call SandTombSwirlingDirt
	delay 22
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 0, F_PAL_TARGET, 2, 7, 0, RGB(19, 17, 0)
	waitforvisualfinish
	stopsound
	end

General_HeldItemEffect:
	loadspritegfx ANIM_TAG_THIN_RING
	loadspritegfx ANIM_TAG_SPARKLE_2
	delay 0
	playsewithpan SE_M_TAKE_DOWN, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_RotateMonToSideAndRestore, 2, 16, 128, ANIM_ATTACKER, 2
	waitforvisualfinish
	playsewithpan SE_M_TAKE_DOWN, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_RotateMonToSideAndRestore, 2, 16, 128, ANIM_ATTACKER, 2
	waitforvisualfinish
	playsewithpan SE_M_TAKE_DOWN, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_RotateMonToSideAndRestore, 2, 16, 128, ANIM_ATTACKER, 2
	waitforvisualfinish
	playsewithpan SE_M_MORNING_SUN, SOUND_PAN_ATTACKER
	call GrantingStarsEffect
	waitforvisualfinish
	playsewithpan SE_SHINY, SOUND_PAN_ATTACKER
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_ATTACKER, 3, 7, 0, RGB(17, 31, 25)
	createsprite gThinRingExpandingSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 0, 0
	waitforvisualfinish
	end

General_SmokeballEscape:
	loadspritegfx ANIM_TAG_PINK_CLOUD
	monbg ANIM_ATTACKER
	setalpha 12, 4
	delay 0
	playsewithpan SE_BALL_OPEN, SOUND_PAN_TARGET
	createsprite gSmokeBallEscapeCloudSpriteTemplate, ANIM_TARGET, 0, 0, 32, 28, 30
	delay 4
	playsewithpan SE_BALL_OPEN, SOUND_PAN_TARGET
	createsprite gSmokeBallEscapeCloudSpriteTemplate, ANIM_ATTACKER, 127, 2, 12, 20, 30
	delay 12
	playsewithpan SE_BALL_OPEN, SOUND_PAN_TARGET
	createsprite gSmokeBallEscapeCloudSpriteTemplate, ANIM_ATTACKER, 126, 2, -28, 4, 30
	delay 12
	playsewithpan SE_BALL_OPEN, SOUND_PAN_TARGET
	createsprite gSmokeBallEscapeCloudSpriteTemplate, ANIM_ATTACKER, 124, 2, 14, -20, 30
	delay 4
	playsewithpan SE_BALL_OPEN, SOUND_PAN_TARGET
	createvisualtask AnimTask_AttackerFadeToInvisible, 2, 2
	createsprite gSmokeBallEscapeCloudSpriteTemplate, ANIM_ATTACKER, 123, 3, 4, 4, 30
	delay 14
	playsewithpan SE_BALL_OPEN, SOUND_PAN_TARGET
	createsprite gSmokeBallEscapeCloudSpriteTemplate, ANIM_ATTACKER, 122, 3, -14, 18, 46
	delay 0
	createsprite gSmokeBallEscapeCloudSpriteTemplate, ANIM_ATTACKER, 121, 3, 14, -14, 46
	delay 0
	createsprite gSmokeBallEscapeCloudSpriteTemplate, ANIM_ATTACKER, 120, 3, -12, -10, 46
	delay 0
	createsprite gSmokeBallEscapeCloudSpriteTemplate, ANIM_ATTACKER, 119, 3, 14, 14, 46
	delay 0
	createsprite gSmokeBallEscapeCloudSpriteTemplate, ANIM_ATTACKER, 118, 3, 0, 0, 46
	waitforvisualfinish
	clearmonbg ANIM_ATTACKER
	invisible ANIM_ATTACKER
	delay 0
	blendoff
	end

General_FocusBand:
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 0, F_PAL_ATTACKER, 7, 0, 9, RGB_RED
	playsewithpan SE_M_DRAGON_RAGE, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_SlideMonForFocusBand, 5, 30, 128, 0, 1, 2, 0, 1
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 0, F_PAL_ATTACKER, 4, 9, 0, RGB_RED
	waitforvisualfinish
	delay 6
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_ATTACKER, 0, 0, 0, 15
	end

General_Rain:
	loadspritegfx ANIM_TAG_RAIN_DROPS
	playsewithpan SE_M_RAIN_DANCE, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_BlendBattleAnimPal, 10, F_PAL_BG | F_PAL_BATTLERS_2, 2, 0, 4, RGB_BLACK
	waitforvisualfinish
	createvisualtask AnimTask_CreateRaindrops, 2, 0, 3, 60
	createvisualtask AnimTask_CreateRaindrops, 2, 0, 3, 60
	delay 50
	waitforvisualfinish
	createvisualtask AnimTask_BlendBattleAnimPal, 10, F_PAL_BG | F_PAL_BATTLERS_2, 2, 4, 0, RGB_BLACK
	waitforvisualfinish
	end

General_Sun:
	goto Move_SUNNY_DAY

General_Sandstorm:
	goto Move_SANDSTORM

General_Hail:
	goto Move_HAIL

General_LeechSeedDrain:
	createvisualtask AnimTask_GetBattlersFromArg, 5
	delay 0
	goto Move_ABSORB

General_MonHit:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_TARGET
	setalpha 12, 8
	playsewithpan SE_M_DOUBLE_SLAP, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_ATTACKER, 2, 0, 0, ANIM_TARGET, 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_TARGET, 3, 0, 6, 1
	waitforvisualfinish
	clearmonbg ANIM_TARGET
	blendoff
	end

General_ItemSteal:
	loadspritegfx ANIM_TAG_ITEM_BAG
	createvisualtask AnimTask_SetAnimAttackerAndTargetForEffectAtk, 2
	createvisualtask AnimTask_SetTargetToEffectBattler, 2  @ Redundant with above
	delay 1
	createsprite gItemStealSpriteTemplate, ANIM_ATTACKER, 2, 0, -5, 10, 2, -1
	end

General_SnatchMove:
	loadspritegfx ANIM_TAG_ITEM_BAG
	createvisualtask AnimTask_SetAnimAttackerAndTargetForEffectTgt, 2
	call SnatchMoveTrySwapFromSubstitute
	delay 1
	createvisualtask AnimTask_SwayMon, 2, 0, 5, 5120, 4, ANIM_TARGET
	waitforvisualfinish
	createvisualtask AnimTask_IsTargetSameSide, 2
	jumpretfalse SnatchOpposingMonMove
	goto SnatchPartnerMonMove

SnatchMoveContinue:
	waitforvisualfinish
	call SnatchMoveTrySwapToSubstitute
	end

SnatchOpposingMonMove:
	playsewithpan SE_M_DOUBLE_TEAM, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_SnatchOpposingMonMove, 2
	goto SnatchMoveContinue

SnatchPartnerMonMove:
	playsewithpan SE_M_DOUBLE_TEAM, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_SnatchPartnerMove, 2
	goto SnatchMoveContinue

General_FutureSightHit:
	createvisualtask AnimTask_SetAnimTargetToBattlerTarget, 2
	monbg ANIM_DEF_PARTNER
	playsewithpan SE_M_PSYBEAM, SOUND_PAN_ATTACKER
	call SetPsychicBackground
	setalpha 8, 8
	playsewithpan SE_M_SUPERSONIC, SOUND_PAN_TARGET
	waitplaysewithpan SE_M_SUPERSONIC, SOUND_PAN_TARGET, 8
	createvisualtask AnimTask_ShakeMon, 2, ANIM_TARGET, 4, 0, 15, 1
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -5, -5, 15, ANIM_TARGET, 1
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon, 2, ANIM_TARGET, 4, 0, 24, 1
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	blendoff
	waitforvisualfinish
	delay 1
	call UnsetPsychicBackground
	end

General_DoomDesireHit:
	createvisualtask AnimTask_SetAnimTargetToBattlerTarget, 2
	loadspritegfx ANIM_TAG_EXPLOSION
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 3, 0, 16, RGB_WHITE
	waitforvisualfinish
	delay 10
	createvisualtask AnimTask_DoomDesireLightBeam, 5
	delay 9
	playsewithpan SE_M_CONFUSE_RAY, SOUND_PAN_ATTACKER
	delay 9
	playsewithpan SE_M_CONFUSE_RAY, 0
	delay 9
	playsewithpan SE_M_CONFUSE_RAY, SOUND_PAN_TARGET
	delay 25
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_TARGET, 10, 0, 20, 1
	playsewithpan SE_M_SELF_DESTRUCT, SOUND_PAN_TARGET
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, 0, 0, 1, 1
	delay 6
	playsewithpan SE_M_SELF_DESTRUCT, SOUND_PAN_TARGET
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, 24, -24, 1, 1
	delay 6
	playsewithpan SE_M_SELF_DESTRUCT, SOUND_PAN_TARGET
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, -16, 16, 1, 1
	delay 6
	playsewithpan SE_M_SELF_DESTRUCT, SOUND_PAN_TARGET
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, -24, -12, 1, 1
	delay 6
	playsewithpan SE_M_SELF_DESTRUCT, SOUND_PAN_TARGET
	createsprite gExplosionSpriteTemplate, ANIM_ATTACKER, 3, 16, 16, 1, 1
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 3, 16, 0, RGB_WHITE
	waitforvisualfinish
	end

General_FocusPunchSetUp:
	end

General_IngrainHeal:
	loadspritegfx ANIM_TAG_ORBS
	loadspritegfx ANIM_TAG_BLUE_STAR
	monbg ANIM_DEF_PARTNER
	setalpha 12, 8
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 0, 4, RGB(13, 31, 12)
	waitforvisualfinish
	delay 3
	call AbsorbEffect
	waitforvisualfinish
	delay 15
	call HealingEffect
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 1, 4, 0, RGB(13, 31, 12)
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	blendoff
	end

General_WishHeal:
	loadspritegfx ANIM_TAG_BLUE_STAR
	loadspritegfx ANIM_TAG_SPARKLE_2
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 3, 0, 10, RGB_BLACK
	waitforvisualfinish
	playsewithpan SE_M_MEGA_KICK, SOUND_PAN_ATTACKER
	call GrantingStarsEffect
	waitforvisualfinish
	call HealingEffect
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 2, F_PAL_BG, 3, 10, 0, RGB_BLACK
	end

General_MonScared:
	createvisualtask AnimTask_SafariOrGhost_DecideAnimSides, 2, 1
	waitforvisualfinish
	loadspritegfx ANIM_TAG_SWEAT_BEAD
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 0, F_PAL_TARGET, 2, 0, 10, RGB(0, 23, 25)
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_TARGET, 2, 0, 10, 1
	delay 20
	createsprite gSprayWaterDropletSpriteTemplate, ANIM_TARGET, 5, 0, 1
	playsewithpan SE_M_SKETCH, SOUND_PAN_TARGET
	createsprite gSprayWaterDropletSpriteTemplate, ANIM_TARGET, 5, 1, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_TARGET, 4, 0, 5, 1
	createvisualtask AnimTask_StretchTargetUp, 3
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 0, F_PAL_TARGET, 2, 10, 0, RGB(0, 23, 25)
	waitforvisualfinish
	end

General_GhostGetOut:
	createvisualtask AnimTask_SafariOrGhost_DecideAnimSides, 2, 1
	waitforvisualfinish
	fadetobg BG_GHOST
	waitbgfadeout
	monbg_static ANIM_ATTACKER
	createvisualtask AnimTask_GhostGetOut, 2
	waitbgfadein
	loopsewithpan SE_M_PSYBEAM, SOUND_PAN_TARGET, 20, 3
	waitforvisualfinish
	clearmonbg_static ANIM_ATTACKER
	delay 1
	loadspritegfx ANIM_TAG_SWEAT_BEAD
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 0, F_PAL_TARGET, -1, 0, 6, RGB(21, 22, 26)
	createsprite gSprayWaterDropletSpriteTemplate, ANIM_TARGET, 5, 0, 1
	createsprite gSprayWaterDropletSpriteTemplate, ANIM_TARGET, 5, 1, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_TARGET, 4, 0, 5, 1
	createvisualtask AnimTask_StretchTargetUp, 3
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_ATTACKER, 0, F_PAL_TARGET, -1, 6, 0, RGB(21, 22, 26)
	waitforvisualfinish
	restorebg
	waitbgfadein
	end

General_SilphScoped:
	monbg ANIM_ATTACKER
	playsewithpan SE_M_TELEPORT, SOUND_PAN_ATTACKER
	waitplaysewithpan SE_M_MINIMIZE, SOUND_PAN_ATTACKER, 48
	createvisualtask AnimTask_TransformMon, 2, 255
	waitsound
	waitforvisualfinish
	clearmonbg ANIM_ATTACKER
	end

General_SafariRockThrow:
	createvisualtask AnimTask_SafariOrGhost_DecideAnimSides, 2, 0
	waitforvisualfinish
	loadspritegfx ANIM_TAG_ROCKS
	loadspritegfx ANIM_TAG_IMPACT
	delay 0
	waitplaysewithpan SE_M_JUMP_KICK, SOUND_PAN_ATTACKER, 22
	createsprite gSafariRockTemplate, ANIM_TARGET, 3, -17, 14, 8, 0
	delay 50
	monbg ANIM_DEF_PARTNER
	setalpha 12, 8
	delay 0
	playsewithpan SE_M_DOUBLE_SLAP, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_TARGET, 2, -4, -20, 1, 2
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	blendoff
	waitforvisualfinish
	end

General_SafariReaction:
	createvisualtask AnimTask_SafariGetReaction, 2
	waitforvisualfinish
	jumpreteq B_MSG_MON_WATCHING, SafariReaction_WatchingCarefully
	jumpreteq B_MSG_MON_ANGRY, SafariReaction_Angry
	jumpreteq B_MSG_MON_EATING, SafariReaction_Eating
	end

SafariReaction_WatchingCarefully:
	playsewithpan SE_M_TAKE_DOWN, SOUND_PAN_TARGET
	createvisualtask AnimTask_RotateMonToSideAndRestore, 2, 16, 96, 0, 2
	waitforvisualfinish
	playsewithpan SE_M_TAKE_DOWN, SOUND_PAN_TARGET
	createvisualtask AnimTask_RotateMonToSideAndRestore, 2, 16, -96, 0, 2
	end

SafariReaction_Angry:
	loadspritegfx ANIM_TAG_ANGER
	createsprite gAngerMarkSpriteTemplate, ANIM_TARGET, 2, 1, 20, -20
	playsewithpan SE_M_SWAGGER2, SOUND_PAN_TARGET
	waitforvisualfinish
	delay 12
	createsprite gAngerMarkSpriteTemplate, ANIM_TARGET, 2, 1, -20, -20
	playsewithpan SE_M_SWAGGER2, SOUND_PAN_TARGET
	end

SafariReaction_Eating:
	playsewithpan SE_M_TAKE_DOWN, SOUND_PAN_TARGET
	createvisualtask AnimTask_RotateMonToSideAndRestore, 2, 8, 136, 0, 2
	waitforvisualfinish
	playsewithpan SE_M_TAKE_DOWN, SOUND_PAN_TARGET
	createvisualtask AnimTask_RotateMonToSideAndRestore, 2, 8, 136, 0, 2
	end

SnatchMoveTrySwapFromSubstitute:
	createvisualtask AnimTask_IsAttackerBehindSubstitute, 2
	jumprettrue SnatchMoveSwapSubstituteForMon
SnatchMoveTrySwapFromSubstituteEnd:
	waitforvisualfinish
	return

SnatchMoveSwapSubstituteForMon:
	createvisualtask AnimTask_SwapMonSpriteToFromSubstitute, 2, TRUE
	waitforvisualfinish
	goto SnatchMoveTrySwapFromSubstituteEnd

SnatchMoveTrySwapToSubstitute:
	createvisualtask AnimTask_IsAttackerBehindSubstitute, 2
	jumprettrue SnatchMoveSwapMonForSubstitute
SnatchMoveTrySwapToSubstituteEnd:
	waitforvisualfinish
	return

SnatchMoveSwapMonForSubstitute:
	createvisualtask AnimTask_SwapMonSpriteToFromSubstitute, 2, FALSE
	waitforvisualfinish
	goto SnatchMoveTrySwapToSubstituteEnd

@ Healthbox blue flash effect on level up
Special_LevelUp:
	playsewithpan SE_EXP_MAX, 0
	createvisualtask AnimTask_LoadHealthboxPalsForLevelUp, 2
	delay 0
	createvisualtask AnimTask_FlashHealthboxOnLevelUp, 5, 0, 0
	waitforvisualfinish
	createvisualtask AnimTask_FreeHealthboxPalsForLevelUp, 2
	end

Special_SwitchOutPlayerMon:
	createvisualtask AnimTask_SwitchOutBallEffect, 2
	delay 10
	createvisualtask AnimTask_SwitchOutShrinkMon, 2
	end

Special_SwitchOutOpponentMon:
	createvisualtask AnimTask_SwitchOutBallEffect, 2
	delay 10
	createvisualtask AnimTask_SwitchOutShrinkMon, 2
	end

Special_BallThrow:
	createvisualtask AnimTask_LoadBallGfx, 2
	delay 0
	playsewithpan SE_BALL_THROW, 0
	createvisualtask AnimTask_ThrowBall, 2
	createvisualtask AnimTask_IsBallBlockedByTrainerOrDodged, 2
	jumpreteq -1, BallThrowTrainerBlock
	jumpreteq -2, BallThrowGhostDodged
BallThrowEnd:
	waitforvisualfinish
	createvisualtask AnimTask_FreeBallGfx, 2
	end

BallThrowTrainerBlock:
	loadspritegfx ANIM_TAG_IMPACT
	delay 25
	monbg ANIM_DEF_PARTNER
	setalpha 12, 8
	delay 0
	playsewithpan SE_M_DOUBLE_SLAP, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_TARGET, 2, -4, -20, ANIM_TARGET, 2
	waitforvisualfinish
	clearmonbg ANIM_DEF_PARTNER
	blendoff
	goto BallThrowEnd

BallThrowGhostDodged:
	delay 16
	createvisualtask AnimTask_WindUpLunge, 2, ANIM_TARGET, 48, 6, 16, 48, -48, 16
	playsewithpan SE_M_TAKE_DOWN, SOUND_PAN_TARGET
	waitplaysewithpan SE_M_TAKE_DOWN, SOUND_PAN_TARGET, 48
	waitforvisualfinish
	goto BallThrowEnd

Special_BallThrowWithTrainer:
	createvisualtask AnimTask_LoadBallGfx, 2
	delay 0
	createvisualtask AnimTask_ThrowBallSpecial, 2
	waitforvisualfinish
	createvisualtask AnimTask_FreeBallGfx, 2
	end

Special_SubstituteToMon:
	createvisualtask AnimTask_SwapMonSpriteToFromSubstitute, 2, TRUE
	end

Special_MonToSubstitute:
	createvisualtask AnimTask_SwapMonSpriteToFromSubstitute, 2, FALSE
	end
