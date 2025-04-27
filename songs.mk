STD_REVERB = 50

$(MID_BUILDDIR)/%.o: $(MID_SUBDIR)/%.s
	$(AS) $(ASFLAGS) -I sound -o $@ $<

$(MID_SUBDIR)/mus_rocket_hideout.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G133 -V090

$(MID_SUBDIR)/mus_follow_me.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G131 -V068

$(MID_SUBDIR)/mus_rs_vs_trainer.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G011 -V080 -P1

$(MID_SUBDIR)/mus_rs_vs_gym_leader.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G010 -V080

$(MID_SUBDIR)/mus_victory_road.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G154 -V090

$(MID_SUBDIR)/mus_cycling.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G141 -V090

$(MID_SUBDIR)/mus_intro_fight.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G136 -V090

$(MID_SUBDIR)/mus_hall_of_fame.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G145 -V079

$(MID_SUBDIR)/mus_encounter_deoxys.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G184 -V079

$(MID_SUBDIR)/mus_dummy.s: %.s: %.mid
	$(MID) $< $@ -E -R40

$(MID_SUBDIR)/mus_credits.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G149 -V090

$(MID_SUBDIR)/mus_encounter_gym_leader.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G144 -V090

$(MID_SUBDIR)/mus_dex_rating.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G175 -V070 -P5

$(MID_SUBDIR)/mus_obtain_key_item.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G901 -V097 -P5

$(MID_SUBDIR)/mus_caught_intro.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G179 -V094 -P5

$(MID_SUBDIR)/mus_level_up.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G008 -V090 -P5

$(MID_SUBDIR)/mus_obtain_item.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G008 -V090 -P5

$(MID_SUBDIR)/mus_evolved.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G008 -V090 -P5

$(MID_SUBDIR)/mus_caught.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G170 -V100

$(MID_SUBDIR)/mus_cinnabar.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G138 -V090

$(MID_SUBDIR)/mus_gym.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G134 -V090

$(MID_SUBDIR)/mus_fuchsia.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G167 -V090

$(MID_SUBDIR)/mus_poke_jump.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G132 -V090

$(MID_SUBDIR)/mus_heal_unused.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G140 -V090

$(MID_SUBDIR)/mus_oak_lab.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G160 -V075

$(MID_SUBDIR)/mus_berry_pick.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G132 -V090

$(MID_SUBDIR)/mus_vermillion.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G172 -V090

$(MID_SUBDIR)/mus_route1.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G150 -V079

$(MID_SUBDIR)/mus_route3.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G152 -V083

$(MID_SUBDIR)/mus_route11.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G153 -V090

$(MID_SUBDIR)/mus_pallet.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G159 -V100

$(MID_SUBDIR)/mus_heal.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G008 -V090 -P5

$(MID_SUBDIR)/mus_slots_jackpot.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G008 -V100 -P5

$(MID_SUBDIR)/mus_slots_win.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G008 -V100 -P5

$(MID_SUBDIR)/mus_obtain_badge.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G008 -V090 -P5

$(MID_SUBDIR)/mus_obtain_berry.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G008 -V090 -P5

$(MID_SUBDIR)/mus_photo.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G180 -V100 -P5

$(MID_SUBDIR)/mus_evolution_intro.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G009 -V080 -P1

$(MID_SUBDIR)/mus_move_deleted.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G008 -V090 -P5

$(MID_SUBDIR)/mus_obtain_tmhm.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G008 -V090 -P5

$(MID_SUBDIR)/mus_too_bad.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G008 -V090 -P5

$(MID_SUBDIR)/mus_surf.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G164 -V071

$(MID_SUBDIR)/mus_sevii_123.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G173 -V084

$(MID_SUBDIR)/mus_sevii_45.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G188 -V084

$(MID_SUBDIR)/mus_sevii_67.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G189 -V084

$(MID_SUBDIR)/mus_sevii_cave.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G147 -V090

$(MID_SUBDIR)/mus_sevii_dungeon.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G146 -V090

$(MID_SUBDIR)/mus_sevii_route.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G187 -V080

$(MID_SUBDIR)/mus_net_center.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G162 -V096

$(MID_SUBDIR)/mus_pewter.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G173 -V084

$(MID_SUBDIR)/mus_oak.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G161 -V086

$(MID_SUBDIR)/mus_mystery_gift.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G183 -V100

$(MID_SUBDIR)/mus_route24.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G151 -V086

$(MID_SUBDIR)/mus_teachy_tv_show.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G131 -V068

$(MID_SUBDIR)/mus_mt_moon.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G147 -V090

$(MID_SUBDIR)/mus_school.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G012 -V100 -P1

$(MID_SUBDIR)/mus_poke_tower.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G165 -V090

$(MID_SUBDIR)/mus_poke_center.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G162 -V096

$(MID_SUBDIR)/mus_poke_flute.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G165 -V048 -P5

$(MID_SUBDIR)/mus_poke_mansion.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G148 -V090

$(MID_SUBDIR)/mus_jigglypuff.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G135 -V068 -P5

$(MID_SUBDIR)/mus_encounter_rival.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G174 -V079

$(MID_SUBDIR)/mus_rival_exit.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G174 -V079

$(MID_SUBDIR)/mus_encounter_rocket.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G142 -V096

$(MID_SUBDIR)/mus_ss_anne.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G163 -V090

$(MID_SUBDIR)/mus_new_game_exit.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G182 -V088

$(MID_SUBDIR)/mus_new_game_intro.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G182 -V088

$(MID_SUBDIR)/mus_evolution.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G009 -V080 -P1

$(MID_SUBDIR)/mus_lavender.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G139 -V090

$(MID_SUBDIR)/mus_silph.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G166 -V076

$(MID_SUBDIR)/mus_encounter_girl.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G143 -V051

$(MID_SUBDIR)/mus_encounter_boy.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G144 -V090

$(MID_SUBDIR)/mus_game_corner.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G132 -V090

$(MID_SUBDIR)/mus_slow_pallet.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G159 -V092

$(MID_SUBDIR)/mus_new_game_instruct.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G182 -V085

$(MID_SUBDIR)/mus_viridian_forest.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G146 -V090

$(MID_SUBDIR)/mus_trainer_tower.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G134 -V090

$(MID_SUBDIR)/mus_celadon.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G168 -V070

$(MID_SUBDIR)/mus_title.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G137 -V090

$(MID_SUBDIR)/mus_game_freak.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G181 -V075

$(MID_SUBDIR)/mus_teachy_tv_menu.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G186 -V059

$(MID_SUBDIR)/mus_union_room.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G132 -V090

$(MID_SUBDIR)/mus_vs_legend.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G157 -V090

$(MID_SUBDIR)/mus_vs_deoxys.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G185 -V080

$(MID_SUBDIR)/mus_vs_gym_leader.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G155 -V090

$(MID_SUBDIR)/mus_vs_champion.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G158 -V090

$(MID_SUBDIR)/mus_vs_mewtwo.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G157 -V090

$(MID_SUBDIR)/mus_vs_trainer.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G156 -V090

$(MID_SUBDIR)/mus_vs_wild.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G157 -V090

$(MID_SUBDIR)/se_door.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G129 -V100 -P5

$(MID_SUBDIR)/mus_victory_gym_leader.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G171 -V090

$(MID_SUBDIR)/mus_victory_trainer.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G169 -V089

$(MID_SUBDIR)/mus_victory_wild.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G170 -V090

$(MID_SUBDIR)/ph_choice_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_choice_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_choice_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_cloth_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_cloth_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_cloth_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_cure_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_cure_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_cure_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_dress_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_dress_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_dress_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_face_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_face_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_face_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_fleece_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_fleece_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_fleece_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_foot_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_foot_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_foot_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_goat_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_goat_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_goat_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_goose_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_goose_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_goose_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_kit_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_kit_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_kit_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_lot_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_lot_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_lot_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_mouth_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_mouth_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_mouth_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_nurse_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_nurse_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_nurse_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_price_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_price_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_price_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_strut_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_strut_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_strut_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_thought_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_thought_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_thought_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_trap_blend.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_trap_held.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/ph_trap_solo.s: %.s: %.mid
	$(MID) $< $@ -E -G130 -P4

