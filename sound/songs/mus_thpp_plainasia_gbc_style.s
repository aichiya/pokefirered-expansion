	.include "MPlayDef.s"

	.equ	mus_thpp_plainasia_gbc_style_grp, voicegroup901
	.equ	mus_thpp_plainasia_gbc_style_pri, 0
	.equ	mus_thpp_plainasia_gbc_style_rev, 50
	.equ	mus_thpp_plainasia_gbc_style_mvl, 100
	.equ	mus_thpp_plainasia_gbc_style_key, 0
	.equ	mus_thpp_plainasia_gbc_style_tbs, 1
	.equ	mus_thpp_plainasia_gbc_style_exg, 0
	.equ	mus_thpp_plainasia_gbc_style_cmp, 1

	.section .rodata
	.global	mus_thpp_plainasia_gbc_style
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_thpp_plainasia_gbc_style_1:
	.byte	KEYSH , mus_thpp_plainasia_gbc_style_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*mus_thpp_plainasia_gbc_style_tbs/2
	.byte		VOICE , 4
	.byte		VOL   , 70*mus_thpp_plainasia_gbc_style_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		N06   , As2 , v112
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N48   , Bn3 
	.byte	W48
@ 001   ----------------------------------------
mus_thpp_plainasia_gbc_style_1_001:
	.byte		N48   , Cs4 , v112
	.byte	W48
	.byte		N96   , Ds4 
	.byte	W48
	.byte	PEND
@ 002   ----------------------------------------
mus_thpp_plainasia_gbc_style_1_002:
	.byte	W48
	.byte		N48   , Bn3 
	.byte	W48
@ 003   ----------------------------------------
mus_thpp_plainasia_gbc_style_1_003:
	.byte		N48   , Cs4 , v112
	.byte	W48
	.byte		N96   , Dn4 
	.byte	W48
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W48
	.byte		N48   , Bn3 
	.byte	W48
@ 005   ----------------------------------------
mus_thpp_plainasia_gbc_style_1_005:
	.byte	PATT
	 .word	mus_thpp_plainasia_gbc_style_1_001
@ 006   ----------------------------------------
	.byte	W48
	.byte		N48   , Bn3 , v112
	.byte	W48
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_thpp_plainasia_gbc_style_1_003
@ 008   ----------------------------------------
	.byte	W48
	.byte		N48   , Bn3 , v112
	.byte	W48
@ 009   ----------------------------------------
	.byte	GOTO
	.word	mus_thpp_plainasia_gbc_style_1_001
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_thpp_plainasia_gbc_style_2:
	.byte	KEYSH , mus_thpp_plainasia_gbc_style_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		PAN   , c_v+0
	.byte		VOL   , 97*mus_thpp_plainasia_gbc_style_mvl/mxv
	.byte		N06   , Fs3 , v127
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N24   , Gs4 , v124
	.byte	W24
	.byte		        As4 , v112
	.byte	W24
@ 001   ----------------------------------------
mus_thpp_plainasia_gbc_style_2_001:
	.byte		N36   , Fn4 , v112
	.byte	W36
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_thpp_plainasia_gbc_style_2_002:
	.byte		N12   , As3 , v112
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_thpp_plainasia_gbc_style_2_003:
	.byte		N12   , Cs5 , v112
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte		        Fs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Gs4 , v124
	.byte	W24
	.byte		        As4 , v112
	.byte	W24
@ 005   ----------------------------------------
mus_thpp_plainasia_gbc_style_2_005:
	.byte	PATT
	 .word	mus_thpp_plainasia_gbc_style_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_thpp_plainasia_gbc_style_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_thpp_plainasia_gbc_style_2_003
@ 008   ----------------------------------------
	.byte		N48   , Dn5 , v112
	.byte	W48
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        As4 
	.byte	W24
