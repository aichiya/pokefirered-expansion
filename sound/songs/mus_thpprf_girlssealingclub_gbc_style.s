	.include "MPlayDef.s"

	.equ	mus_thpprf_girlssealingclub_gbc_style_grp, voicegroup901
	.equ	mus_thpprf_girlssealingclub_gbc_style_pri, 0
	.equ	mus_thpprf_girlssealingclub_gbc_style_rev, 50
	.equ	mus_thpprf_girlssealingclub_gbc_style_mvl, 108
	.equ	mus_thpprf_girlssealingclub_gbc_style_key, 0
	.equ	mus_thpprf_girlssealingclub_gbc_style_tbs, 1
	.equ	mus_thpprf_girlssealingclub_gbc_style_exg, 0
	.equ	mus_thpprf_girlssealingclub_gbc_style_cmp, 1

	.section .rodata
	.global	mus_thpprf_girlssealingclub_gbc_style
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_thpprf_girlssealingclub_gbc_style_1:
	.byte	KEYSH , mus_thpprf_girlssealingclub_gbc_style_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*mus_thpprf_girlssealingclub_gbc_style_tbs/2
	.byte	W09
	.byte		VOICE , 7
	.byte		PAN   , c_v+0
	.byte		VOL   , 112*mus_thpprf_girlssealingclub_gbc_style_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W02
	.byte	TEMPO , 150*mus_thpprf_girlssealingclub_gbc_style_tbs/2
	.byte	W36
	.byte		N24   , Dn4 , v127
	.byte	W24
	.byte		N24   
	.byte	W24
@ 001   ----------------------------------------
mus_thpprf_girlssealingclub_gbc_style_1_001:
	.byte		N24   , En4 , v127
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_thpprf_girlssealingclub_gbc_style_1_002:
	.byte		N24   , En4 , v127
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N36   , En4 
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_thpprf_girlssealingclub_gbc_style_1_003:
	.byte		N24   , Fn4 , v127
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		        Cn4 
	.byte	W18
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N24   
	.byte	W24
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_thpprf_girlssealingclub_gbc_style_1_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_thpprf_girlssealingclub_gbc_style_1_002
@ 007   ----------------------------------------
	.byte		N24   , Fn4 , v127
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N72   
	.byte	W24
@ 008   ----------------------------------------
	.byte	W48
	.byte		N24   
mus_thpprf_girlssealingclub_gbc_style_1_loop:
	.byte	W24
	.byte		N24   
	.byte	W24
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_thpprf_girlssealingclub_gbc_style_1_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_thpprf_girlssealingclub_gbc_style_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_thpprf_girlssealingclub_gbc_style_1_003
@ 012   ----------------------------------------
	.byte		N18   , Dn4 , v127
	.byte	W18
	.byte		        Cn4 
	.byte	W18
	.byte		N12   , Dn4 
	.byte	W12
	.byte	GOTO
	.word	mus_thpprf_girlssealingclub_gbc_style_1_loop
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_thpprf_girlssealingclub_gbc_style_3:
	.byte	KEYSH , mus_thpprf_girlssealingclub_gbc_style_key+0
@ 000   ----------------------------------------
	.byte	W09
	.byte		VOICE , 8
	.byte		PAN   , c_v+0
	.byte		VOL   , 94*mus_thpprf_girlssealingclub_gbc_style_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W36
	.byte	W02
	.byte		N84   , Dn2 , v112
	.byte	W48
@ 001   ----------------------------------------
	.byte	W36
	.byte		N96   , As1 
	.byte	W60
@ 002   ----------------------------------------
	.byte	W36
	.byte		        Cn2 
	.byte	W60
@ 003   ----------------------------------------
mus_thpprf_girlssealingclub_gbc_style_3_003:
	.byte	W36
	.byte		TIE   , Dn2 , v112
	.byte	W60
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N84   
	.byte	W48
@ 005   ----------------------------------------
	.byte	W36
	.byte		N96   , As1 
	.byte	W60
@ 006   ----------------------------------------
	.byte	W36
	.byte		        Cn2 
	.byte	W60
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_thpprf_girlssealingclub_gbc_style_3_003
@ 008   ----------------------------------------
	.byte	W48
	.byte		EOT   , Dn2 
mus_thpprf_girlssealingclub_gbc_style_3_loop:
	.byte		N84   , Dn2 , v112
	.byte	W48
@ 009   ----------------------------------------
	.byte	W36
	.byte		N96   , As1 
	.byte	W60
@ 010   ----------------------------------------
	.byte	W36
	.byte		        Cn2 
	.byte	W60
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_thpprf_girlssealingclub_gbc_style_3_003
@ 012   ----------------------------------------
	.byte	W48
	.byte		EOT   , Dn2 
	.byte	GOTO
	.word	mus_thpprf_girlssealingclub_gbc_style_3_loop
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_thpprf_girlssealingclub_gbc_style_5:
	.byte	KEYSH , mus_thpprf_girlssealingclub_gbc_style_key+0
@ 000   ----------------------------------------
	.byte	W09
	.byte		VOICE , 9
	.byte		PAN   , c_v+0
	.byte		VOL   , 94*mus_thpprf_girlssealingclub_gbc_style_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W36
	.byte	W02
	.byte		N24   , Dn3 , v112
	.byte	W24
	.byte		N24   
	.byte	W24
@ 001   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N36   , As2 
	.byte	W36
	.byte		N24   
	.byte	W24
@ 002   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N36   , Cn3 
	.byte	W36
	.byte		N24   
	.byte	W24
@ 003   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N36   , Dn3 
	.byte	W36
	.byte		N24   
	.byte	W24
@ 004   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
@ 005   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N24   , As2 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   , As3 
	.byte	W24
@ 006   ----------------------------------------
	.byte		N12   , As2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W24
@ 007   ----------------------------------------
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N36   , Dn3 
	.byte	W36
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N15   , Dn4 
	.byte	W06
@ 008   ----------------------------------------
	.byte	W09
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N09   , Dn4 
	.byte	W09
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn4 
	.byte	W06
mus_thpprf_girlssealingclub_gbc_style_5_loop:
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N15   , Dn4 
	.byte	W15
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N09   
	.byte	W09
@ 009   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N15   , As3 
	.byte	W15
	.byte		N06   , As2 
	.byte	W06
	.byte		N09   
	.byte	W09
@ 010   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N15   , Cn4 
	.byte	W15
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N09   
	.byte	W09
@ 011   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N15   , Dn4 
	.byte	W15
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N09   
	.byte	W09
@ 012   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte	GOTO
	.word	mus_thpprf_girlssealingclub_gbc_style_5_loop
	.byte	FINE

@******************************************************@
	.align	2

mus_thpprf_girlssealingclub_gbc_style:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_thpprf_girlssealingclub_gbc_style_pri	@ Priority
	.byte	mus_thpprf_girlssealingclub_gbc_style_rev	@ Reverb.

	.word	mus_thpprf_girlssealingclub_gbc_style_grp

	.word	mus_thpprf_girlssealingclub_gbc_style_1
	.word	mus_thpprf_girlssealingclub_gbc_style_3
	.word	mus_thpprf_girlssealingclub_gbc_style_5

	.end