$(MID_SUBDIR)/se_bang.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_taillow_wing_flap.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V105 -P5

$(MID_SUBDIR)/se_glass_flute.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V105 -P5

$(MID_SUBDIR)/se_boo.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V110 -P4

$(MID_SUBDIR)/se_ball.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V070 -P4

$(MID_SUBDIR)/se_ball_open.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V100 -P5

$(MID_SUBDIR)/se_mugshot.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V090 -P5

$(MID_SUBDIR)/se_contest_heart.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V090 -P5

$(MID_SUBDIR)/se_contest_curtain_fall.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V070 -P5

$(MID_SUBDIR)/se_contest_curtain_rise.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V070 -P5

$(MID_SUBDIR)/se_contest_icon_change.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P5

$(MID_SUBDIR)/se_contest_mons_turn.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V090 -P5

$(MID_SUBDIR)/se_contest_icon_clear.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V090 -P5

$(MID_SUBDIR)/se_card.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V100 -P4

$(MID_SUBDIR)/se_ledge.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V100 -P4

$(MID_SUBDIR)/se_itemfinder.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V090 -P5

$(MID_SUBDIR)/se_applause.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V100 -P5

$(MID_SUBDIR)/se_field_poison.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V110 -P5

$(MID_SUBDIR)/se_rs_door.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V080 -P5

$(MID_SUBDIR)/se_elevator.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V100 -P4

$(MID_SUBDIR)/se_escalator.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V100 -P4

$(MID_SUBDIR)/se_exp.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V080 -P5

$(MID_SUBDIR)/se_exp_max.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V094 -P5

$(MID_SUBDIR)/se_fu_zaku.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V120 -P4

$(MID_SUBDIR)/se_contest_condition_lose.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V110 -P4

$(MID_SUBDIR)/se_lavaridge_fall_warp.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -P4

$(MID_SUBDIR)/se_balloon_red.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V105 -P4

$(MID_SUBDIR)/se_balloon_blue.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V105 -P4

$(MID_SUBDIR)/se_balloon_yellow.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V105 -P4

$(MID_SUBDIR)/se_bridge_walk.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V095 -P4

$(MID_SUBDIR)/se_failure.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V120 -P4

$(MID_SUBDIR)/se_rotating_gate.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V090 -P4

$(MID_SUBDIR)/se_low_health.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V100 -P3

$(MID_SUBDIR)/se_sliding_door.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V095 -P4

$(MID_SUBDIR)/se_vend.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_bike_hop.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V090 -P4

$(MID_SUBDIR)/se_bike_bell.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V090 -P4

$(MID_SUBDIR)/se_contest_place.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V110 -P4

$(MID_SUBDIR)/se_exit.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V120 -P5

$(MID_SUBDIR)/se_use_item.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V100 -P5

$(MID_SUBDIR)/se_unlock.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V100 -P4

$(MID_SUBDIR)/se_ball_bounce_1.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V100 -P4

$(MID_SUBDIR)/se_ball_bounce_2.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V100 -P4

$(MID_SUBDIR)/se_ball_bounce_3.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V100 -P4

$(MID_SUBDIR)/se_ball_bounce_4.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V100 -P4

$(MID_SUBDIR)/se_super_effective.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V110 -P5

$(MID_SUBDIR)/se_not_effective.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V110 -P5

$(MID_SUBDIR)/se_effective.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V110 -P5

$(MID_SUBDIR)/se_puddle.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V020 -P4

$(MID_SUBDIR)/se_berry_blender.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V090 -P4

$(MID_SUBDIR)/se_switch.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V100 -P4

$(MID_SUBDIR)/se_ball_throw.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V120 -P5

$(MID_SUBDIR)/se_ship.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V075 -P4

$(MID_SUBDIR)/se_flee.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V090 -P5

$(MID_SUBDIR)/se_intro_blast.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V100 -P5

$(MID_SUBDIR)/se_pc_login.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V100 -P5

$(MID_SUBDIR)/se_pc_off.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V100 -P5

$(MID_SUBDIR)/se_pc_on.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V100 -P5

$(MID_SUBDIR)/se_pin.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V060 -P4

$(MID_SUBDIR)/se_ding_dong.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V090 -P5

$(MID_SUBDIR)/se_pokenav_off.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V100 -P5

$(MID_SUBDIR)/se_pokenav_on.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V100 -P5

$(MID_SUBDIR)/se_faint.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V110 -P5

$(MID_SUBDIR)/se_shiny.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V095 -P5

$(MID_SUBDIR)/se_rs_shop.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V090 -P5

$(MID_SUBDIR)/se_ice_crack.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V100 -P4

$(MID_SUBDIR)/se_ice_stairs.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V090 -P4

$(MID_SUBDIR)/se_ice_break.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V100 -P4

$(MID_SUBDIR)/se_fall.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_save.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V080 -P5

$(MID_SUBDIR)/se_success.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V080 -P4

$(MID_SUBDIR)/se_select.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V080 -P5

$(MID_SUBDIR)/se_ball_trade.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V100 -P5

$(MID_SUBDIR)/se_thunderstorm.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V080 -P2

$(MID_SUBDIR)/se_thunderstorm_stop.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V080 -P2

$(MID_SUBDIR)/se_thunder.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P3

$(MID_SUBDIR)/se_thunder2.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P3

$(MID_SUBDIR)/se_rain.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V080 -P2

$(MID_SUBDIR)/se_rain_stop.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V080 -P2

$(MID_SUBDIR)/se_downpour.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V100 -P2

$(MID_SUBDIR)/se_downpour_stop.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V100 -P2

$(MID_SUBDIR)/se_orb.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V100 -P5

$(MID_SUBDIR)/se_egg_hatch.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V120 -P5

$(MID_SUBDIR)/se_roulette_ball.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P2

$(MID_SUBDIR)/se_roulette_ball2.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P2

$(MID_SUBDIR)/se_ball_tray_exit.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V100 -P5

$(MID_SUBDIR)/se_ball_tray_ball.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P5

$(MID_SUBDIR)/se_ball_tray_enter.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P5

$(MID_SUBDIR)/se_click.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V110 -P4

$(MID_SUBDIR)/se_warp_in.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V090 -P4

$(MID_SUBDIR)/se_warp_out.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V090 -P4

$(MID_SUBDIR)/se_note_a.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_note_b.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_note_c.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_note_c_high.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_note_d.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_mud_ball.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_note_e.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_note_f.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_note_g.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_breakable_door.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_truck_door.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_truck_unload.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -P4

$(MID_SUBDIR)/se_truck_move.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -P4

$(MID_SUBDIR)/se_truck_stop.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -P4

$(MID_SUBDIR)/se_repel.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -V090 -P4

$(MID_SUBDIR)/se_m_double_slap.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_m_comet_punch.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V120 -P4

$(MID_SUBDIR)/se_m_pay_day.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V095 -P4

$(MID_SUBDIR)/se_m_fire_punch.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_m_scratch.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_m_vicegrip.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_m_razor_wind.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_m_razor_wind2.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V090 -P4

$(MID_SUBDIR)/se_m_swords_dance.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V100 -P4

$(MID_SUBDIR)/se_m_cut.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V120 -P4

$(MID_SUBDIR)/se_m_gust.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_m_gust2.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_m_wing_attack.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V105 -P4

$(MID_SUBDIR)/se_m_fly.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_m_bind.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V100 -P4

$(MID_SUBDIR)/se_m_mega_kick.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V090 -P4

$(MID_SUBDIR)/se_m_mega_kick2.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_m_jump_kick.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_m_sand_attack.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_m_headbutt.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_m_horn_attack.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_m_take_down.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V105 -P4

$(MID_SUBDIR)/se_m_tail_whip.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_m_leer.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G128 -V110 -P4