@ 009   ----------------------------------------
	.byte	GOTO
	.word	mus_thpp_plainasia_gbc_style_2_001
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_thpp_plainasia_gbc_style_3:
	.byte	KEYSH , mus_thpp_plainasia_gbc_style_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 6
	.byte		PAN   , c_v+63
	.byte		VOL   , 96*mus_thpp_plainasia_gbc_style_mvl/mxv
	.byte		N06   , Fs1 , v112
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		N03   , Fs2 
	.byte	W12
	.byte		N12   , Ds2 , v124
	.byte	W12
	.byte		N03   , Fs2 , v127
	.byte	W12
@ 001   ----------------------------------------
mus_thpp_plainasia_gbc_style_3_001:
	.byte	W12
	.byte		N06   , Gs2 , v127
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N03   , Gs2 
	.byte	W12
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N03   , As2 
	.byte	W12
	.byte		N12   , Fs2 , v124
	.byte	W12
	.byte		N03   , As2 , v127
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_thpp_plainasia_gbc_style_3_002:
	.byte		        Cs2 , v124
	.byte	W06
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N03   , Cs2 
	.byte	W06
	.byte		N06   , Fs2 , v127
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N03   , Fs2 
	.byte	W12
	.byte		N12   , Ds2 , v124
	.byte	W12
	.byte		N03   , Fs2 , v127
	.byte	W12
@ 003   ----------------------------------------
mus_thpp_plainasia_gbc_style_3_003:
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N03   , Gs2 
	.byte	W12
	.byte		N12   , As1 
	.byte	W12
	.byte		N03   , Fn2 
	.byte	W12
	.byte		N12   , Dn2 , v124
	.byte	W12
	.byte		N03   , Fn2 , v127
	.byte	W12
@ 004   ----------------------------------------
	.byte		        As1 , v124
	.byte	W06
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N03   , Dn2 , v127
	.byte	W06
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N03   , Dn2 , v124
	.byte	W06
	.byte		N06   , As1 
	.byte	W06
	.byte		N03   , Dn2 , v127
	.byte	W06
	.byte		N06   , Gs2 , v124
	.byte	W06
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		N03   , Fs2 
	.byte	W12
	.byte		N12   , Ds2 , v124
	.byte	W12
	.byte		N03   , Fs2 , v127
	.byte	W12
@ 005   ----------------------------------------
mus_thpp_plainasia_gbc_style_3_005:
	.byte	PATT
	 .word	mus_thpp_plainasia_gbc_style_3_001
@ 006   ----------------------------------------
	.byte		N03   , Cs2 , v124
	.byte	W06
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N03   , Cs2 
	.byte	W06
	.byte		N06   , Fs2 , v127
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N03   , Gs2 
	.byte	W12
	.byte		N12   , Ds2 , v124
	.byte	W12
	.byte		N03   , As2 , v127
	.byte	W12
@ 007   ----------------------------------------
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N03   , Gs2 
	.byte	W12
	.byte		N12   , Cs2 , v124
	.byte	W12
	.byte		N03   , Gs1 , v127
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W24
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N03   , As1 , v124
	.byte	W12
@ 008   ----------------------------------------
	.byte		N12   , Fs2 , v127
	.byte	W12
	.byte		N03   , As1 , v124
	.byte	W12
	.byte		N12   , Dn2 , v127
	.byte	W12
	.byte		N03   , As1 , v124
	.byte	W12
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		N03   , Fs2 
	.byte	W12
	.byte		N12   , Ds2 , v124
	.byte	W12
	.byte		N03   , Fs2 , v127
	.byte	W12
@ 009   ----------------------------------------
	.byte	GOTO
	.word	mus_thpp_plainasia_gbc_style_3_001
	.byte	FINE

@******************************************************@
	.align	2

mus_thpp_plainasia_gbc_style:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_thpp_plainasia_gbc_style_pri	@ Priority
	.byte	mus_thpp_plainasia_gbc_style_rev	@ Reverb.

	.word	mus_thpp_plainasia_gbc_style_grp

	.word	mus_thpp_plainasia_gbc_style_1
	.word	mus_thpp_plainasia_gbc_style_2
	.word	mus_thpp_plainasia_gbc_style_3


	.end