$(MID_SUBDIR)/se_dex_search.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G127 -v100 -P5

$(MID_SUBDIR)/mus_rse_aqua_magma_hideout.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G576 -V084

$(MID_SUBDIR)/mus_rse_encounter_aqua.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G565 -V086

$(MID_SUBDIR)/mus_rse_route111.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G555 -V076

$(MID_SUBDIR)/mus_rse_encounter_suspicious.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G569 -V078

$(MID_SUBDIR)/mus_rse_b_arena.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G604 -V090

$(MID_SUBDIR)/mus_rse_b_dome.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G611 -V090

$(MID_SUBDIR)/mus_rse_b_dome_lobby.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G611 -V056

$(MID_SUBDIR)/mus_rse_b_factory.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G613 -V100

$(MID_SUBDIR)/mus_rse_b_frontier.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G603 -V094

$(MID_SUBDIR)/mus_rse_b_palace.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G608 -V105

$(MID_SUBDIR)/mus_rse_b_tower_rs.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G535 -V080

$(MID_SUBDIR)/mus_rse_b_pike.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G612 -V092

$(MID_SUBDIR)/mus_rse_vs_trainer.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G619 -V080 -P1

$(MID_SUBDIR)/mus_rse_vs_wild.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G617 -V080 -P1

$(MID_SUBDIR)/mus_rse_vs_aqua_magma_leader.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G626 -V080 -P1

$(MID_SUBDIR)/mus_rse_vs_aqua_magma.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G618 -V080 -P1

$(MID_SUBDIR)/mus_rse_vs_gym_leader.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G620 -V080 -P1

$(MID_SUBDIR)/mus_rse_vs_champion.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G621 -V080 -P1

$(MID_SUBDIR)/mus_rse_vs_kyogre_groudon.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G623 -V080 -P1

$(MID_SUBDIR)/mus_rse_vs_rival.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G624 -V080 -P1

$(MID_SUBDIR)/mus_rse_vs_regi.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G622 -V080 -P1

$(MID_SUBDIR)/mus_rse_vs_elite_four.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G625 -V080 -P1

$(MID_SUBDIR)/mus_rse_roulette.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G538 -V080

$(MID_SUBDIR)/mus_rse_lilycove_museum.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G520 -V080

$(MID_SUBDIR)/mus_rse_encounter_brendan.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G567 -V078

$(MID_SUBDIR)/mus_rse_encounter_male.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G528 -V080

$(MID_SUBDIR)/mus_rse_victory_road.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G575 -V076

$(MID_SUBDIR)/mus_rse_game_corner.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G572 -V072

$(MID_SUBDIR)/mus_rse_contest_winner.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G585 -V100

$(MID_SUBDIR)/mus_rse_contest_results.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G592 -V080

$(MID_SUBDIR)/mus_rse_contest_lobby.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G598 -V060

$(MID_SUBDIR)/mus_rse_contest.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G586 -V088

$(MID_SUBDIR)/mus_rse_cycling.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G549 -V083

$(MID_SUBDIR)/mus_rse_encounter_champion.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G600 -V076

$(MID_SUBDIR)/mus_rse_petalburg_woods.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G518 -V080

$(MID_SUBDIR)/mus_rse_abandoned_ship.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G530 -V080

$(MID_SUBDIR)/mus_rse_cave_of_origin.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G537 -V080

$(MID_SUBDIR)/mus_rse_underwater.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G557 -V094

$(MID_SUBDIR)/mus_rse_intro.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G560 -V090

$(MID_SUBDIR)/mus_rse_hall_of_fame.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G582 -V078

$(MID_SUBDIR)/mus_rse_route110.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G510 -V080

$(MID_SUBDIR)/mus_rse_route120.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G514 -V080

$(MID_SUBDIR)/mus_rse_route122.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G521 -V080

$(MID_SUBDIR)/mus_rse_route101.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G511 -V080

$(MID_SUBDIR)/mus_rse_dummy.s: %.s: %.mid
	$(MID) $< $@ -E -R40

$(MID_SUBDIR)/mus_rse_hall_of_fame_room.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G593 -V080

$(MID_SUBDIR)/mus_rse_end.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G602 -V036

$(MID_SUBDIR)/mus_rse_help.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G556 -V078

$(MID_SUBDIR)/mus_rse_level_up.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G512 -V090 -P5

$(MID_SUBDIR)/mus_rse_obtain_item.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G512 -V090 -P5

$(MID_SUBDIR)/mus_rse_evolved.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G512 -V090 -P5

$(MID_SUBDIR)/mus_rse_gsc_route38.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -V080

$(MID_SUBDIR)/mus_rse_slateport.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G579 -V070

$(MID_SUBDIR)/mus_rse_poke_mart.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G550 -V085

$(MID_SUBDIR)/mus_rse_oceanic_museum.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G523 -V080

$(MID_SUBDIR)/mus_rse_gym.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G513 -V080

$(MID_SUBDIR)/mus_rse_encounter_may.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G561 -V078

$(MID_SUBDIR)/mus_rse_encounter_female.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G553 -V072

$(MID_SUBDIR)/mus_rse_verdanturf.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G544 -V090

$(MID_SUBDIR)/mus_rse_rustboro.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G545 -V085

$(MID_SUBDIR)/mus_rse_route119.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G548 -V096

$(MID_SUBDIR)/mus_rse_encounter_intense.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G562 -V078

$(MID_SUBDIR)/mus_rse_weather_groudon.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G590 -V050

$(MID_SUBDIR)/mus_rse_dewford.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G573 -V078

$(MID_SUBDIR)/mus_rse_encounter_twins.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G595 -V075

$(MID_SUBDIR)/mus_rse_encounter_interviewer.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G599 -V062

$(MID_SUBDIR)/mus_rse_victory_trainer.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G558 -V091

$(MID_SUBDIR)/mus_rse_victory_wild.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G525 -V080

$(MID_SUBDIR)/mus_rse_victory_gym_leader.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G524 -V080

$(MID_SUBDIR)/mus_rse_victory_aqua_magma.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G570 -V088

$(MID_SUBDIR)/mus_rse_victory_league.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G529 -V080

$(MID_SUBDIR)/mus_rse_caught.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G525 -V080

$(MID_SUBDIR)/mus_rse_encounter_cool.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G563 -V086

$(MID_SUBDIR)/mus_rse_trick_house.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G594 -V070

$(MID_SUBDIR)/mus_rse_route113.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G564 -V084

$(MID_SUBDIR)/mus_rse_sailing.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G577 -V086

$(MID_SUBDIR)/mus_rse_mt_pyre.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G578 -V088

$(MID_SUBDIR)/mus_rse_sealed_chamber.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G584 -V100

$(MID_SUBDIR)/mus_rse_petalburg.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G515 -V080

$(MID_SUBDIR)/mus_rse_fortree.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G532 -V080

$(MID_SUBDIR)/mus_rse_oldale.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G519 -V080

$(MID_SUBDIR)/mus_rse_mt_pyre_exterior.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G580 -V080

$(MID_SUBDIR)/mus_rse_heal.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G512 -V090 -P5

$(MID_SUBDIR)/mus_rse_slots_jackpot.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G512 -V090 -P5

$(MID_SUBDIR)/mus_rse_slots_win.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G512 -V090 -P5

$(MID_SUBDIR)/mus_rse_obtain_badge.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G512 -V090 -P5

$(MID_SUBDIR)/mus_rse_obtain_berry.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G512 -V090 -P5

$(MID_SUBDIR)/mus_rse_obtain_b_points.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G603 -V090 -P5

$(MID_SUBDIR)/mus_rse_rg_photo.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G680 -V100 -P5

$(MID_SUBDIR)/mus_rse_evolution_intro.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G526 -V080

$(MID_SUBDIR)/mus_rse_obtain_symbol.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G603 -V100 -P5

$(MID_SUBDIR)/mus_rse_awaken_legend.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G512 -V090 -P5

$(MID_SUBDIR)/mus_rse_register_match_call.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G605 -V090 -P5

$(MID_SUBDIR)/mus_rse_move_deleted.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G512 -V090 -P5

$(MID_SUBDIR)/mus_rse_obtain_tmhm.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G512 -V090 -P5

$(MID_SUBDIR)/mus_rse_too_bad.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G512 -V090 -P5

$(MID_SUBDIR)/mus_rse_encounter_magma.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G587 -V072

$(MID_SUBDIR)/mus_rse_lilycove.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G554 -V085

$(MID_SUBDIR)/mus_rse_littleroot.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G551 -V100

$(MID_SUBDIR)/mus_rse_surf.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G517 -V080

$(MID_SUBDIR)/mus_rse_route104.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G547 -V097

$(MID_SUBDIR)/mus_rse_gsc_pewter.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -V080

$(MID_SUBDIR)/mus_rse_birch_lab.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G533 -V080

$(MID_SUBDIR)/mus_rse_abnormal_weather.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G589 -V080

$(MID_SUBDIR)/mus_rse_school.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G581 -V100

$(MID_SUBDIR)/mus_rse_c_comm_center.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -V080

$(MID_SUBDIR)/mus_rse_poke_center.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G546 -V092

$(MID_SUBDIR)/mus_rse_b_pyramid.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G606 -V079

$(MID_SUBDIR)/mus_rse_b_pyramid_top.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G607 -V077

$(MID_SUBDIR)/mus_rse_ever_grande.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G568 -V086

$(MID_SUBDIR)/mus_rse_rayquaza_appears.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G609 -V090

$(MID_SUBDIR)/mus_dp_intro.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127

$(MID_SUBDIR)/mus_dp_title.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127

$(MID_SUBDIR)/mus_dp_rowan.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127

$(MID_SUBDIR)/mus_dp_tv_broadcast.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V096

$(MID_SUBDIR)/mus_dp_tv_end.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090 -P5

$(MID_SUBDIR)/mus_dp_twinleaf_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V125

$(MID_SUBDIR)/mus_dp_twinleaf_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_rival.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V070

$(MID_SUBDIR)/mus_dp_route201_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127

$(MID_SUBDIR)/mus_dp_route201_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127

$(MID_SUBDIR)/mus_dp_lake.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V088

$(MID_SUBDIR)/mus_dp_lake_event.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V096

$(MID_SUBDIR)/mus_dp_vs_wild.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V088

$(MID_SUBDIR)/mus_dp_victory_wild.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V114

$(MID_SUBDIR)/mus_dp_dawn.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_lucas.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_obtain_item.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100 -P5

$(MID_SUBDIR)/mus_dp_sandgem_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_sandgem_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_rowan_lab.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127

$(MID_SUBDIR)/mus_dp_follow_me.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V125

$(MID_SUBDIR)/mus_dp_poke_center_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_dp_poke_center_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127

$(MID_SUBDIR)/mus_dp_heal.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100 -P5

$(MID_SUBDIR)/mus_dp_encounter_boy.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V105

$(MID_SUBDIR)/mus_dp_encounter_girl.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V095

$(MID_SUBDIR)/mus_dp_vs_trainer.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V088

$(MID_SUBDIR)/mus_dp_victory_trainer.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V118

$(MID_SUBDIR)/mus_dp_jubilife_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V096

$(MID_SUBDIR)/mus_dp_jubilife_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V104

$(MID_SUBDIR)/mus_dp_obtain_key_item.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V094 -p5

$(MID_SUBDIR)/mus_dp_poke_mart.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V082

$(MID_SUBDIR)/mus_dp_route203_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_route203_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_vs_rival.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V088

$(MID_SUBDIR)/mus_dp_oreburgh_gate.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_dp_obtain_tmhm.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100 -P5

$(MID_SUBDIR)/mus_dp_oreburgh_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_oreburgh_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_oreburgh_mine.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V120

$(MID_SUBDIR)/mus_dp_gym.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V118

$(MID_SUBDIR)/mus_dp_vs_gym_leader.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V088

$(MID_SUBDIR)/mus_dp_victory_gym_leader.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V120

$(MID_SUBDIR)/mus_dp_obtain_badge.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100 -P5

$(MID_SUBDIR)/mus_dp_encounter_twins.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V082

$(MID_SUBDIR)/mus_dp_level_up.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V125 -P5

$(MID_SUBDIR)/mus_dp_floaroma_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_dp_floaroma_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_dp_obtain_berry.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100 -P5

$(MID_SUBDIR)/mus_dp_route205_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V086

$(MID_SUBDIR)/mus_dp_route205_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V086

$(MID_SUBDIR)/mus_dp_encounter_galactic.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V068

$(MID_SUBDIR)/mus_dp_vs_galactic_grunt.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_eterna_forest.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V088

$(MID_SUBDIR)/mus_dp_lets_go_together.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V106 -P5

$(MID_SUBDIR)/mus_dp_eterna_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V096

$(MID_SUBDIR)/mus_dp_eterna_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V098

$(MID_SUBDIR)/mus_dp_galactic_eterna_building.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_vs_galactic_commander.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_victory_galactic.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_evolution.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_evolved.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V094 -P5

$(MID_SUBDIR)/mus_dp_cycling.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V115

$(MID_SUBDIR)/mus_dp_encounter_cyclist.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V095

$(MID_SUBDIR)/mus_dp_route206_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V108

$(MID_SUBDIR)/mus_dp_route206_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V108

$(MID_SUBDIR)/mus_dp_hearthome_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V092

$(MID_SUBDIR)/mus_dp_hearthome_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_route209_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V086

$(MID_SUBDIR)/mus_dp_route209_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V086

$(MID_SUBDIR)/mus_dp_encounter_hiker.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V088

$(MID_SUBDIR)/mus_dp_solaceon_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_dp_solaceon_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_dp_poketch.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100 -P5

$(MID_SUBDIR)/mus_dp_route210_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V080

$(MID_SUBDIR)/mus_dp_route210_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V080

$(MID_SUBDIR)/mus_dp_veilstone_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V120

$(MID_SUBDIR)/mus_dp_veilstone_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V118

$(MID_SUBDIR)/mus_dp_valor_lakefront_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V096

$(MID_SUBDIR)/mus_dp_valor_lakefront_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V095

$(MID_SUBDIR)/mus_dp_canalave_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V108

$(MID_SUBDIR)/mus_dp_canalave_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_dp_route216_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_route216_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_snowpoint_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_snowpoint_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_galactic_hq.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V086

$(MID_SUBDIR)/mus_dp_vs_galactic_boss.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_galactic_hq_basement.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127

$(MID_SUBDIR)/mus_dp_mt_coronet.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V112

$(MID_SUBDIR)/mus_dp_spear_pillar.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_dp_legend_appears.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_catastrophe.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_vs_dialga_palkia.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_sunyshore_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_sunyshore_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_victory_road.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_encounter_ace_trainer.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V080

$(MID_SUBDIR)/mus_dp_pokemon_league_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_dp_pokemon_league_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_dp_fight_area_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V080

$(MID_SUBDIR)/mus_dp_fight_area_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V080

$(MID_SUBDIR)/mus_dp_route225_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V094

$(MID_SUBDIR)/mus_dp_route225_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V094

$(MID_SUBDIR)/mus_dp_route228_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_route228_night.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_wfc.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_tv_station.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V108

$(MID_SUBDIR)/mus_dp_gts.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V096

$(MID_SUBDIR)/mus_dp_surf.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V115

$(MID_SUBDIR)/mus_dp_move_deleted.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127 -P5

$(MID_SUBDIR)/mus_dp_encounter_intense.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V070

$(MID_SUBDIR)/mus_dp_encounter_sailor.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V070

$(MID_SUBDIR)/mus_dp_underground.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_flag_captured.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_encounter_lady.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_old_chateau.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127

$(MID_SUBDIR)/mus_dp_great_marsh.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V084

$(MID_SUBDIR)/mus_dp_encounter_suspicious.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V080

$(MID_SUBDIR)/mus_dp_game_corner.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127

$(MID_SUBDIR)/mus_dp_slots_win.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V080

$(MID_SUBDIR)/mus_dp_slots_jackpot.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V075

$(MID_SUBDIR)/mus_dp_encounter_rich.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V080

$(MID_SUBDIR)/mus_dp_lake_caverns.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_vs_uxie_mesprit_azelf.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V078

$(MID_SUBDIR)/mus_dp_poke_radar.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V105

$(MID_SUBDIR)/mus_dp_encounter_artist.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V115

$(MID_SUBDIR)/mus_dp_amity_square.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V115

$(MID_SUBDIR)/mus_dp_obtain_accessory.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V088 -P5

$(MID_SUBDIR)/mus_dp_contest_lobby.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V056

$(MID_SUBDIR)/mus_dp_poffins.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_contest.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_dp_contest_dress_up.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_dp_dance_easy.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_dance_difficult.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V095

$(MID_SUBDIR)/mus_dp_contest_results.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V080

$(MID_SUBDIR)/mus_dp_contest_winner.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_b_tower.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V078

$(MID_SUBDIR)/mus_dp_stark_mountain.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_vs_legend.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V092

$(MID_SUBDIR)/mus_dp_mystery_gift.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_inside_pokemon_league.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_encounter_elite_four.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V086

$(MID_SUBDIR)/mus_dp_vs_elite_four.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V094

$(MID_SUBDIR)/mus_dp_victory_elite_four.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_encounter_champion.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_dp_vs_champion.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_dp_victory_champion.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V105

$(MID_SUBDIR)/mus_dp_hall_of_fame_room.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V112

$(MID_SUBDIR)/mus_dp_hall_of_fame.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V088

$(MID_SUBDIR)/mus_dp_credits.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127

$(MID_SUBDIR)/mus_dp_vs_arceus.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V092

$(MID_SUBDIR)/mus_dp_azure_flute.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127

$(MID_SUBDIR)/mus_dp_hall_of_origin.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127

$(MID_SUBDIR)/mus_pl_intro.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127

$(MID_SUBDIR)/mus_pl_title.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127

$(MID_SUBDIR)/mus_pl_tv_broadcast.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V096

$(MID_SUBDIR)/mus_pl_tv_end.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090 -P5

$(MID_SUBDIR)/mus_pl_looker.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V115

$(MID_SUBDIR)/mus_pl_global_terminal.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V085

$(MID_SUBDIR)/mus_pl_wifi_plaza.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_pl_wifi_minigames.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V115

$(MID_SUBDIR)/mus_pl_win_minigame.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_pl_wifi_parade.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_pl_giratina_appears_1.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_pl_giratina_appears_2.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V115

$(MID_SUBDIR)/mus_pl_distortion_world.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V105

$(MID_SUBDIR)/mus_pl_vs_giratina.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V105

$(MID_SUBDIR)/mus_pl_spin_trade.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_pl_mystery_gift.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V090

$(MID_SUBDIR)/mus_pl_contest_cute.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_pl_contest_cool.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_pl_contest_tough.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_pl_contest_beauty.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_pl_contest_smart.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_pl_twinleaf_music_box.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V100

$(MID_SUBDIR)/mus_pl_lilycove_bossa_nova.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V120

$(MID_SUBDIR)/mus_pl_fight_area_day.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V080

$(MID_SUBDIR)/mus_pl_b_arcade.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_pl_obtain_arcade_points.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V120

$(MID_SUBDIR)/mus_pl_b_hall.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V115

$(MID_SUBDIR)/mus_pl_b_factory.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_pl_b_castle.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V110

$(MID_SUBDIR)/mus_pl_obtain_castle_points.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V105

$(MID_SUBDIR)/mus_pl_obtain_b_points.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V127

$(MID_SUBDIR)/mus_pl_vs_frontier_brain.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V120

$(MID_SUBDIR)/mus_pl_victory_frontier_brain.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V108

$(MID_SUBDIR)/mus_pl_vs_regi.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G191 -V105

$(MID_SUBDIR)/mus_hg_intro.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V122

$(MID_SUBDIR)/mus_hg_title.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V109

$(MID_SUBDIR)/mus_hg_new_game.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V073

$(MID_SUBDIR)/mus_hg_new_bark.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V080

$(MID_SUBDIR)/mus_hg_follow_me_1.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V079

$(MID_SUBDIR)/mus_hg_lyra.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V087

$(MID_SUBDIR)/mus_hg_ethan.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V087

$(MID_SUBDIR)/mus_hg_elm_lab.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V080

$(MID_SUBDIR)/mus_hg_obtain_key_item.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V081 -P5

$(MID_SUBDIR)/mus_hg_route29.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V063

$(MID_SUBDIR)/mus_hg_vs_wild.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V110

$(MID_SUBDIR)/mus_hg_victory_wild.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V110

$(MID_SUBDIR)/mus_hg_caught.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V072

$(MID_SUBDIR)/mus_hg_level_up.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V102 -P5

$(MID_SUBDIR)/mus_hg_cherrygrove.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V068

$(MID_SUBDIR)/mus_hg_follow_me_2.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V078

$(MID_SUBDIR)/mus_hg_poke_center.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V075

$(MID_SUBDIR)/mus_hg_heal.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V080 -P5

$(MID_SUBDIR)/mus_hg_encounter_boy_1.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V102

$(MID_SUBDIR)/mus_hg_vs_trainer.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V111

$(MID_SUBDIR)/mus_hg_victory_trainer.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V110

$(MID_SUBDIR)/mus_hg_route30.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V093

$(MID_SUBDIR)/mus_hg_dex_rating_1.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V092 -P5

$(MID_SUBDIR)/mus_hg_violet.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V078

$(MID_SUBDIR)/mus_hg_sprout_tower.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V062

$(MID_SUBDIR)/mus_hg_encounter_sage.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V084

$(MID_SUBDIR)/mus_hg_poke_mart.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V078

$(MID_SUBDIR)/mus_hg_obtain_egg.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V088 -P5

$(MID_SUBDIR)/mus_hg_kimono_girl.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V088

$(MID_SUBDIR)/mus_hg_union_cave.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V080

$(MID_SUBDIR)/mus_hg_obtain_item.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V081 -P5

$(MID_SUBDIR)/mus_hg_ruins_of_alph.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V093

$(MID_SUBDIR)/mus_hg_radio_unown.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V089

$(MID_SUBDIR)/mus_hg_dex_rating_2.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V095 -P5

$(MID_SUBDIR)/mus_hg_azalea.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V073

$(MID_SUBDIR)/mus_hg_encounter_rocket.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V071

$(MID_SUBDIR)/mus_hg_vs_rocket.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V102

$(MID_SUBDIR)/mus_hg_route34.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V092

$(MID_SUBDIR)/mus_hg_encounter_rival.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V089

$(MID_SUBDIR)/mus_hg_vs_rival.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V084

$(MID_SUBDIR)/mus_hg_evolution.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V080

$(MID_SUBDIR)/mus_hg_evolved.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V076 -p5

$(MID_SUBDIR)/mus_hg_goldenrod.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V072

$(MID_SUBDIR)/mus_hg_gym.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V080

$(MID_SUBDIR)/mus_hg_vs_gym_leader.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V108

$(MID_SUBDIR)/mus_hg_victory_gym_leader.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V102

$(MID_SUBDIR)/mus_hg_obtain_badge.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V104 -p5

$(MID_SUBDIR)/mus_hg_radio_jingle.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V082

$(MID_SUBDIR)/mus_hg_radio_buena.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V092

$(MID_SUBDIR)/mus_hg_obtain_tmhm.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V087 -p5

$(MID_SUBDIR)/mus_hg_game_corner.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V092

$(MID_SUBDIR)/mus_hg_game_corner_win.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V078

$(MID_SUBDIR)/mus_hg_obtain_accessory.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V072 -p5

$(MID_SUBDIR)/mus_hg_global_terminal.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V075

$(MID_SUBDIR)/mus_hg_gts.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V091

$(MID_SUBDIR)/mus_hg_dex_rating_3.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V081 -p5

$(MID_SUBDIR)/mus_hg_cycling.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V085

$(MID_SUBDIR)/mus_hg_encounter_girl_1.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V084

$(MID_SUBDIR)/mus_hg_pokegear_registered.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V097 -p5

$(MID_SUBDIR)/mus_hg_national_park.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V087

$(MID_SUBDIR)/mus_hg_obtain_berry.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V082 -p5

$(MID_SUBDIR)/mus_hg_ecruteak.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V054

$(MID_SUBDIR)/mus_hg_dance_theater.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V080

$(MID_SUBDIR)/mus_hg_burned_tower.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V070

$(MID_SUBDIR)/mus_hg_eusine.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V086

$(MID_SUBDIR)/mus_hg_radio_oak.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V089

$(MID_SUBDIR)/mus_hg_dex_rating_4.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V092 -p5

$(MID_SUBDIR)/mus_hg_route38.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V083

$(MID_SUBDIR)/mus_hg_radio_march.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V082

$(MID_SUBDIR)/mus_hg_vs_raikou.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V098

$(MID_SUBDIR)/mus_hg_lighthouse.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V050

$(MID_SUBDIR)/mus_hg_surf.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V085

$(MID_SUBDIR)/mus_hg_cianwood.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V073

$(MID_SUBDIR)/mus_hg_pt_special.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V098 -p5

$(MID_SUBDIR)/mus_hg_route42.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V085

$(MID_SUBDIR)/mus_hg_radio_rocket.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V092

$(MID_SUBDIR)/mus_hg_team_rocket_hq.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V081

$(MID_SUBDIR)/mus_hg_encounter_suspicious_1.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V073

$(MID_SUBDIR)/mus_hg_rival_exit.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V089

$(MID_SUBDIR)/mus_hg_rocket_takeover.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V069

$(MID_SUBDIR)/mus_hg_ice_path.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V072

$(MID_SUBDIR)/mus_hg_move_deleted.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V105 -p5

$(MID_SUBDIR)/mus_hg_dragons_den.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V087

$(MID_SUBDIR)/mus_hg_clair.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V089

$(MID_SUBDIR)/mus_hg_vs_entei.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V098

$(MID_SUBDIR)/mus_hg_bell_tower.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V080

$(MID_SUBDIR)/mus_hg_kimono_girl_dance.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V088

$(MID_SUBDIR)/mus_hg_ho_oh_appears.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V108

$(MID_SUBDIR)/mus_hg_vs_ho_oh.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V079

$(MID_SUBDIR)/mus_hg_route26.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V078

$(MID_SUBDIR)/mus_hg_ss_aqua.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V077

$(MID_SUBDIR)/mus_hg_vermilion.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V062

$(MID_SUBDIR)/mus_hg_vs_gym_leader_kanto.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V075

$(MID_SUBDIR)/mus_hg_lavender.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V073

$(MID_SUBDIR)/mus_hg_rock_tunnel.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V079

$(MID_SUBDIR)/mus_hg_vs_wild_kanto.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V103

$(MID_SUBDIR)/mus_hg_dex_rating_5.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V092 -p5

$(MID_SUBDIR)/mus_hg_cerulean.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V073

$(MID_SUBDIR)/mus_hg_route24.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V080

$(MID_SUBDIR)/mus_hg_magnet_train.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V100

$(MID_SUBDIR)/mus_hg_radio_lullaby.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V082

$(MID_SUBDIR)/mus_hg_vs_suicune.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V098

$(MID_SUBDIR)/mus_hg_celadon.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V063

$(MID_SUBDIR)/mus_hg_route11.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V077

$(MID_SUBDIR)/mus_hg_radio_poke_flute.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V089

$(MID_SUBDIR)/mus_hg_viridian_forest.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V087

$(MID_SUBDIR)/mus_hg_encounter_boy_2.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V089

$(MID_SUBDIR)/mus_hg_pewter.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V058

$(MID_SUBDIR)/mus_hg_route3.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V087

$(MID_SUBDIR)/mus_hg_encounter_suspicious_2.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V086

$(MID_SUBDIR)/mus_hg_mt_moon_square.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V105

$(MID_SUBDIR)/mus_hg_route1.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V085

$(MID_SUBDIR)/mus_hg_pallet.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V080

$(MID_SUBDIR)/mus_hg_oak.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V100

$(MID_SUBDIR)/mus_hg_dex_rating_6.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V092 -p5

$(MID_SUBDIR)/mus_hg_encounter_girl_2.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V097

$(MID_SUBDIR)/mus_hg_vs_trainer_kanto.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V119

$(MID_SUBDIR)/mus_hg_cinnabar.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V075

$(MID_SUBDIR)/mus_hg_route47.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V073

$(MID_SUBDIR)/mus_hg_safari_zone_gate.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V079

$(MID_SUBDIR)/mus_hg_safari_zone.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V087

$(MID_SUBDIR)/mus_hg_radio_variety.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V073

$(MID_SUBDIR)/mus_hg_bug_contest_prep.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V052

$(MID_SUBDIR)/mus_hg_bug_catching_contest.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V100

$(MID_SUBDIR)/mus_hg_bug_contest_3rd_place.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V097 -p5

$(MID_SUBDIR)/mus_hg_bug_contest_2nd_place.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V102 -p5

$(MID_SUBDIR)/mus_hg_bug_contest_1st_place.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V097 -p5

$(MID_SUBDIR)/mus_hg_pokeathlon_lobby.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V085

$(MID_SUBDIR)/mus_hg_pokeathlon_ready.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V102 -p5

$(MID_SUBDIR)/mus_hg_pokeathlon_start.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V090

$(MID_SUBDIR)/mus_hg_pokeathlon_before.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V089

$(MID_SUBDIR)/mus_hg_pokeathlon_event.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V096

$(MID_SUBDIR)/mus_hg_pokeathlon_1st_place.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V098 -p5

$(MID_SUBDIR)/mus_hg_pokeathlon_finals.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V097

$(MID_SUBDIR)/mus_hg_pokeathlon_results.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V088

$(MID_SUBDIR)/mus_hg_pokeathlon_end.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V098

$(MID_SUBDIR)/mus_hg_pokeathlon_winner.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V088

$(MID_SUBDIR)/mus_hg_mystery_gift.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V087

$(MID_SUBDIR)/mus_hg_b_tower_reception.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V070

$(MID_SUBDIR)/mus_hg_b_tower.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V097

$(MID_SUBDIR)/mus_hg_obtain_b_points.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V107 -p5

$(MID_SUBDIR)/mus_hg_b_factory.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V077

$(MID_SUBDIR)/mus_hg_b_hall.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V080

$(MID_SUBDIR)/mus_hg_b_arcade.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V077

$(MID_SUBDIR)/mus_hg_obtain_arcade_points.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V098 -p5

$(MID_SUBDIR)/mus_hg_b_castle.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V097

$(MID_SUBDIR)/mus_hg_obtain_castle_points.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V086 -p5

$(MID_SUBDIR)/mus_hg_vs_frontier_brain.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V100

$(MID_SUBDIR)/mus_hg_victory_frontier_brain.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V097

$(MID_SUBDIR)/mus_hg_radio_trainer.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V073

$(MID_SUBDIR)/mus_hg_spin_trade.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V093

$(MID_SUBDIR)/mus_hg_wfc.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V079

$(MID_SUBDIR)/mus_hg_wifi_plaza.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V085

$(MID_SUBDIR)/mus_hg_wifi_minigames.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V095

$(MID_SUBDIR)/mus_hg_win_minigame.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V091 -p5

$(MID_SUBDIR)/mus_hg_wifi_parade.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V092

$(MID_SUBDIR)/mus_hg_radio_route101.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V069

$(MID_SUBDIR)/mus_hg_radio_route201.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V104

$(MID_SUBDIR)/mus_hg_pokewalker.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V106

$(MID_SUBDIR)/mus_hg_spiky_eared_pichu.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V100

$(MID_SUBDIR)/mus_hg_encounter_kimono_girl.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V084

$(MID_SUBDIR)/mus_hg_lugia_appears.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V092

$(MID_SUBDIR)/mus_hg_vs_lugia.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V102

$(MID_SUBDIR)/mus_hg_victory_road.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V087

$(MID_SUBDIR)/mus_hg_pokemon_league.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V082

$(MID_SUBDIR)/mus_hg_vs_champion.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V113

$(MID_SUBDIR)/mus_hg_hall_of_fame.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V099

$(MID_SUBDIR)/mus_hg_credits.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V059

$(MID_SUBDIR)/mus_hg_end.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V074

$(MID_SUBDIR)/mus_hg_vs_kyogre_groudon.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V110

$(MID_SUBDIR)/mus_hg_sinjou_ruins.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V088

$(MID_SUBDIR)/mus_hg_vs_arceus.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V099

$(MID_SUBDIR)/mus_hg_evolution_no_intro.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -v080

$(MID_SUBDIR)/mus_hg_card_flip.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V098 -p5

$(MID_SUBDIR)/mus_hg_card_flip_game_over.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V097 -p5

$(MID_SUBDIR)/mus_hg_lets_go_together.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G229 -V088 -p5

$(MID_SUBDIR)/mus_bw_game_freak.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G278 -V070

$(MID_SUBDIR)/mus_bw_intro.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V092

$(MID_SUBDIR)/mus_bw_the_pokemon.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V093

$(MID_SUBDIR)/mus_bw_title.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V106

$(MID_SUBDIR)/mus_bw_new_game_1.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V045

$(MID_SUBDIR)/mus_bw_new_game_2.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V090

$(MID_SUBDIR)/mus_bw_beginning.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V103 -X

$(MID_SUBDIR)/mus_bw_nuvema.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V071

$(MID_SUBDIR)/mus_bw_vs_rival.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V079

$(MID_SUBDIR)/mus_bw_follow_me_1.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V066

$(MID_SUBDIR)/mus_bw_juniper_1.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V100

$(MID_SUBDIR)/mus_bw_juniper_lab.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V066

$(MID_SUBDIR)/mus_bw_obtain_key_item.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V085 -p5

$(MID_SUBDIR)/mus_bw_friend.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V081

$(MID_SUBDIR)/mus_bw_route1.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V063

$(MID_SUBDIR)/mus_bw_vs_wild.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V094

$(MID_SUBDIR)/mus_bw_victory_wild.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V116

$(MID_SUBDIR)/mus_bw_level_up.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V090 -p5

$(MID_SUBDIR)/mus_bw_accumula.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V060

$(MID_SUBDIR)/mus_bw_follow_me_2.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V066

$(MID_SUBDIR)/mus_bw_poke_center.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V066

$(MID_SUBDIR)/mus_bw_heal.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V070 -p5

$(MID_SUBDIR)/mus_bw_dex_rating_1.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V079 -p5

$(MID_SUBDIR)/mus_bw_sage.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V099

$(MID_SUBDIR)/mus_bw_route2_spring.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V082

$(MID_SUBDIR)/mus_bw_route2_summer.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V082

$(MID_SUBDIR)/mus_bw_route2_autumn.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V082

$(MID_SUBDIR)/mus_bw_route2_winter.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V082

$(MID_SUBDIR)/mus_bw_xtran_call.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V095 -p5

$(MID_SUBDIR)/mus_bw_encounter_youngster.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V064

$(MID_SUBDIR)/mus_bw_vs_trainer.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V090

$(MID_SUBDIR)/mus_bw_victory_trainer.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V095

$(MID_SUBDIR)/mus_bw_encounter_lass.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V065

$(MID_SUBDIR)/mus_bw_obtain_item.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V070 -p5

$(MID_SUBDIR)/mus_bw_striaton.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V064

$(MID_SUBDIR)/mus_bw_dex_rating_2.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V081 -p5

$(MID_SUBDIR)/mus_bw_dreamyard.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V093

$(MID_SUBDIR)/mus_bw_dreamyard_b1f.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V093

$(MID_SUBDIR)/mus_bw_plasma.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V073

$(MID_SUBDIR)/mus_bw_vs_plasma.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V120

$(MID_SUBDIR)/mus_bw_victory_plasma.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G277 -V079

$(MID_SUBDIR)/mus_bw_evolution.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V068

$(MID_SUBDIR)/mus_bw_evolution_no_intro.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V076

$(MID_SUBDIR)/mus_bw_evolved.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V072 -p5

$(MID_SUBDIR)/mus_bw_encounter_twins.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V067

$(MID_SUBDIR)/mus_bw_cheren.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V059

$(MID_SUBDIR)/mus_bw_trouble.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V092

$(MID_SUBDIR)/mus_bw_nacrene.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V070

$(MID_SUBDIR)/mus_bw_dex_rating_3.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V070 -p5

$(MID_SUBDIR)/mus_bw_gym.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V056

$(MID_SUBDIR)/mus_bw_vs_gym_leader.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V106

$(MID_SUBDIR)/mus_bw_vs_winning.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V090

$(MID_SUBDIR)/mus_bw_victory_gym_leader.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V096

$(MID_SUBDIR)/mus_bw_obtain_badge.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V081 -p5

$(MID_SUBDIR)/mus_bw_obtain_tmhm.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V093 -p5

$(MID_SUBDIR)/mus_bw_gate.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V079

$(MID_SUBDIR)/mus_bw_skyarrow_bridge.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V106

$(MID_SUBDIR)/mus_bw_castelia.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V064

$(MID_SUBDIR)/mus_bw_encounter_clerk.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V073

$(MID_SUBDIR)/mus_bw_route4_spring.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V086

$(MID_SUBDIR)/mus_bw_route4_summer.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V086

$(MID_SUBDIR)/mus_bw_route4_autumn.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V086

$(MID_SUBDIR)/mus_bw_route4_winter.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V086

$(MID_SUBDIR)/mus_bw_encounter_backpacker.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V080

$(MID_SUBDIR)/mus_bw_nimbasa.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V073

$(MID_SUBDIR)/mus_bw_bianca.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V052

$(MID_SUBDIR)/mus_bw_emotion.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V090

$(MID_SUBDIR)/mus_bw_n.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V078

$(MID_SUBDIR)/mus_bw_vs_n_1.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V126

$(MID_SUBDIR)/mus_bw_vs_in_pinch.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V086 -p1

$(MID_SUBDIR)/mus_bw_cycling.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V082

$(MID_SUBDIR)/mus_bw_alder.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V068

$(MID_SUBDIR)/mus_bw_drawbridge.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V124

$(MID_SUBDIR)/mus_bw_driftveil.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V076

$(MID_SUBDIR)/mus_bw_cold_storage.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V057

$(MID_SUBDIR)/mus_bw_route6_spring.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V076

$(MID_SUBDIR)/mus_bw_route6_summer.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V076

$(MID_SUBDIR)/mus_bw_route6_autumn.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V076

$(MID_SUBDIR)/mus_bw_route6_winter.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V076

$(MID_SUBDIR)/mus_bw_encounter_parasol.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V050

$(MID_SUBDIR)/mus_bw_encounter_scientist.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V059

$(MID_SUBDIR)/mus_bw_chargestone_cave.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V107

$(MID_SUBDIR)/mus_bw_chargestone_cave_b1f.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V107

$(MID_SUBDIR)/mus_bw_chargestone_cave_b2f.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V107

$(MID_SUBDIR)/mus_bw_mistralton.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V089

$(MID_SUBDIR)/mus_bw_juniper_2.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V083

$(MID_SUBDIR)/mus_bw_dex_rating_4.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V082 -p5

$(MID_SUBDIR)/mus_bw_move_deleted.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V115 -p5

$(MID_SUBDIR)/mus_bw_encounter_psychic.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V086

$(MID_SUBDIR)/mus_bw_icirrus.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V064

$(MID_SUBDIR)/mus_bw_dragonspiral_tower.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V089

$(MID_SUBDIR)/mus_bw_encounter_plasma.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V088

$(MID_SUBDIR)/mus_bw_dragonspiral_tower_top.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V094

$(MID_SUBDIR)/mus_bw_relic_castle.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V074

$(MID_SUBDIR)/mus_bw_obtain_stone.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V088 -p5

$(MID_SUBDIR)/mus_bw_tubeline_bridge.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V060

$(MID_SUBDIR)/mus_bw_poke_mart.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V088

$(MID_SUBDIR)/mus_bw_encounter_roughneck.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V056

$(MID_SUBDIR)/mus_bw_opelucid_black.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V058

$(MID_SUBDIR)/mus_bw_opelucid_white.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V080 -X

$(MID_SUBDIR)/mus_bw_route10.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V094

$(MID_SUBDIR)/mus_bw_victory_road.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V098

$(MID_SUBDIR)/mus_bw_encounter_ace_trainer.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V061

$(MID_SUBDIR)/mus_bw_pokemon_league.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V092

$(MID_SUBDIR)/mus_bw_vs_elite_four.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V090

$(MID_SUBDIR)/mus_bw_n_castle_appears.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V117

$(MID_SUBDIR)/mus_bw_n_castle_bridge.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V110

$(MID_SUBDIR)/mus_bw_n_castle.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V110

$(MID_SUBDIR)/mus_bw_n_room.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V089

$(MID_SUBDIR)/mus_bw_legend_come.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V111

$(MID_SUBDIR)/mus_bw_legend_born.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V118

$(MID_SUBDIR)/mus_bw_vs_reshiram_zekrom.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V091 -X

$(MID_SUBDIR)/mus_bw_vs_n_2.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V105

$(MID_SUBDIR)/mus_bw_ghetsis.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V088

$(MID_SUBDIR)/mus_bw_vs_ghetsis.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V126

$(MID_SUBDIR)/mus_bw_farewell.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V111 -X

$(MID_SUBDIR)/mus_bw_credits.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V106

$(MID_SUBDIR)/mus_bw_looker.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V078

$(MID_SUBDIR)/mus_bw_obtain_egg.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V072 -p5

$(MID_SUBDIR)/mus_bw_royal_unova.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V078

$(MID_SUBDIR)/mus_bw_wfc.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V065

$(MID_SUBDIR)/mus_bw_global_terminal.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V094

$(MID_SUBDIR)/mus_bw_gts.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V100

$(MID_SUBDIR)/mus_bw_spin_trade.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V061

$(MID_SUBDIR)/mus_bw_unity_tower.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V074

$(MID_SUBDIR)/mus_bw_dex_rating_5.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V076 -p5

$(MID_SUBDIR)/mus_bw_gear_station.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V057

$(MID_SUBDIR)/mus_bw_battle_subway.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V071

$(MID_SUBDIR)/mus_bw_vs_subway_trainer.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V112

$(MID_SUBDIR)/mus_bw_obtain_b_points.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V081 -p5

$(MID_SUBDIR)/mus_bw_musical_theater.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V113

$(MID_SUBDIR)/mus_bw_obtain_accessory.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V063 -p5

$(MID_SUBDIR)/mus_bw_musical_dress_up.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V074

$(MID_SUBDIR)/mus_bw_musical_curtain_raises.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V072

$(MID_SUBDIR)/mus_bw_musical_stardom.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G277 -V074

$(MID_SUBDIR)/mus_bw_musical_forest_stroll.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V084

$(MID_SUBDIR)/mus_bw_musical_a_sweet_soiree.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V079

$(MID_SUBDIR)/mus_bw_musical_exciting_nimbasa.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V074

$(MID_SUBDIR)/mus_bw_musical_dlc_munna.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G278 -V080

$(MID_SUBDIR)/mus_bw_musical_dlc_smash.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G278 -V080

$(MID_SUBDIR)/mus_bw_musical_dlc_festa.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G278 -V080

$(MID_SUBDIR)/mus_bw_musical_dlc_relic.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G278 -V080

$(MID_SUBDIR)/mus_bw_musical_dlc_runpa.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G278 -V080

$(MID_SUBDIR)/mus_bw_ferris_wheel.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V063

$(MID_SUBDIR)/mus_bw_feeling_check.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G277 -V110 -p5

$(MID_SUBDIR)/mus_bw_feeling_check_high.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G277 -V066 -p5

$(MID_SUBDIR)/mus_bw_feeling_check_medium.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G277 -V066 -p5

$(MID_SUBDIR)/mus_bw_feeling_check_low.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G277 -V066 -p5

$(MID_SUBDIR)/mus_bw_vs_legend.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V106

$(MID_SUBDIR)/mus_bw_anville_town.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V082

$(MID_SUBDIR)/mus_bw_marvelous_bridge.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V089

$(MID_SUBDIR)/mus_bw_route12_spring.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V071

$(MID_SUBDIR)/mus_bw_route12_summer.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V071

$(MID_SUBDIR)/mus_bw_route12_autumn.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V071

$(MID_SUBDIR)/mus_bw_route12_winter.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V071

$(MID_SUBDIR)/mus_bw_encounter_cyclist.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V108

$(MID_SUBDIR)/mus_bw_poketransfer_lab.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V077

$(MID_SUBDIR)/mus_bw_poketransfer_box.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V085

$(MID_SUBDIR)/mus_bw_poketransfer_game.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V073

$(MID_SUBDIR)/mus_bw_encounter_pokefan.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V058

$(MID_SUBDIR)/mus_bw_black_city.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V076

$(MID_SUBDIR)/mus_bw_white_forest.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V098

$(MID_SUBDIR)/mus_bw_game_sync.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V086

$(MID_SUBDIR)/mus_bw_entralink.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V078

$(MID_SUBDIR)/mus_bw_funfest_start.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V112 -p5

$(MID_SUBDIR)/mus_bw_entralink_visit.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V094

$(MID_SUBDIR)/mus_bw_funfest_clear.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V105 -p5

$(MID_SUBDIR)/mus_bw_funfest_failed.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V118 -p5

$(MID_SUBDIR)/mus_bw_encounter_gentleman.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V096

$(MID_SUBDIR)/mus_bw_undella_spring.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V077

$(MID_SUBDIR)/mus_bw_undella_summer.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V094

$(MID_SUBDIR)/mus_bw_cynthia.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V056

$(MID_SUBDIR)/mus_bw_vs_cynthia.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G279 -V068

$(MID_SUBDIR)/mus_bw_lostlorn_forest.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G277 -V062

$(MID_SUBDIR)/mus_bw_vs_wild_strong.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V096

$(MID_SUBDIR)/mus_bw_surf.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V068

$(MID_SUBDIR)/mus_bw_abyssal_ruins.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V084

$(MID_SUBDIR)/mus_bw_lacunosa.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V090

$(MID_SUBDIR)/mus_bw_village_bridge.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G280 -V090 -X

$(MID_SUBDIR)/mus_bw_mystery_gift.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V052

$(MID_SUBDIR)/mus_bw_battle_competition.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V092

$(MID_SUBDIR)/mus_bw_rocket.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V064

$(MID_SUBDIR)/mus_bw_vs_kyurem.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V091 -X

$(MID_SUBDIR)/mus_bw_dex_rating_6.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V076 -p5

$(MID_SUBDIR)/mus_bw_vs_champion.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G276 -V094

$(MID_SUBDIR)/mus_bw_victory_champion.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G275 -V090

$(MID_SUBDIR)/mus_bw_hall_of_fame.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G277 -V074

$(MID_SUBDIR)/mus_bw_relic_song.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V089

$(MID_SUBDIR)/mus_bw_vs_wcs_champion.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V092

$(MID_SUBDIR)/mus_bw_obtain_berry.s: %.s: %.mid
	$(MID) $< $@ -E -R5 -G274 -V091 -p5
