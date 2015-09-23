resource temp = {
param
Case = case_d | case_o ;
Parsarg = parsarg_0 | parsarg_ne | parsarg_ko | parsarg_se | parsarg_ke | parsarg_meM | parsarg_meM_se | parsarg_kA | parsarg_kI | parsarg_para ;
Fnum = fnum_s | fnum_p ;
Per = per_u | per_m | per_m_h0 | per_m_h1 | per_m_h2 | per_m_h | per_a ;
Cat = cat_n | cat_p | cat_v | cat_vn | cat_adj | cat_sh | cat_prsg | cat_cnj | cat_prawyaya ;
Num = num_s | num_p ;
Tam = tam_adv_we_hue | tam_adj_wA_huA | tam_adj_yA_huA | tam_we_rahanA_hE | tam_imper | tam_subj | tam_nA | tam_wA | tam_yA | tam_yA1 | tam_kara | tam_gA | tam_hE | tam_WA | tam_0 ;
Gen = gen_m | gen_f ;

oper

mkFunc4: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_d,num_s,gen_f> => s3;
<case_d,num_p,gen_f> => s4;
<case_o,num_s,gen_m> => s5;
<case_o,num_p,gen_m> => s6;
<case_o,num_s,gen_f> => s7;
<case_o,num_p,gen_f> => s8;
_ => "--"
};
};
aneka_adj: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "a" => mkFunc4 (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a")
};
mkFunc5: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_o,num_s,gen_m> => s2;
<case_d,num_p,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
<case_d,num_s,gen_f> => s5;
<case_o,num_s,gen_f> => s6;
<case_d,num_p,gen_f> => s7;
<case_o,num_p,gen_f> => s8;
_ => "--"
};
};
amIra_adj: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc5 (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"")
};
mkFunc6: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_o,num_s,gen_f> => s2;
<case_d,num_p,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
bAlikA_adj: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc6 (var+"") (var+"") (var+"") (var+"")
};
mkFunc7: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_o,num_s,gen_m> => s2;
<case_d,num_p,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
bAlaka_adj: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc7 (var+"") (var+"") (var+"") (var+"")
};
mkFunc8: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_o,num_s,gen_f> => s2;
<case_d,num_p,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
ajAwI_adj: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc8 (var+"") (var+"") (var+"") (var+"")
};
mkFunc9: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_o,num_s,gen_m> => s2;
<case_d,num_p,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
<case_d,num_s,gen_f> => s5;
<case_o,num_s,gen_f> => s6;
<case_d,num_p,gen_f> => s7;
<case_o,num_p,gen_f> => s8;
_ => "--"
};
};
kAlA_adj: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "A" => mkFunc9 (var+"A") (var+"e") (var+"e") (var+"e") (var+"I") (var+"I") (var+"I") (var+"I")
};
mkFunc10: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
<case_d,num_s,gen_f> => s5;
<case_d,num_p,gen_f> => s6;
<case_o,num_s,gen_f> => s7;
<case_o,num_p,gen_f> => s8;
_ => "--"
};
};
jyAxA_adj: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "A" => mkFunc10 (var+"A") (var+"A") (var+"A") (var+"A") (var+"A") (var+"A") (var+"A") (var+"A")
};
mkFunc11: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Per => Num => Tam => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120,s121,s122,s123,s124,s125,s126,s127,s128,s129,s130,s131,s132,s133,s134,s135,s136,s137,s138,s139,s140,s141,s142,s143,s144,s145,s146,s147,s148,s149,s150,s151,s152,s153,s154,s155,s156,s157,s158,s159,s160,s161,s162,s163,s164,s165,s166,s167,s168,s169,s170,s171,s172 -> {
s = \\x1,x2,x3,x4,x5 => case <x1,x2,x3,x4,x5> of {
<case_d,_,_,_,_> => s1;
<case_o,_,_,_,_> => s2;
<case_d,_,num_s,tam_adj_wA_huA,gen_m> => s3;
<case_d,_,num_p,tam_adj_wA_huA,gen_m> => s4;
<case_o,_,num_s,tam_adj_wA_huA,gen_m> => s5;
<case_o,_,num_p,tam_adj_wA_huA,gen_m> => s6;
<case_d,_,num_s,tam_adj_wA_huA,gen_f> => s7;
<case_d,_,num_p,tam_adj_wA_huA,gen_f> => s8;
<case_o,_,num_s,tam_adj_wA_huA,gen_f> => s9;
<case_o,_,num_p,tam_adj_wA_huA,gen_f> => s10;
<case_d,_,num_s,tam_adj_yA_huA,gen_m> => s11;
<case_d,_,num_p,tam_adj_yA_huA,gen_m> => s12;
<case_o,_,num_s,tam_adj_yA_huA,gen_m> => s13;
<case_o,_,num_p,tam_adj_yA_huA,gen_m> => s14;
<case_d,_,num_s,tam_adj_yA_huA,gen_f> => s15;
<case_d,_,num_p,tam_adj_yA_huA,gen_f> => s16;
<case_o,_,num_s,tam_adj_yA_huA,gen_f> => s17;
<case_o,_,num_p,tam_adj_yA_huA,gen_f> => s18;
<_,per_u,num_s,tam_adv_we_hue,gen_m> => s19;
<_,per_u,num_s,tam_adv_we_hue,gen_f> => s20;
<_,per_m,num_s,tam_adv_we_hue,gen_m> => s21;
<_,per_m,num_s,tam_adv_we_hue,gen_f> => s22;
<_,per_m_h,num_s,tam_adv_we_hue,gen_m> => s23;
<_,per_m_h,num_s,tam_adv_we_hue,gen_f> => s24;
<_,per_a,num_s,tam_adv_we_hue,gen_m> => s25;
<_,per_a,num_s,tam_adv_we_hue,gen_f> => s26;
<_,per_u,num_p,tam_adv_we_hue,gen_m> => s27;
<_,per_u,num_p,tam_adv_we_hue,gen_f> => s28;
<_,per_m,num_p,tam_adv_we_hue,gen_m> => s29;
<_,per_m,num_p,tam_adv_we_hue,gen_f> => s30;
<_,per_m_h,num_p,tam_adv_we_hue,gen_m> => s31;
<_,per_m_h,num_p,tam_adv_we_hue,gen_f> => s32;
<_,per_a,num_p,tam_adv_we_hue,gen_m> => s33;
<_,per_a,num_p,tam_adv_we_hue,gen_f> => s34;
<_,per_u,num_s,tam_we_rahanA_hE,gen_m> => s35;
<_,per_u,num_s,tam_we_rahanA_hE,gen_f> => s36;
<_,per_m,num_s,tam_we_rahanA_hE,gen_m> => s37;
<_,per_m,num_s,tam_we_rahanA_hE,gen_f> => s38;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_m> => s39;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_f> => s40;
<_,per_a,num_s,tam_we_rahanA_hE,gen_m> => s41;
<_,per_a,num_s,tam_we_rahanA_hE,gen_f> => s42;
<_,per_u,num_p,tam_we_rahanA_hE,gen_m> => s43;
<_,per_u,num_p,tam_we_rahanA_hE,gen_f> => s44;
<_,per_m,num_p,tam_we_rahanA_hE,gen_m> => s45;
<_,per_m,num_p,tam_we_rahanA_hE,gen_f> => s46;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_m> => s47;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_f> => s48;
<_,per_a,num_p,tam_we_rahanA_hE,gen_m> => s49;
<_,per_a,num_p,tam_we_rahanA_hE,gen_f> => s50;
<_,per_u,num_s,tam_subj,gen_m> => s51;
<_,per_u,num_s,tam_subj,gen_f> => s52;
<_,per_m,num_s,tam_subj,gen_m> => s53;
<_,per_m,num_s,tam_subj,gen_f> => s54;
<_,per_m_h,num_s,tam_subj,gen_m> => s55;
<_,per_m_h,num_s,tam_subj,gen_f> => s56;
<_,per_a,num_s,tam_subj,gen_m> => s57;
<_,per_a,num_s,tam_subj,gen_f> => s58;
<_,per_u,num_p,tam_subj,gen_m> => s59;
<_,per_u,num_p,tam_subj,gen_f> => s60;
<_,per_m,num_p,tam_subj,gen_m> => s61;
<_,per_m,num_p,tam_subj,gen_f> => s62;
<_,per_m_h,num_p,tam_subj,gen_m> => s63;
<_,per_m_h,num_p,tam_subj,gen_f> => s64;
<_,per_a,num_p,tam_subj,gen_m> => s65;
<_,per_a,num_p,tam_subj,gen_f> => s66;
<_,per_u,num_s,tam_nA,gen_m> => s67;
<_,per_m,num_s,tam_nA,gen_m> => s68;
<_,per_a,num_s,tam_nA,gen_m> => s69;
<_,per_m_h,num_s,tam_nA,gen_m> => s70;
<_,per_u,num_p,tam_nA,gen_m> => s71;
<_,per_m,num_p,tam_nA,gen_m> => s72;
<_,per_a,num_p,tam_nA,gen_m> => s73;
<_,per_m_h,num_p,tam_nA,gen_m> => s74;
<_,per_u,num_s,tam_nA,gen_f> => s75;
<_,per_m,num_s,tam_nA,gen_f> => s76;
<_,per_a,num_s,tam_nA,gen_f> => s77;
<_,per_m_h,num_s,tam_nA,gen_f> => s78;
<_,per_u,num_p,tam_nA,gen_f> => s79;
<_,per_m,num_p,tam_nA,gen_f> => s80;
<_,per_a,num_p,tam_nA,gen_f> => s81;
<_,per_m_h,num_p,tam_nA,gen_f> => s82;
<_,per_u,num_s,tam_wA,gen_m> => s83;
<_,per_m,num_s,tam_wA,gen_m> => s84;
<_,per_a,num_s,tam_wA,gen_m> => s85;
<_,per_m_h,num_s,tam_wA,gen_m> => s86;
<_,per_u,num_p,tam_wA,gen_m> => s87;
<_,per_m,num_p,tam_wA,gen_m> => s88;
<_,per_a,num_p,tam_wA,gen_m> => s89;
<_,per_m_h,num_p,tam_wA,gen_m> => s90;
<_,per_u,num_s,tam_wA,gen_f> => s91;
<_,per_m,num_s,tam_wA,gen_f> => s92;
<_,per_a,num_s,tam_wA,gen_f> => s93;
<_,per_m_h,num_s,tam_wA,gen_f> => s94;
<_,per_u,num_p,tam_wA,gen_f> => s95;
<_,per_m,num_p,tam_wA,gen_f> => s96;
<_,per_a,num_p,tam_wA,gen_f> => s97;
<_,per_m_h,num_p,tam_wA,gen_f> => s98;
<_,per_u,num_s,tam_yA,gen_m> => s99;
<_,per_m,num_s,tam_yA,gen_m> => s100;
<_,per_a,num_s,tam_yA,gen_m> => s101;
<_,per_m_h,num_s,tam_yA,gen_m> => s102;
<_,per_u,num_p,tam_yA,gen_m> => s103;
<_,per_m,num_p,tam_yA,gen_m> => s104;
<_,per_a,num_p,tam_yA,gen_m> => s105;
<_,per_m_h,num_p,tam_yA,gen_m> => s106;
<_,per_u,num_s,tam_yA,gen_f> => s107;
<_,per_m,num_s,tam_yA,gen_f> => s108;
<_,per_a,num_s,tam_yA,gen_f> => s109;
<_,per_m_h,num_s,tam_yA,gen_f> => s110;
<_,per_u,num_p,tam_yA,gen_f> => s111;
<_,per_m,num_p,tam_yA,gen_f> => s112;
<_,per_a,num_p,tam_yA,gen_f> => s113;
<_,per_m_h,num_p,tam_yA,gen_f> => s114;
<_,per_u,num_s,tam_0,gen_m> => s115;
<_,per_m,num_s,tam_0,gen_m> => s116;
<_,per_a,num_s,tam_0,gen_m> => s117;
<_,per_m_h,num_s,tam_0,gen_m> => s118;
<_,per_u,num_p,tam_0,gen_m> => s119;
<_,per_m,num_p,tam_0,gen_m> => s120;
<_,per_a,num_p,tam_0,gen_m> => s121;
<_,per_m_h,num_p,tam_0,gen_m> => s122;
<_,per_u,num_s,tam_0,gen_f> => s123;
<_,per_m,num_s,tam_0,gen_f> => s124;
<_,per_a,num_s,tam_0,gen_f> => s125;
<_,per_m_h,num_s,tam_0,gen_f> => s126;
<_,per_u,num_p,tam_0,gen_f> => s127;
<_,per_m,num_p,tam_0,gen_f> => s128;
<_,per_a,num_p,tam_0,gen_f> => s129;
<_,per_m_h,num_p,tam_0,gen_f> => s130;
<_,per_u,num_s,tam_kara,gen_m> => s131;
<_,per_m,num_s,tam_kara,gen_m> => s132;
<_,per_a,num_s,tam_kara,gen_m> => s133;
<_,per_m_h,num_s,tam_kara,gen_m> => s134;
<_,per_u,num_p,tam_kara,gen_m> => s135;
<_,per_m,num_p,tam_kara,gen_m> => s136;
<_,per_a,num_p,tam_kara,gen_m> => s137;
<_,per_m_h,num_p,tam_kara,gen_m> => s138;
<_,per_u,num_s,tam_kara,gen_f> => s139;
<_,per_m,num_s,tam_kara,gen_f> => s140;
<_,per_a,num_s,tam_kara,gen_f> => s141;
<_,per_m_h,num_s,tam_kara,gen_f> => s142;
<_,per_u,num_p,tam_kara,gen_f> => s143;
<_,per_m,num_p,tam_kara,gen_f> => s144;
<_,per_a,num_p,tam_kara,gen_f> => s145;
<_,per_m_h,num_p,tam_kara,gen_f> => s146;
<_,per_u,num_s,tam_gA,gen_m> => s147;
<_,per_m,num_s,tam_gA,gen_m> => s148;
<_,per_m_h,num_s,tam_gA,gen_m> => s149;
<_,per_a,num_s,tam_gA,gen_m> => s150;
<_,per_u,num_p,tam_gA,gen_m> => s151;
<_,per_m,num_p,tam_gA,gen_m> => s152;
<_,per_m_h,num_p,tam_gA,gen_m> => s153;
<_,per_a,num_p,tam_gA,gen_m> => s154;
<_,per_u,num_s,tam_gA,gen_f> => s155;
<_,per_m,num_s,tam_gA,gen_f> => s156;
<_,per_m_h,num_s,tam_gA,gen_f> => s157;
<_,per_a,num_s,tam_gA,gen_f> => s158;
<_,per_u,num_p,tam_gA,gen_f> => s159;
<_,per_m,num_p,tam_gA,gen_f> => s160;
<_,per_m_h,num_p,tam_gA,gen_f> => s161;
<_,per_a,num_p,tam_gA,gen_f> => s162;
<_,per_m_h0,num_s,tam_imper,gen_f> => s163;
<_,per_m_h0,num_s,tam_imper,gen_m> => s164;
<_,per_m_h1,num_s,tam_imper,gen_f> => s165;
<_,per_m_h1,num_s,tam_imper,gen_m> => s166;
<_,per_m_h1,num_p,tam_imper,gen_f> => s167;
<_,per_m_h1,num_p,tam_imper,gen_m> => s168;
<_,per_m_h2,num_s,tam_imper,gen_f> => s169;
<_,per_m_h2,num_s,tam_imper,gen_m> => s170;
<_,per_m_h2,num_p,tam_imper,gen_m> => s171;
<_,per_m_h2,num_p,tam_imper,gen_f> => s172;
_ => "--"
};
};
KA_v: Str -> { s : Case => Per => Num => Tam => Gen => Str } = \s -> case s of {
var + "" => mkFunc11 (var+"nA") (var+"ne") (var+"wA_huA") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"wI_huI") (var+"wI_huI") (var+"wI_huI") (var+"wI_huI") (var+"yA_huA") (var+"ye_hue") (var+"ye_hue") (var+"ye_hue") (var+"I_huI") (var+"I_huI") (var+"I_huI") (var+"I_huI") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"Uz") (var+"Uz") (var+"ye") (var+"ye") (var+"iye") (var+"iye") (var+"ye") (var+"ye") (var+"yeM") (var+"yeM") (var+"o") (var+"o") (var+"iye") (var+"iye") (var+"yeM") (var+"yeM") (var+"nA") (var+"nA") (var+"nA") (var+"nA") (var+"ne") (var+"ne") (var+"ne") (var+"ne") (var+"nI") (var+"nI") (var+"nI") (var+"nI") (var+"nIM") (var+"nIM") (var+"nIM") (var+"nIM") (var+"wA") (var+"wA") (var+"wA") (var+"wA") (var+"we") (var+"we") (var+"we") (var+"we") (var+"wI") (var+"wI") (var+"wI") (var+"wI") (var+"wIM") (var+"wIM") (var+"wIM") (var+"wIM") (var+"yA") (var+"yA") (var+"yA") (var+"yA") (var+"ye") (var+"ye") (var+"ye") (var+"ye") (var+"I") (var+"I") (var+"I") (var+"I") (var+"IM") (var+"IM") (var+"IM") (var+"IM") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"UzgA") (var+"egA") (var+"iegA") (var+"egA") (var+"ezge") (var+"oge") (var+"iegA") (var+"ezge") (var+"UzgI") (var+"egI") (var+"iegA") (var+"egI") (var+"ezgI") (var+"ogI") (var+"iegA") (var+"ezgI") (var+"") (var+"") (var+"o") (var+"o") (var+"o") (var+"o") (var+"iye") (var+"iye") (var+"iye") (var+"iye")
};
mkFunc12: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Per => Num => Tam => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120,s121,s122,s123,s124,s125,s126,s127,s128,s129,s130,s131,s132,s133,s134,s135,s136,s137,s138,s139,s140,s141,s142,s143,s144,s145,s146,s147,s148,s149,s150,s151,s152,s153,s154,s155 -> {
s = \\x1,x2,x3,x4,x5 => case <x1,x2,x3,x4,x5> of {
<case_d,_,_,_,_> => s1;
<case_o,_,_,_,_> => s2;
<case_d,_,num_s,tam_adj_wA_huA,gen_m> => s3;
<case_d,_,num_p,tam_adj_wA_huA,gen_m> => s4;
<case_o,_,num_s,tam_adj_wA_huA,gen_m> => s5;
<case_o,_,num_p,tam_adj_wA_huA,gen_m> => s6;
<case_d,_,num_s,tam_adj_wA_huA,gen_f> => s7;
<case_d,_,num_p,tam_adj_wA_huA,gen_f> => s8;
<case_o,_,num_s,tam_adj_wA_huA,gen_f> => s9;
<case_o,_,num_p,tam_adj_wA_huA,gen_f> => s10;
<case_d,_,num_s,tam_adj_yA_huA,gen_m> => s11;
<case_d,_,num_p,tam_adj_yA_huA,gen_m> => s12;
<case_o,_,num_s,tam_adj_yA_huA,gen_m> => s13;
<case_o,_,num_p,tam_adj_yA_huA,gen_m> => s14;
<case_d,_,num_s,tam_adj_yA_huA,gen_f> => s15;
<case_d,_,num_p,tam_adj_yA_huA,gen_f> => s16;
<case_o,_,num_s,tam_adj_yA_huA,gen_f> => s17;
<case_o,_,num_p,tam_adj_yA_huA,gen_f> => s18;
<_,per_u,num_s,tam_adv_we_hue,gen_m> => s19;
<_,per_m,num_s,tam_adv_we_hue,gen_m> => s20;
<_,per_a,num_s,tam_adv_we_hue,gen_m> => s21;
<_,per_m_h,num_s,tam_adv_we_hue,gen_m> => s22;
<_,per_u,num_p,tam_adv_we_hue,gen_m> => s23;
<_,per_m,num_p,tam_adv_we_hue,gen_m> => s24;
<_,per_a,num_p,tam_adv_we_hue,gen_m> => s25;
<_,per_m_h,num_p,tam_adv_we_hue,gen_m> => s26;
<_,per_u,num_s,tam_adv_we_hue,gen_f> => s27;
<_,per_m,num_s,tam_adv_we_hue,gen_f> => s28;
<_,per_a,num_s,tam_adv_we_hue,gen_f> => s29;
<_,per_m_h,num_s,tam_adv_we_hue,gen_f> => s30;
<_,per_u,num_p,tam_adv_we_hue,gen_f> => s31;
<_,per_m,num_p,tam_adv_we_hue,gen_f> => s32;
<_,per_a,num_p,tam_adv_we_hue,gen_f> => s33;
<_,per_m_h,num_p,tam_adv_we_hue,gen_f> => s34;
<_,per_u,num_s,tam_we_rahanA_hE,gen_m> => s35;
<_,per_m,num_s,tam_we_rahanA_hE,gen_m> => s36;
<_,per_a,num_s,tam_we_rahanA_hE,gen_m> => s37;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_m> => s38;
<_,per_u,num_p,tam_we_rahanA_hE,gen_m> => s39;
<_,per_m,num_p,tam_we_rahanA_hE,gen_m> => s40;
<_,per_a,num_p,tam_we_rahanA_hE,gen_m> => s41;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_m> => s42;
<_,per_u,num_s,tam_we_rahanA_hE,gen_f> => s43;
<_,per_m,num_s,tam_we_rahanA_hE,gen_f> => s44;
<_,per_a,num_s,tam_we_rahanA_hE,gen_f> => s45;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_f> => s46;
<_,per_u,num_p,tam_we_rahanA_hE,gen_f> => s47;
<_,per_m,num_p,tam_we_rahanA_hE,gen_f> => s48;
<_,per_a,num_p,tam_we_rahanA_hE,gen_f> => s49;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_f> => s50;
<_,per_m_h0,num_s,tam_imper,gen_f> => s51;
<_,per_m_h0,num_s,tam_imper,gen_m> => s52;
<_,per_m_h1,num_s,tam_imper,gen_f> => s53;
<_,per_m_h1,num_p,tam_imper,gen_f> => s54;
<_,per_m_h1,num_s,tam_imper,gen_m> => s55;
<_,per_m_h1,num_p,tam_imper,gen_m> => s56;
<_,per_m_h2,num_s,tam_imper,gen_f> => s57;
<_,per_m_h2,num_s,tam_imper,gen_m> => s58;
<_,per_m_h2,num_p,tam_imper,gen_m> => s59;
<_,per_m_h2,num_p,tam_imper,gen_f> => s60;
<_,per_u,num_s,tam_yA,gen_m> => s61;
<_,per_m,num_s,tam_yA,gen_m> => s62;
<_,per_a,num_s,tam_yA,gen_m> => s63;
<_,per_m_h,num_s,tam_yA,gen_m> => s64;
<_,per_u,num_p,tam_yA,gen_m> => s65;
<_,per_m,num_p,tam_yA,gen_m> => s66;
<_,per_a,num_p,tam_yA,gen_m> => s67;
<_,per_m_h,num_p,tam_yA,gen_m> => s68;
<_,per_u,num_s,tam_yA,gen_f> => s69;
<_,per_m,num_s,tam_yA,gen_f> => s70;
<_,per_a,num_s,tam_yA,gen_f> => s71;
<_,per_m_h,num_s,tam_yA,gen_f> => s72;
<_,per_u,num_p,tam_yA,gen_f> => s73;
<_,per_m,num_p,tam_yA,gen_f> => s74;
<_,per_a,num_p,tam_yA,gen_f> => s75;
<_,per_m_h,num_p,tam_yA,gen_f> => s76;
<_,per_u,num_s,tam_0,gen_m> => s77;
<_,per_m,num_s,tam_0,gen_m> => s78;
<_,per_a,num_s,tam_0,gen_m> => s79;
<_,per_m_h,num_s,tam_0,gen_m> => s80;
<_,per_u,num_p,tam_0,gen_m> => s81;
<_,per_m,num_p,tam_0,gen_m> => s82;
<_,per_a,num_p,tam_0,gen_m> => s83;
<_,per_m_h,num_p,tam_0,gen_m> => s84;
<_,per_u,num_s,tam_0,gen_f> => s85;
<_,per_m,num_s,tam_0,gen_f> => s86;
<_,per_a,num_s,tam_0,gen_f> => s87;
<_,per_m_h,num_s,tam_0,gen_f> => s88;
<_,per_u,num_p,tam_0,gen_f> => s89;
<_,per_m,num_p,tam_0,gen_f> => s90;
<_,per_a,num_p,tam_0,gen_f> => s91;
<_,per_m_h,num_p,tam_0,gen_f> => s92;
<_,per_u,num_p,tam_wA,gen_f> => s93;
<_,per_m,num_p,tam_wA,gen_f> => s94;
<_,per_a,num_p,tam_wA,gen_f> => s95;
<_,per_m_h,num_p,tam_wA,gen_f> => s96;
<_,per_u,num_s,tam_nA,gen_m> => s97;
<_,per_m,num_s,tam_nA,gen_m> => s98;
<_,per_a,num_s,tam_nA,gen_m> => s99;
<_,per_m_h,num_s,tam_nA,gen_m> => s100;
<_,per_m_h,num_p,tam_nA,gen_m> => s101;
<_,per_m,num_p,tam_nA,gen_m> => s102;
<_,per_a,num_p,tam_nA,gen_m> => s103;
<_,per_u,num_s,tam_nA,gen_f> => s104;
<_,per_m,num_s,tam_nA,gen_f> => s105;
<_,per_a,num_s,tam_nA,gen_f> => s106;
<_,per_m_h,num_s,tam_nA,gen_f> => s107;
<_,per_u,num_p,tam_nA,gen_f> => s108;
<_,per_m,num_p,tam_nA,gen_f> => s109;
<_,per_a,num_p,tam_nA,gen_f> => s110;
<_,per_m_h,num_p,tam_nA,gen_f> => s111;
<_,per_u,num_s,tam_wA,gen_m> => s112;
<_,per_m,num_s,tam_wA,gen_m> => s113;
<_,per_a,num_s,tam_wA,gen_m> => s114;
<_,per_m_h,num_s,tam_wA,gen_m> => s115;
<_,per_u,num_p,tam_wA,gen_m> => s116;
<_,per_m,num_p,tam_wA,gen_m> => s117;
<_,per_a,num_p,tam_wA,gen_m> => s118;
<_,per_m_h,num_p,tam_wA,gen_m> => s119;
<_,per_u,num_s,tam_wA,gen_f> => s120;
<_,per_m,num_s,tam_wA,gen_f> => s121;
<_,per_a,num_s,tam_wA,gen_f> => s122;
<_,per_m_h,num_s,tam_wA,gen_f> => s123;
<_,per_u,num_s,tam_kara,gen_m> => s124;
<_,per_m,num_s,tam_kara,gen_m> => s125;
<_,per_a,num_s,tam_kara,gen_m> => s126;
<_,per_m_h,num_s,tam_kara,gen_m> => s127;
<_,per_u,num_p,tam_kara,gen_m> => s128;
<_,per_m,num_p,tam_kara,gen_m> => s129;
<_,per_a,num_p,tam_kara,gen_m> => s130;
<_,per_m_h,num_p,tam_kara,gen_m> => s131;
<_,per_u,num_s,tam_kara,gen_f> => s132;
<_,per_m,num_s,tam_kara,gen_f> => s133;
<_,per_a,num_s,tam_kara,gen_f> => s134;
<_,per_m_h,num_s,tam_kara,gen_f> => s135;
<_,per_u,num_p,tam_kara,gen_f> => s136;
<_,per_m,num_p,tam_kara,gen_f> => s137;
<_,per_a,num_p,tam_kara,gen_f> => s138;
<_,per_m_h,num_p,tam_kara,gen_f> => s139;
<_,per_u,num_s,tam_gA,gen_m> => s140;
<_,per_m,num_s,tam_gA,gen_m> => s141;
<_,per_m_h,num_s,tam_gA,gen_m> => s142;
<_,per_a,num_s,tam_gA,gen_m> => s143;
<_,per_u,num_p,tam_gA,gen_m> => s144;
<_,per_m,num_p,tam_gA,gen_m> => s145;
<_,per_m_h,num_p,tam_gA,gen_m> => s146;
<_,per_a,num_p,tam_gA,gen_m> => s147;
<_,per_u,num_s,tam_gA,gen_f> => s148;
<_,per_m,num_s,tam_gA,gen_f> => s149;
<_,per_m_h,num_s,tam_gA,gen_f> => s150;
<_,per_a,num_s,tam_gA,gen_f> => s151;
<_,per_u,num_p,tam_gA,gen_f> => s152;
<_,per_m,num_p,tam_gA,gen_f> => s153;
<_,per_m_h,num_p,tam_gA,gen_f> => s154;
<_,per_a,num_p,tam_gA,gen_f> => s155;
_ => "--"
};
};
kara_v: Str -> { s : Case => Per => Num => Tam => Gen => Str } = \s -> case s of {
var + "ara" => mkFunc12 (var+"aranA") (var+"arane") (var+"arwA_huA") (var+"arwe_hue") (var+"arwe_hue") (var+"arwe_hue") (var+"arwI_huI") (var+"arwI_huI") (var+"arwI_huI") (var+"arwI_huI") (var+"iyA_huA") (var+"iye_hue") (var+"iye_hue") (var+"iye_hue") (var+"I_huI") (var+"I_huI") (var+"I_huI") (var+"I_huI") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"ara") (var+"ara") (var+"aro") (var+"aro") (var+"aro") (var+"aro") (var+"ariye") (var+"ariye") (var+"ariye") (var+"ariye") (var+"iyA") (var+"iyA") (var+"iyA") (var+"iyA") (var+"iye") (var+"iye") (var+"iye") (var+"iye") (var+"I") (var+"I") (var+"I") (var+"I") (var+"IM") (var+"IM") (var+"IM") (var+"IM") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"arawIM") (var+"arawIM") (var+"arawIM") (var+"arawIM") (var+"aranA") (var+"aranA") (var+"aranA") (var+"aranA") (var+"arane") (var+"arane") (var+"arane") (var+"aranI") (var+"aranI") (var+"aranI") (var+"aranI") (var+"aranIM") (var+"aranIM") (var+"aranIM") (var+"aranIM") (var+"arawA") (var+"arawA") (var+"arawA") (var+"arawA") (var+"arawe") (var+"arawe") (var+"arawe") (var+"arawe") (var+"arawI") (var+"arawI") (var+"arawI") (var+"arawI") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arUzgA") (var+"aregA") (var+"IjiyegA") (var+"aregA") (var+"areMge") (var+"aroge") (var+"IjiyegA") (var+"areMge") (var+"arUzgI") (var+"aregI") (var+"IjiyegA") (var+"aregI") (var+"areMgI") (var+"arogI") (var+"IjiyegA") (var+"areMgI")
};
mkFunc13: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Per => Num => Tam => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120,s121,s122,s123,s124,s125,s126,s127,s128,s129,s130,s131,s132,s133,s134,s135,s136,s137,s138,s139,s140,s141,s142,s143,s144,s145,s146,s147,s148,s149,s150,s151,s152,s153,s154,s155,s156,s157,s158,s159,s160,s161,s162,s163,s164,s165,s166,s167,s168,s169,s170,s171,s172 -> {
s = \\x1,x2,x3,x4,x5 => case <x1,x2,x3,x4,x5> of {
<case_d,_,_,_,_> => s1;
<case_o,_,_,_,_> => s2;
<case_d,_,num_s,tam_adj_wA_huA,gen_m> => s3;
<case_d,_,num_p,tam_adj_wA_huA,gen_m> => s4;
<case_o,_,num_s,tam_adj_wA_huA,gen_m> => s5;
<case_o,_,num_p,tam_adj_wA_huA,gen_m> => s6;
<case_d,_,num_s,tam_adj_wA_huA,gen_f> => s7;
<case_d,_,num_p,tam_adj_wA_huA,gen_f> => s8;
<case_o,_,num_s,tam_adj_wA_huA,gen_f> => s9;
<case_o,_,num_p,tam_adj_wA_huA,gen_f> => s10;
<case_d,_,num_s,tam_adj_yA_huA,gen_m> => s11;
<case_d,_,num_p,tam_adj_yA_huA,gen_m> => s12;
<case_o,_,num_s,tam_adj_yA_huA,gen_m> => s13;
<case_o,_,num_p,tam_adj_yA_huA,gen_m> => s14;
<case_d,_,num_s,tam_adj_yA_huA,gen_f> => s15;
<case_d,_,num_p,tam_adj_yA_huA,gen_f> => s16;
<case_o,_,num_s,tam_adj_yA_huA,gen_f> => s17;
<case_o,_,num_p,tam_adj_yA_huA,gen_f> => s18;
<_,per_u,num_s,tam_adv_we_hue,gen_m> => s19;
<_,per_m,num_s,tam_adv_we_hue,gen_m> => s20;
<_,per_a,num_s,tam_adv_we_hue,gen_m> => s21;
<_,per_m_h,num_s,tam_adv_we_hue,gen_m> => s22;
<_,per_u,num_p,tam_adv_we_hue,gen_m> => s23;
<_,per_m,num_p,tam_adv_we_hue,gen_m> => s24;
<_,per_a,num_p,tam_adv_we_hue,gen_m> => s25;
<_,per_m_h,num_p,tam_adv_we_hue,gen_m> => s26;
<_,per_u,num_s,tam_adv_we_hue,gen_f> => s27;
<_,per_m,num_s,tam_adv_we_hue,gen_f> => s28;
<_,per_a,num_s,tam_adv_we_hue,gen_f> => s29;
<_,per_m_h,num_s,tam_adv_we_hue,gen_f> => s30;
<_,per_u,num_p,tam_adv_we_hue,gen_f> => s31;
<_,per_m,num_p,tam_adv_we_hue,gen_f> => s32;
<_,per_a,num_p,tam_adv_we_hue,gen_f> => s33;
<_,per_m_h,num_p,tam_adv_we_hue,gen_f> => s34;
<_,per_u,num_s,tam_we_rahanA_hE,gen_m> => s35;
<_,per_m,num_s,tam_we_rahanA_hE,gen_m> => s36;
<_,per_a,num_s,tam_we_rahanA_hE,gen_m> => s37;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_m> => s38;
<_,per_u,num_p,tam_we_rahanA_hE,gen_m> => s39;
<_,per_m,num_p,tam_we_rahanA_hE,gen_m> => s40;
<_,per_a,num_p,tam_we_rahanA_hE,gen_m> => s41;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_m> => s42;
<_,per_u,num_s,tam_we_rahanA_hE,gen_f> => s43;
<_,per_m,num_s,tam_we_rahanA_hE,gen_f> => s44;
<_,per_a,num_s,tam_we_rahanA_hE,gen_f> => s45;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_f> => s46;
<_,per_u,num_p,tam_we_rahanA_hE,gen_f> => s47;
<_,per_m,num_p,tam_we_rahanA_hE,gen_f> => s48;
<_,per_a,num_p,tam_we_rahanA_hE,gen_f> => s49;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_f> => s50;
<_,per_m_h0,num_s,tam_imper,gen_f> => s51;
<_,per_m_h0,num_s,tam_imper,gen_m> => s52;
<_,per_m_h1,num_s,tam_imper,gen_f> => s53;
<_,per_m_h1,num_s,tam_imper,gen_m> => s54;
<_,per_m_h1,num_p,tam_imper,gen_f> => s55;
<_,per_m_h1,num_p,tam_imper,gen_m> => s56;
<_,per_m_h2,num_s,tam_imper,gen_f> => s57;
<_,per_m_h2,num_s,tam_imper,gen_m> => s58;
<_,per_m_h2,num_p,tam_imper,gen_m> => s59;
<_,per_m_h2,num_p,tam_imper,gen_f> => s60;
<_,per_u,num_s,tam_kara,gen_m> => s61;
<_,per_m,num_s,tam_kara,gen_m> => s62;
<_,per_a,num_s,tam_kara,gen_m> => s63;
<_,per_m_h,num_s,tam_kara,gen_m> => s64;
<_,per_u,num_p,tam_kara,gen_m> => s65;
<_,per_m,num_p,tam_kara,gen_m> => s66;
<_,per_a,num_p,tam_kara,gen_m> => s67;
<_,per_m_h,num_p,tam_kara,gen_m> => s68;
<_,per_u,num_s,tam_kara,gen_f> => s69;
<_,per_m,num_s,tam_kara,gen_f> => s70;
<_,per_a,num_s,tam_kara,gen_f> => s71;
<_,per_m_h,num_s,tam_kara,gen_f> => s72;
<_,per_u,num_p,tam_kara,gen_f> => s73;
<_,per_m,num_p,tam_kara,gen_f> => s74;
<_,per_a,num_p,tam_kara,gen_f> => s75;
<_,per_m_h,num_p,tam_kara,gen_f> => s76;
<_,per_u,num_s,tam_yA,gen_m> => s77;
<_,per_m,num_s,tam_yA,gen_m> => s78;
<_,per_a,num_s,tam_yA,gen_m> => s79;
<_,per_m_h,num_s,tam_yA,gen_m> => s80;
<_,per_u,num_p,tam_yA,gen_m> => s81;
<_,per_m,num_p,tam_yA,gen_m> => s82;
<_,per_a,num_p,tam_yA,gen_m> => s83;
<_,per_m_h,num_p,tam_yA,gen_m> => s84;
<_,per_u,num_s,tam_yA,gen_f> => s85;
<_,per_m,num_s,tam_yA,gen_f> => s86;
<_,per_a,num_s,tam_yA,gen_f> => s87;
<_,per_m_h,num_s,tam_yA,gen_f> => s88;
<_,per_u,num_p,tam_yA,gen_f> => s89;
<_,per_m,num_p,tam_yA,gen_f> => s90;
<_,per_a,num_p,tam_yA,gen_f> => s91;
<_,per_m_h,num_p,tam_yA,gen_f> => s92;
<_,per_u,num_s,tam_0,gen_m> => s93;
<_,per_m,num_s,tam_0,gen_m> => s94;
<_,per_a,num_s,tam_0,gen_m> => s95;
<_,per_m_h,num_s,tam_0,gen_m> => s96;
<_,per_u,num_p,tam_0,gen_m> => s97;
<_,per_m,num_p,tam_0,gen_m> => s98;
<_,per_a,num_p,tam_0,gen_m> => s99;
<_,per_m_h,num_p,tam_0,gen_m> => s100;
<_,per_u,num_s,tam_0,gen_f> => s101;
<_,per_m,num_s,tam_0,gen_f> => s102;
<_,per_a,num_s,tam_0,gen_f> => s103;
<_,per_m_h,num_s,tam_0,gen_f> => s104;
<_,per_u,num_p,tam_0,gen_f> => s105;
<_,per_m,num_p,tam_0,gen_f> => s106;
<_,per_a,num_p,tam_0,gen_f> => s107;
<_,per_m_h,num_p,tam_0,gen_f> => s108;
<_,per_u,num_s,tam_subj,gen_m> => s109;
<_,per_u,num_s,tam_subj,gen_f> => s110;
<_,per_m,num_s,tam_subj,gen_m> => s111;
<_,per_m,num_s,tam_subj,gen_f> => s112;
<_,per_m_h,num_s,tam_subj,gen_m> => s113;
<_,per_m_h,num_s,tam_subj,gen_f> => s114;
<_,per_a,num_s,tam_subj,gen_m> => s115;
<_,per_a,num_s,tam_subj,gen_f> => s116;
<_,per_u,num_p,tam_subj,gen_m> => s117;
<_,per_u,num_p,tam_subj,gen_f> => s118;
<_,per_m,num_p,tam_subj,gen_m> => s119;
<_,per_m,num_p,tam_subj,gen_f> => s120;
<_,per_m_h,num_p,tam_subj,gen_m> => s121;
<_,per_m_h,num_p,tam_subj,gen_f> => s122;
<_,per_a,num_p,tam_subj,gen_m> => s123;
<_,per_a,num_p,tam_subj,gen_f> => s124;
<_,per_u,num_s,tam_nA,gen_m> => s125;
<_,per_m,num_s,tam_nA,gen_m> => s126;
<_,per_a,num_s,tam_nA,gen_m> => s127;
<_,per_m_h,num_s,tam_nA,gen_m> => s128;
<_,per_u,num_p,tam_nA,gen_m> => s129;
<_,per_m,num_p,tam_nA,gen_m> => s130;
<_,per_a,num_p,tam_nA,gen_m> => s131;
<_,per_m_h,num_p,tam_nA,gen_m> => s132;
<_,per_u,num_s,tam_nA,gen_f> => s133;
<_,per_m,num_s,tam_nA,gen_f> => s134;
<_,per_a,num_s,tam_nA,gen_f> => s135;
<_,per_m_h,num_s,tam_nA,gen_f> => s136;
<_,per_u,num_p,tam_nA,gen_f> => s137;
<_,per_m,num_p,tam_nA,gen_f> => s138;
<_,per_a,num_p,tam_nA,gen_f> => s139;
<_,per_m_h,num_p,tam_nA,gen_f> => s140;
<_,per_u,num_s,tam_wA,gen_m> => s141;
<_,per_m,num_s,tam_wA,gen_m> => s142;
<_,per_a,num_s,tam_wA,gen_m> => s143;
<_,per_m_h,num_s,tam_wA,gen_m> => s144;
<_,per_u,num_p,tam_wA,gen_m> => s145;
<_,per_m,num_p,tam_wA,gen_m> => s146;
<_,per_a,num_p,tam_wA,gen_m> => s147;
<_,per_m_h,num_p,tam_wA,gen_m> => s148;
<_,per_u,num_s,tam_wA,gen_f> => s149;
<_,per_m,num_s,tam_wA,gen_f> => s150;
<_,per_a,num_s,tam_wA,gen_f> => s151;
<_,per_m_h,num_s,tam_wA,gen_f> => s152;
<_,per_u,num_p,tam_wA,gen_f> => s153;
<_,per_m,num_p,tam_wA,gen_f> => s154;
<_,per_a,num_p,tam_wA,gen_f> => s155;
<_,per_m_h,num_p,tam_wA,gen_f> => s156;
<_,per_u,num_s,tam_gA,gen_m> => s157;
<_,per_m,num_s,tam_gA,gen_m> => s158;
<_,per_m_h,num_s,tam_gA,gen_m> => s159;
<_,per_a,num_s,tam_gA,gen_m> => s160;
<_,per_u,num_p,tam_gA,gen_m> => s161;
<_,per_m,num_p,tam_gA,gen_m> => s162;
<_,per_m_h,num_p,tam_gA,gen_m> => s163;
<_,per_a,num_p,tam_gA,gen_m> => s164;
<_,per_u,num_s,tam_gA,gen_f> => s165;
<_,per_m,num_s,tam_gA,gen_f> => s166;
<_,per_m_h,num_s,tam_gA,gen_f> => s167;
<_,per_a,num_s,tam_gA,gen_f> => s168;
<_,per_u,num_p,tam_gA,gen_f> => s169;
<_,per_m,num_p,tam_gA,gen_f> => s170;
<_,per_m_h,num_p,tam_gA,gen_f> => s171;
<_,per_a,num_p,tam_gA,gen_f> => s172;
_ => "--"
};
};
le_v: Str -> { s : Case => Per => Num => Tam => Gen => Str } = \s -> case s of {
var + "e" => mkFunc13 (var+"enA") (var+"ene") (var+"ewA_huA") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewI_huI") (var+"ewI_huI") (var+"ewI_huI") (var+"ewI_huI") (var+"iyA_huA") (var+"iye_hue") (var+"iye_hue") (var+"iye_hue") (var+"I_huI") (var+"I_huI") (var+"I_huI") (var+"I_huI") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"e") (var+"e") (var+"o") (var+"o") (var+"o") (var+"o") (var+"Ijiye") (var+"Ijiye") (var+"Ijiye") (var+"Ijiye") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"iyA") (var+"iyA") (var+"iyA") (var+"iyA") (var+"iye") (var+"iye") (var+"iye") (var+"iye") (var+"I") (var+"I") (var+"I") (var+"I") (var+"IM") (var+"IM") (var+"IM") (var+"IM") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"Uz") (var+"Uz") (var+"e") (var+"e") (var+"Ijie") (var+"Ijie") (var+"e") (var+"e") (var+"eM") (var+"eM") (var+"o") (var+"o") (var+"Ijie") (var+"Ijie") (var+"eM") (var+"eM") (var+"enA") (var+"enA") (var+"enA") (var+"enA") (var+"ene") (var+"ene") (var+"ene") (var+"ene") (var+"enI") (var+"enI") (var+"enI") (var+"enI") (var+"enIM") (var+"enIM") (var+"enIM") (var+"enIM") (var+"ewA") (var+"ewA") (var+"ewA") (var+"ewA") (var+"ewe") (var+"ewe") (var+"ewe") (var+"ewe") (var+"ewI") (var+"ewI") (var+"ewI") (var+"ewI") (var+"ewIM") (var+"ewIM") (var+"ewIM") (var+"ewIM") (var+"UzgA") (var+"egA") (var+"IjiyegA") (var+"egA") (var+"eMge") (var+"oge") (var+"IjiyegA") (var+"eMge") (var+"UzgI") (var+"egI") (var+"IjiyegA") (var+"egI") (var+"eMgI") (var+"ogI") (var+"IjiyegA") (var+"eMgI")
};
mkFunc14: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Per => Num => Tam => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120,s121,s122,s123,s124,s125,s126,s127,s128,s129,s130,s131,s132,s133,s134,s135,s136,s137,s138,s139,s140,s141,s142,s143,s144,s145,s146,s147,s148,s149,s150,s151,s152,s153,s154,s155,s156,s157,s158,s159,s160,s161,s162,s163,s164 -> {
s = \\x1,x2,x3,x4,x5 => case <x1,x2,x3,x4,x5> of {
<case_d,_,_,_,_> => s1;
<case_o,_,_,_,_> => s2;
<case_d,_,num_s,tam_adj_wA_huA,gen_m> => s3;
<case_d,_,num_p,tam_adj_wA_huA,gen_m> => s4;
<case_o,_,num_s,tam_adj_wA_huA,gen_m> => s5;
<case_o,_,num_p,tam_adj_wA_huA,gen_m> => s6;
<case_d,_,num_s,tam_adj_wA_huA,gen_f> => s7;
<case_d,_,num_p,tam_adj_wA_huA,gen_f> => s8;
<case_o,_,num_s,tam_adj_wA_huA,gen_f> => s9;
<case_o,_,num_p,tam_adj_wA_huA,gen_f> => s10;
<_,per_u,num_s,tam_adv_we_hue,gen_m> => s11;
<_,per_m,num_s,tam_adv_we_hue,gen_m> => s12;
<_,per_a,num_s,tam_adv_we_hue,gen_m> => s13;
<_,per_m_h,num_s,tam_adv_we_hue,gen_m> => s14;
<_,per_u,num_p,tam_adv_we_hue,gen_m> => s15;
<_,per_m,num_p,tam_adv_we_hue,gen_m> => s16;
<_,per_a,num_p,tam_adv_we_hue,gen_m> => s17;
<_,per_m_h,num_p,tam_adv_we_hue,gen_m> => s18;
<_,per_u,num_s,tam_adv_we_hue,gen_f> => s19;
<_,per_m,num_s,tam_adv_we_hue,gen_f> => s20;
<_,per_a,num_s,tam_adv_we_hue,gen_f> => s21;
<_,per_m_h,num_s,tam_adv_we_hue,gen_f> => s22;
<_,per_u,num_p,tam_adv_we_hue,gen_f> => s23;
<_,per_m,num_p,tam_adv_we_hue,gen_f> => s24;
<_,per_a,num_p,tam_adv_we_hue,gen_f> => s25;
<_,per_m_h,num_p,tam_adv_we_hue,gen_f> => s26;
<_,per_u,num_s,tam_we_rahanA_hE,gen_m> => s27;
<_,per_m,num_s,tam_we_rahanA_hE,gen_m> => s28;
<_,per_a,num_s,tam_we_rahanA_hE,gen_m> => s29;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_m> => s30;
<_,per_u,num_p,tam_we_rahanA_hE,gen_m> => s31;
<_,per_m,num_p,tam_we_rahanA_hE,gen_m> => s32;
<_,per_a,num_p,tam_we_rahanA_hE,gen_m> => s33;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_m> => s34;
<_,per_u,num_s,tam_we_rahanA_hE,gen_f> => s35;
<_,per_m,num_s,tam_we_rahanA_hE,gen_f> => s36;
<_,per_a,num_s,tam_we_rahanA_hE,gen_f> => s37;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_f> => s38;
<_,per_u,num_p,tam_we_rahanA_hE,gen_f> => s39;
<_,per_m,num_p,tam_we_rahanA_hE,gen_f> => s40;
<_,per_a,num_p,tam_we_rahanA_hE,gen_f> => s41;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_f> => s42;
<_,per_u,num_s,tam_kara,gen_m> => s43;
<_,per_m,num_s,tam_kara,gen_m> => s44;
<_,per_a,num_s,tam_kara,gen_m> => s45;
<_,per_m_h,num_s,tam_kara,gen_m> => s46;
<_,per_u,num_p,tam_kara,gen_m> => s47;
<_,per_m,num_p,tam_kara,gen_m> => s48;
<_,per_a,num_p,tam_kara,gen_m> => s49;
<_,per_m_h,num_p,tam_kara,gen_m> => s50;
<_,per_u,num_s,tam_kara,gen_f> => s51;
<_,per_m,num_s,tam_kara,gen_f> => s52;
<_,per_a,num_s,tam_kara,gen_f> => s53;
<_,per_m_h,num_s,tam_kara,gen_f> => s54;
<_,per_u,num_p,tam_kara,gen_f> => s55;
<_,per_m,num_p,tam_kara,gen_f> => s56;
<_,per_a,num_p,tam_kara,gen_f> => s57;
<_,per_m_h,num_p,tam_kara,gen_f> => s58;
<_,per_u,num_s,tam_0,gen_m> => s59;
<_,per_m,num_s,tam_0,gen_m> => s60;
<_,per_a,num_s,tam_0,gen_m> => s61;
<_,per_m_h,num_s,tam_0,gen_m> => s62;
<_,per_u,num_p,tam_0,gen_m> => s63;
<_,per_m,num_p,tam_0,gen_m> => s64;
<_,per_a,num_p,tam_0,gen_m> => s65;
<_,per_m_h,num_p,tam_0,gen_m> => s66;
<_,per_u,num_s,tam_0,gen_f> => s67;
<_,per_m,num_s,tam_0,gen_f> => s68;
<_,per_a,num_s,tam_0,gen_f> => s69;
<_,per_m_h,num_s,tam_0,gen_f> => s70;
<_,per_u,num_p,tam_0,gen_f> => s71;
<_,per_m,num_p,tam_0,gen_f> => s72;
<_,per_a,num_p,tam_0,gen_f> => s73;
<_,per_m_h,num_p,tam_0,gen_f> => s74;
<_,per_u,num_s,tam_subj,gen_m> => s75;
<_,per_u,num_s,tam_subj,gen_f> => s76;
<_,per_m,num_s,tam_subj,gen_m> => s77;
<_,per_m,num_s,tam_subj,gen_f> => s78;
<_,per_m_h,num_s,tam_subj,gen_m> => s79;
<_,per_m_h,num_s,tam_subj,gen_f> => s80;
<_,per_a,num_s,tam_subj,gen_m> => s81;
<_,per_a,num_s,tam_subj,gen_f> => s82;
<_,per_u,num_p,tam_subj,gen_m> => s83;
<_,per_u,num_p,tam_subj,gen_f> => s84;
<_,per_m,num_p,tam_subj,gen_m> => s85;
<_,per_m,num_p,tam_subj,gen_f> => s86;
<_,per_m_h,num_p,tam_subj,gen_m> => s87;
<_,per_m_h,num_p,tam_subj,gen_f> => s88;
<_,per_a,num_p,tam_subj,gen_m> => s89;
<_,per_a,num_p,tam_subj,gen_f> => s90;
<_,per_u,num_s,tam_nA,gen_m> => s91;
<_,per_m,num_s,tam_nA,gen_m> => s92;
<_,per_a,num_s,tam_nA,gen_m> => s93;
<_,per_m_h,num_s,tam_nA,gen_m> => s94;
<_,per_u,num_p,tam_nA,gen_m> => s95;
<_,per_m,num_p,tam_nA,gen_m> => s96;
<_,per_a,num_p,tam_nA,gen_m> => s97;
<_,per_m_h,num_p,tam_nA,gen_m> => s98;
<_,per_u,num_s,tam_nA,gen_f> => s99;
<_,per_m,num_s,tam_nA,gen_f> => s100;
<_,per_a,num_s,tam_nA,gen_f> => s101;
<_,per_m_h,num_s,tam_nA,gen_f> => s102;
<_,per_u,num_p,tam_nA,gen_f> => s103;
<_,per_m,num_p,tam_nA,gen_f> => s104;
<_,per_a,num_p,tam_nA,gen_f> => s105;
<_,per_m_h,num_p,tam_nA,gen_f> => s106;
<_,per_u,num_s,tam_wA,gen_m> => s107;
<_,per_m,num_s,tam_wA,gen_m> => s108;
<_,per_a,num_s,tam_wA,gen_m> => s109;
<_,per_m_h,num_s,tam_wA,gen_m> => s110;
<_,per_u,num_p,tam_wA,gen_m> => s111;
<_,per_m,num_p,tam_wA,gen_m> => s112;
<_,per_a,num_p,tam_wA,gen_m> => s113;
<_,per_m_h,num_p,tam_wA,gen_m> => s114;
<_,per_u,num_s,tam_wA,gen_f> => s115;
<_,per_m,num_s,tam_wA,gen_f> => s116;
<_,per_a,num_s,tam_wA,gen_f> => s117;
<_,per_m_h,num_s,tam_wA,gen_f> => s118;
<_,per_u,num_p,tam_wA,gen_f> => s119;
<_,per_m,num_p,tam_wA,gen_f> => s120;
<_,per_a,num_p,tam_wA,gen_f> => s121;
<_,per_m_h,num_p,tam_wA,gen_f> => s122;
<_,per_u,num_s,tam_yA,gen_m> => s123;
<_,per_m,num_s,tam_yA,gen_m> => s124;
<_,per_a,num_s,tam_yA,gen_m> => s125;
<_,per_m_h,num_s,tam_yA,gen_m> => s126;
<_,per_u,num_p,tam_yA,gen_m> => s127;
<_,per_m,num_p,tam_yA,gen_m> => s128;
<_,per_a,num_p,tam_yA,gen_m> => s129;
<_,per_m_h,num_p,tam_yA,gen_m> => s130;
<_,per_u,num_s,tam_yA,gen_f> => s131;
<_,per_m,num_s,tam_yA,gen_f> => s132;
<_,per_a,num_s,tam_yA,gen_f> => s133;
<_,per_m_h,num_s,tam_yA,gen_f> => s134;
<_,per_u,num_p,tam_yA,gen_f> => s135;
<_,per_m,num_p,tam_yA,gen_f> => s136;
<_,per_a,num_p,tam_yA,gen_f> => s137;
<_,per_m_h,num_p,tam_yA,gen_f> => s138;
<_,per_u,num_s,tam_gA,gen_m> => s139;
<_,per_m,num_s,tam_gA,gen_m> => s140;
<_,per_m_h,num_s,tam_gA,gen_m> => s141;
<_,per_a,num_s,tam_gA,gen_m> => s142;
<_,per_u,num_p,tam_gA,gen_m> => s143;
<_,per_m,num_p,tam_gA,gen_m> => s144;
<_,per_m_h,num_p,tam_gA,gen_m> => s145;
<_,per_a,num_p,tam_gA,gen_m> => s146;
<_,per_u,num_s,tam_gA,gen_f> => s147;
<_,per_m,num_s,tam_gA,gen_f> => s148;
<_,per_m_h,num_s,tam_gA,gen_f> => s149;
<_,per_a,num_s,tam_gA,gen_f> => s150;
<_,per_u,num_p,tam_gA,gen_f> => s151;
<_,per_m,num_p,tam_gA,gen_f> => s152;
<_,per_m_h,num_p,tam_gA,gen_f> => s153;
<_,per_a,num_p,tam_gA,gen_f> => s154;
<_,per_m_h0,num_s,tam_imper,gen_f> => s155;
<_,per_m_h0,num_s,tam_imper,gen_m> => s156;
<_,per_m_h1,num_s,tam_imper,gen_f> => s157;
<_,per_m_h1,num_s,tam_imper,gen_m> => s158;
<_,per_m_h1,num_p,tam_imper,gen_f> => s159;
<_,per_m_h1,num_p,tam_imper,gen_m> => s160;
<_,per_m_h2,num_s,tam_imper,gen_f> => s161;
<_,per_m_h2,num_s,tam_imper,gen_m> => s162;
<_,per_m_h2,num_p,tam_imper,gen_m> => s163;
<_,per_m_h2,num_p,tam_imper,gen_f> => s164;
_ => "--"
};
};
ho_v: Str -> { s : Case => Per => Num => Tam => Gen => Str } = \s -> case s of {
var + "o" => mkFunc14 (var+"onA") (var+"one") (var+"owA_huA") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owI_huI") (var+"owI_huI") (var+"owI_huI") (var+"owI_huI") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"oUz") (var+"oUz") (var+"o") (var+"o") (var+"oie") (var+"oie") (var+"o") (var+"o") (var+"oyeM") (var+"oyeM") (var+"o") (var+"o") (var+"oie") (var+"oie") (var+"oyeM") (var+"oyeM") (var+"onA") (var+"onA") (var+"onA") (var+"onA") (var+"one") (var+"one") (var+"one") (var+"one") (var+"onI") (var+"onI") (var+"onI") (var+"onI") (var+"onIM") (var+"onIM") (var+"onIM") (var+"onIM") (var+"owA") (var+"owA") (var+"owA") (var+"owA") (var+"owe") (var+"owe") (var+"owe") (var+"owe") (var+"owI") (var+"owI") (var+"owI") (var+"owI") (var+"owIM") (var+"owIM") (var+"owIM") (var+"owIM") (var+"uA") (var+"uA") (var+"uA") (var+"uA") (var+"ue") (var+"ue") (var+"ue") (var+"ue") (var+"uI") (var+"uI") (var+"uI") (var+"uI") (var+"uIM") (var+"uIM") (var+"uIM") (var+"uIM") (var+"oUzgA") (var+"ogA") (var+"oiyegA") (var+"ogA") (var+"oMge") (var+"oge") (var+"oiyegA") (var+"oMge") (var+"oUzgI") (var+"ogI") (var+"oiyegA") (var+"ogI") (var+"oMgI") (var+"ogI") (var+"oiyegA") (var+"oMgI") (var+"o") (var+"o") (var+"oo") (var+"oo") (var+"oo") (var+"oo") (var+"oiye") (var+"oiye") (var+"oiye") (var+"oiye")
};
mkFunc15: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Per => Num => Tam => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120,s121,s122,s123,s124,s125,s126,s127,s128,s129,s130,s131,s132,s133,s134,s135,s136,s137,s138,s139,s140,s141,s142,s143,s144,s145,s146,s147,s148,s149,s150,s151,s152,s153,s154,s155,s156,s157,s158,s159,s160,s161,s162,s163,s164,s165,s166,s167,s168,s169,s170,s171,s172 -> {
s = \\x1,x2,x3,x4,x5 => case <x1,x2,x3,x4,x5> of {
<case_d,_,_,_,_> => s1;
<case_o,_,_,_,_> => s2;
<case_d,_,num_s,tam_adj_wA_huA,gen_m> => s3;
<case_d,_,num_p,tam_adj_wA_huA,gen_m> => s4;
<case_o,_,num_s,tam_adj_wA_huA,gen_m> => s5;
<case_o,_,num_p,tam_adj_wA_huA,gen_m> => s6;
<case_d,_,num_s,tam_adj_wA_huA,gen_f> => s7;
<case_d,_,num_p,tam_adj_wA_huA,gen_f> => s8;
<case_o,_,num_s,tam_adj_wA_huA,gen_f> => s9;
<case_o,_,num_p,tam_adj_wA_huA,gen_f> => s10;
<case_d,_,num_s,tam_adj_yA_huA,gen_m> => s11;
<case_d,_,num_p,tam_adj_yA_huA,gen_m> => s12;
<case_o,_,num_s,tam_adj_yA_huA,gen_m> => s13;
<case_o,_,num_p,tam_adj_yA_huA,gen_m> => s14;
<case_d,_,num_s,tam_adj_yA_huA,gen_f> => s15;
<case_d,_,num_p,tam_adj_yA_huA,gen_f> => s16;
<case_o,_,num_s,tam_adj_yA_huA,gen_f> => s17;
<case_o,_,num_p,tam_adj_yA_huA,gen_f> => s18;
<_,per_u,num_s,tam_adv_we_hue,gen_m> => s19;
<_,per_m,num_s,tam_adv_we_hue,gen_m> => s20;
<_,per_a,num_s,tam_adv_we_hue,gen_m> => s21;
<_,per_m_h,num_s,tam_adv_we_hue,gen_m> => s22;
<_,per_u,num_p,tam_adv_we_hue,gen_m> => s23;
<_,per_m,num_p,tam_adv_we_hue,gen_m> => s24;
<_,per_a,num_p,tam_adv_we_hue,gen_m> => s25;
<_,per_m_h,num_p,tam_adv_we_hue,gen_m> => s26;
<_,per_u,num_s,tam_adv_we_hue,gen_f> => s27;
<_,per_m,num_s,tam_adv_we_hue,gen_f> => s28;
<_,per_a,num_s,tam_adv_we_hue,gen_f> => s29;
<_,per_m_h,num_s,tam_adv_we_hue,gen_f> => s30;
<_,per_u,num_p,tam_adv_we_hue,gen_f> => s31;
<_,per_m,num_p,tam_adv_we_hue,gen_f> => s32;
<_,per_a,num_p,tam_adv_we_hue,gen_f> => s33;
<_,per_m_h,num_p,tam_adv_we_hue,gen_f> => s34;
<_,per_u,num_s,tam_we_rahanA_hE,gen_m> => s35;
<_,per_m,num_s,tam_we_rahanA_hE,gen_m> => s36;
<_,per_a,num_s,tam_we_rahanA_hE,gen_m> => s37;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_m> => s38;
<_,per_u,num_p,tam_we_rahanA_hE,gen_m> => s39;
<_,per_m,num_p,tam_we_rahanA_hE,gen_m> => s40;
<_,per_a,num_p,tam_we_rahanA_hE,gen_m> => s41;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_m> => s42;
<_,per_u,num_s,tam_we_rahanA_hE,gen_f> => s43;
<_,per_m,num_s,tam_we_rahanA_hE,gen_f> => s44;
<_,per_a,num_s,tam_we_rahanA_hE,gen_f> => s45;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_f> => s46;
<_,per_u,num_p,tam_we_rahanA_hE,gen_f> => s47;
<_,per_m,num_p,tam_we_rahanA_hE,gen_f> => s48;
<_,per_a,num_p,tam_we_rahanA_hE,gen_f> => s49;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_f> => s50;
<_,per_m_h0,num_s,tam_imper,gen_f> => s51;
<_,per_m_h0,num_s,tam_imper,gen_m> => s52;
<_,per_m_h1,num_s,tam_imper,gen_f> => s53;
<_,per_m_h1,num_s,tam_imper,gen_m> => s54;
<_,per_m_h1,num_p,tam_imper,gen_f> => s55;
<_,per_m_h1,num_p,tam_imper,gen_m> => s56;
<_,per_m_h2,num_s,tam_imper,gen_f> => s57;
<_,per_m_h2,num_s,tam_imper,gen_m> => s58;
<_,per_m_h2,num_p,tam_imper,gen_m> => s59;
<_,per_m_h2,num_p,tam_imper,gen_f> => s60;
<_,per_u,num_s,tam_yA,gen_m> => s61;
<_,per_m,num_s,tam_yA,gen_m> => s62;
<_,per_a,num_s,tam_yA,gen_m> => s63;
<_,per_m_h,num_s,tam_yA,gen_m> => s64;
<_,per_u,num_p,tam_yA,gen_m> => s65;
<_,per_m,num_p,tam_yA,gen_m> => s66;
<_,per_a,num_p,tam_yA,gen_m> => s67;
<_,per_m_h,num_p,tam_yA,gen_m> => s68;
<_,per_u,num_s,tam_yA,gen_f> => s69;
<_,per_m,num_s,tam_yA,gen_f> => s70;
<_,per_a,num_s,tam_yA,gen_f> => s71;
<_,per_m_h,num_s,tam_yA,gen_f> => s72;
<_,per_u,num_p,tam_yA,gen_f> => s73;
<_,per_m,num_p,tam_yA,gen_f> => s74;
<_,per_a,num_p,tam_yA,gen_f> => s75;
<_,per_m_h,num_p,tam_yA,gen_f> => s76;
<_,per_u,num_s,tam_0,gen_m> => s77;
<_,per_m,num_s,tam_0,gen_m> => s78;
<_,per_a,num_s,tam_0,gen_m> => s79;
<_,per_m_h,num_s,tam_0,gen_m> => s80;
<_,per_u,num_p,tam_0,gen_m> => s81;
<_,per_m,num_p,tam_0,gen_m> => s82;
<_,per_a,num_p,tam_0,gen_m> => s83;
<_,per_m_h,num_p,tam_0,gen_m> => s84;
<_,per_u,num_s,tam_0,gen_f> => s85;
<_,per_m,num_s,tam_0,gen_f> => s86;
<_,per_a,num_s,tam_0,gen_f> => s87;
<_,per_m_h,num_s,tam_0,gen_f> => s88;
<_,per_u,num_p,tam_0,gen_f> => s89;
<_,per_m,num_p,tam_0,gen_f> => s90;
<_,per_a,num_p,tam_0,gen_f> => s91;
<_,per_m_h,num_p,tam_0,gen_f> => s92;
<_,per_u,num_s,tam_kara,gen_m> => s93;
<_,per_m,num_s,tam_kara,gen_m> => s94;
<_,per_a,num_s,tam_kara,gen_m> => s95;
<_,per_m_h,num_s,tam_kara,gen_m> => s96;
<_,per_u,num_p,tam_kara,gen_m> => s97;
<_,per_m,num_p,tam_kara,gen_m> => s98;
<_,per_a,num_p,tam_kara,gen_m> => s99;
<_,per_m_h,num_p,tam_kara,gen_m> => s100;
<_,per_u,num_s,tam_kara,gen_f> => s101;
<_,per_m,num_s,tam_kara,gen_f> => s102;
<_,per_a,num_s,tam_kara,gen_f> => s103;
<_,per_m_h,num_s,tam_kara,gen_f> => s104;
<_,per_u,num_p,tam_kara,gen_f> => s105;
<_,per_m,num_p,tam_kara,gen_f> => s106;
<_,per_a,num_p,tam_kara,gen_f> => s107;
<_,per_m_h,num_p,tam_kara,gen_f> => s108;
<_,per_u,num_s,tam_nA,gen_m> => s109;
<_,per_m,num_s,tam_nA,gen_m> => s110;
<_,per_a,num_s,tam_nA,gen_m> => s111;
<_,per_m_h,num_s,tam_nA,gen_m> => s112;
<_,per_u,num_p,tam_nA,gen_m> => s113;
<_,per_m,num_p,tam_nA,gen_m> => s114;
<_,per_a,num_p,tam_nA,gen_m> => s115;
<_,per_m_h,num_p,tam_nA,gen_m> => s116;
<_,per_u,num_s,tam_nA,gen_f> => s117;
<_,per_m,num_s,tam_nA,gen_f> => s118;
<_,per_a,num_s,tam_nA,gen_f> => s119;
<_,per_m_h,num_s,tam_nA,gen_f> => s120;
<_,per_u,num_p,tam_nA,gen_f> => s121;
<_,per_m,num_p,tam_nA,gen_f> => s122;
<_,per_a,num_p,tam_nA,gen_f> => s123;
<_,per_m_h,num_p,tam_nA,gen_f> => s124;
<_,per_u,num_s,tam_wA,gen_m> => s125;
<_,per_m,num_s,tam_wA,gen_m> => s126;
<_,per_a,num_s,tam_wA,gen_m> => s127;
<_,per_m_h,num_s,tam_wA,gen_m> => s128;
<_,per_u,num_p,tam_wA,gen_m> => s129;
<_,per_m,num_p,tam_wA,gen_m> => s130;
<_,per_a,num_p,tam_wA,gen_m> => s131;
<_,per_m_h,num_p,tam_wA,gen_m> => s132;
<_,per_u,num_s,tam_wA,gen_f> => s133;
<_,per_m,num_s,tam_wA,gen_f> => s134;
<_,per_a,num_s,tam_wA,gen_f> => s135;
<_,per_m_h,num_s,tam_wA,gen_f> => s136;
<_,per_u,num_p,tam_wA,gen_f> => s137;
<_,per_m,num_p,tam_wA,gen_f> => s138;
<_,per_a,num_p,tam_wA,gen_f> => s139;
<_,per_m_h,num_p,tam_wA,gen_f> => s140;
<_,per_u,num_s,tam_subj,gen_m> => s141;
<_,per_u,num_s,tam_subj,gen_f> => s142;
<_,per_m,num_s,tam_subj,gen_m> => s143;
<_,per_m,num_s,tam_subj,gen_f> => s144;
<_,per_m_h,num_s,tam_subj,gen_m> => s145;
<_,per_m_h,num_s,tam_subj,gen_f> => s146;
<_,per_a,num_s,tam_subj,gen_m> => s147;
<_,per_a,num_s,tam_subj,gen_f> => s148;
<_,per_u,num_p,tam_subj,gen_m> => s149;
<_,per_u,num_p,tam_subj,gen_f> => s150;
<_,per_m,num_p,tam_subj,gen_m> => s151;
<_,per_m,num_p,tam_subj,gen_f> => s152;
<_,per_m_h,num_p,tam_subj,gen_m> => s153;
<_,per_m_h,num_p,tam_subj,gen_f> => s154;
<_,per_a,num_p,tam_subj,gen_m> => s155;
<_,per_a,num_p,tam_subj,gen_f> => s156;
<_,per_u,num_s,tam_gA,gen_m> => s157;
<_,per_m,num_s,tam_gA,gen_m> => s158;
<_,per_m_h,num_s,tam_gA,gen_m> => s159;
<_,per_a,num_s,tam_gA,gen_m> => s160;
<_,per_u,num_p,tam_gA,gen_m> => s161;
<_,per_m,num_p,tam_gA,gen_m> => s162;
<_,per_m_h,num_p,tam_gA,gen_m> => s163;
<_,per_a,num_p,tam_gA,gen_m> => s164;
<_,per_u,num_s,tam_gA,gen_f> => s165;
<_,per_m,num_s,tam_gA,gen_f> => s166;
<_,per_m_h,num_s,tam_gA,gen_f> => s167;
<_,per_a,num_s,tam_gA,gen_f> => s168;
<_,per_u,num_p,tam_gA,gen_f> => s169;
<_,per_m,num_p,tam_gA,gen_f> => s170;
<_,per_m_h,num_p,tam_gA,gen_f> => s171;
<_,per_a,num_p,tam_gA,gen_f> => s172;
_ => "--"
};
};
pI_v: Str -> { s : Case => Per => Num => Tam => Gen => Str } = \s -> case s of {
var + "I" => mkFunc15 (var+"InA") (var+"Ine") (var+"IwA_huA") (var+"Iwe_hue") (var+"Iwe_hue") (var+"Iwe_hue") (var+"IwI_huI") (var+"IwI_huI") (var+"IwI_huI") (var+"IwI_huI") (var+"iyA_huA") (var+"iye_hue") (var+"iye_hue") (var+"iye_hue") (var+"I_huI") (var+"I_huI") (var+"I_huI") (var+"I_huI") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"I") (var+"I") (var+"Io") (var+"Io") (var+"Io") (var+"Io") (var+"Ijiye") (var+"Ijiye") (var+"Ijiye") (var+"Ijiye") (var+"iyA") (var+"iyA") (var+"iyA") (var+"iyA") (var+"iye") (var+"iye") (var+"iye") (var+"iye") (var+"I") (var+"I") (var+"I") (var+"I") (var+"IM") (var+"IM") (var+"IM") (var+"IM") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"InA") (var+"InA") (var+"InA") (var+"InA") (var+"Ine") (var+"Ine") (var+"Ine") (var+"Ine") (var+"InI") (var+"InI") (var+"InI") (var+"InI") (var+"InIM") (var+"InIM") (var+"InIM") (var+"InIM") (var+"IwA") (var+"IwA") (var+"IwA") (var+"IwA") (var+"Iwe") (var+"Iwe") (var+"Iwe") (var+"Iwe") (var+"IwI") (var+"IwI") (var+"IwI") (var+"IwI") (var+"IwIM") (var+"IwIM") (var+"IwIM") (var+"IwIM") (var+"iUz") (var+"iUz") (var+"iye") (var+"iye") (var+"Ijiye") (var+"Ijiye") (var+"iye") (var+"iye") (var+"iyeM") (var+"iyeM") (var+"io") (var+"io") (var+"Ijiye") (var+"Ijiye") (var+"iyeM") (var+"iyeM") (var+"iUzgA") (var+"iegA") (var+"IjiegA") (var+"iegA") (var+"iezge") (var+"ioge") (var+"IjiegA") (var+"iezge") (var+"iUzgI") (var+"iyegI") (var+"IjiegA") (var+"iyegI") (var+"iezgI") (var+"iogI") (var+"IjiegA") (var+"iezgI")
};
mkFunc16: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Per => Num => Tam => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120,s121,s122,s123,s124,s125,s126,s127,s128,s129,s130,s131,s132,s133,s134,s135,s136,s137,s138,s139,s140,s141,s142,s143,s144,s145,s146,s147,s148,s149,s150,s151,s152,s153,s154,s155,s156,s157,s158,s159,s160,s161,s162,s163,s164,s165,s166,s167,s168,s169,s170,s171,s172 -> {
s = \\x1,x2,x3,x4,x5 => case <x1,x2,x3,x4,x5> of {
<case_d,_,_,_,_> => s1;
<case_o,_,_,_,_> => s2;
<case_d,_,num_s,tam_adj_wA_huA,gen_m> => s3;
<case_d,_,num_p,tam_adj_wA_huA,gen_m> => s4;
<case_o,_,num_s,tam_adj_wA_huA,gen_m> => s5;
<case_o,_,num_p,tam_adj_wA_huA,gen_m> => s6;
<case_d,_,num_s,tam_adj_wA_huA,gen_f> => s7;
<case_d,_,num_p,tam_adj_wA_huA,gen_f> => s8;
<case_o,_,num_s,tam_adj_wA_huA,gen_f> => s9;
<case_o,_,num_p,tam_adj_wA_huA,gen_f> => s10;
<case_d,_,num_s,tam_adj_yA_huA,gen_m> => s11;
<case_d,_,num_p,tam_adj_yA_huA,gen_m> => s12;
<case_o,_,num_s,tam_adj_yA_huA,gen_m> => s13;
<case_o,_,num_p,tam_adj_yA_huA,gen_m> => s14;
<case_d,_,num_s,tam_adj_yA_huA,gen_f> => s15;
<case_d,_,num_p,tam_adj_yA_huA,gen_f> => s16;
<case_o,_,num_s,tam_adj_yA_huA,gen_f> => s17;
<case_o,_,num_p,tam_adj_yA_huA,gen_f> => s18;
<_,per_u,num_s,tam_adv_we_hue,gen_m> => s19;
<_,per_m,num_s,tam_adv_we_hue,gen_m> => s20;
<_,per_a,num_s,tam_adv_we_hue,gen_m> => s21;
<_,per_m_h,num_s,tam_adv_we_hue,gen_m> => s22;
<_,per_u,num_p,tam_adv_we_hue,gen_m> => s23;
<_,per_m,num_p,tam_adv_we_hue,gen_m> => s24;
<_,per_a,num_p,tam_adv_we_hue,gen_m> => s25;
<_,per_m_h,num_p,tam_adv_we_hue,gen_m> => s26;
<_,per_u,num_s,tam_adv_we_hue,gen_f> => s27;
<_,per_m,num_s,tam_adv_we_hue,gen_f> => s28;
<_,per_a,num_s,tam_adv_we_hue,gen_f> => s29;
<_,per_m_h,num_s,tam_adv_we_hue,gen_f> => s30;
<_,per_u,num_p,tam_adv_we_hue,gen_f> => s31;
<_,per_m,num_p,tam_adv_we_hue,gen_f> => s32;
<_,per_a,num_p,tam_adv_we_hue,gen_f> => s33;
<_,per_m_h,num_p,tam_adv_we_hue,gen_f> => s34;
<_,per_u,num_s,tam_we_rahanA_hE,gen_m> => s35;
<_,per_m,num_s,tam_we_rahanA_hE,gen_m> => s36;
<_,per_a,num_s,tam_we_rahanA_hE,gen_m> => s37;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_m> => s38;
<_,per_u,num_p,tam_we_rahanA_hE,gen_m> => s39;
<_,per_m,num_p,tam_we_rahanA_hE,gen_m> => s40;
<_,per_a,num_p,tam_we_rahanA_hE,gen_m> => s41;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_m> => s42;
<_,per_u,num_s,tam_we_rahanA_hE,gen_f> => s43;
<_,per_m,num_s,tam_we_rahanA_hE,gen_f> => s44;
<_,per_a,num_s,tam_we_rahanA_hE,gen_f> => s45;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_f> => s46;
<_,per_u,num_p,tam_we_rahanA_hE,gen_f> => s47;
<_,per_m,num_p,tam_we_rahanA_hE,gen_f> => s48;
<_,per_a,num_p,tam_we_rahanA_hE,gen_f> => s49;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_f> => s50;
<_,per_m_h0,num_s,tam_imper,gen_f> => s51;
<_,per_m_h0,num_s,tam_imper,gen_m> => s52;
<_,per_m_h1,num_s,tam_imper,gen_f> => s53;
<_,per_m_h1,num_s,tam_imper,gen_m> => s54;
<_,per_m_h1,num_p,tam_imper,gen_f> => s55;
<_,per_m_h1,num_p,tam_imper,gen_m> => s56;
<_,per_m_h2,num_s,tam_imper,gen_f> => s57;
<_,per_m_h2,num_s,tam_imper,gen_m> => s58;
<_,per_m_h2,num_p,tam_imper,gen_m> => s59;
<_,per_m_h2,num_p,tam_imper,gen_f> => s60;
<_,per_u,num_s,tam_kara,gen_m> => s61;
<_,per_m,num_s,tam_kara,gen_m> => s62;
<_,per_a,num_s,tam_kara,gen_m> => s63;
<_,per_m_h,num_s,tam_kara,gen_m> => s64;
<_,per_u,num_p,tam_kara,gen_m> => s65;
<_,per_m,num_p,tam_kara,gen_m> => s66;
<_,per_a,num_p,tam_kara,gen_m> => s67;
<_,per_m_h,num_p,tam_kara,gen_m> => s68;
<_,per_u,num_s,tam_kara,gen_f> => s69;
<_,per_m,num_s,tam_kara,gen_f> => s70;
<_,per_a,num_s,tam_kara,gen_f> => s71;
<_,per_m_h,num_s,tam_kara,gen_f> => s72;
<_,per_u,num_p,tam_kara,gen_f> => s73;
<_,per_m,num_p,tam_kara,gen_f> => s74;
<_,per_a,num_p,tam_kara,gen_f> => s75;
<_,per_m_h,num_p,tam_kara,gen_f> => s76;
<_,per_u,num_s,tam_0,gen_m> => s77;
<_,per_m,num_s,tam_0,gen_m> => s78;
<_,per_a,num_s,tam_0,gen_m> => s79;
<_,per_m_h,num_s,tam_0,gen_m> => s80;
<_,per_u,num_p,tam_0,gen_m> => s81;
<_,per_m,num_p,tam_0,gen_m> => s82;
<_,per_a,num_p,tam_0,gen_m> => s83;
<_,per_m_h,num_p,tam_0,gen_m> => s84;
<_,per_u,num_s,tam_0,gen_f> => s85;
<_,per_m,num_s,tam_0,gen_f> => s86;
<_,per_a,num_s,tam_0,gen_f> => s87;
<_,per_m_h,num_s,tam_0,gen_f> => s88;
<_,per_u,num_p,tam_0,gen_f> => s89;
<_,per_m,num_p,tam_0,gen_f> => s90;
<_,per_a,num_p,tam_0,gen_f> => s91;
<_,per_m_h,num_p,tam_0,gen_f> => s92;
<_,per_u,num_s,tam_nA,gen_m> => s93;
<_,per_m,num_s,tam_nA,gen_m> => s94;
<_,per_a,num_s,tam_nA,gen_m> => s95;
<_,per_m_h,num_s,tam_nA,gen_m> => s96;
<_,per_u,num_p,tam_nA,gen_m> => s97;
<_,per_m,num_p,tam_nA,gen_m> => s98;
<_,per_a,num_p,tam_nA,gen_m> => s99;
<_,per_m_h,num_p,tam_nA,gen_m> => s100;
<_,per_u,num_s,tam_nA,gen_f> => s101;
<_,per_m,num_s,tam_nA,gen_f> => s102;
<_,per_a,num_s,tam_nA,gen_f> => s103;
<_,per_m_h,num_s,tam_nA,gen_f> => s104;
<_,per_u,num_p,tam_nA,gen_f> => s105;
<_,per_m,num_p,tam_nA,gen_f> => s106;
<_,per_a,num_p,tam_nA,gen_f> => s107;
<_,per_m_h,num_p,tam_nA,gen_f> => s108;
<_,per_u,num_s,tam_wA,gen_m> => s109;
<_,per_m,num_s,tam_wA,gen_m> => s110;
<_,per_a,num_s,tam_wA,gen_m> => s111;
<_,per_m_h,num_s,tam_wA,gen_m> => s112;
<_,per_u,num_p,tam_wA,gen_m> => s113;
<_,per_m,num_p,tam_wA,gen_m> => s114;
<_,per_a,num_p,tam_wA,gen_m> => s115;
<_,per_m_h,num_p,tam_wA,gen_m> => s116;
<_,per_u,num_s,tam_wA,gen_f> => s117;
<_,per_m,num_s,tam_wA,gen_f> => s118;
<_,per_a,num_s,tam_wA,gen_f> => s119;
<_,per_m_h,num_s,tam_wA,gen_f> => s120;
<_,per_u,num_p,tam_wA,gen_f> => s121;
<_,per_m,num_p,tam_wA,gen_f> => s122;
<_,per_a,num_p,tam_wA,gen_f> => s123;
<_,per_m_h,num_p,tam_wA,gen_f> => s124;
<_,per_u,num_s,tam_yA,gen_m> => s125;
<_,per_m,num_s,tam_yA,gen_m> => s126;
<_,per_a,num_s,tam_yA,gen_m> => s127;
<_,per_m_h,num_s,tam_yA,gen_m> => s128;
<_,per_u,num_p,tam_yA,gen_m> => s129;
<_,per_m,num_p,tam_yA,gen_m> => s130;
<_,per_a,num_p,tam_yA,gen_m> => s131;
<_,per_m_h,num_p,tam_yA,gen_m> => s132;
<_,per_u,num_s,tam_yA,gen_f> => s133;
<_,per_m,num_s,tam_yA,gen_f> => s134;
<_,per_a,num_s,tam_yA,gen_f> => s135;
<_,per_m_h,num_s,tam_yA,gen_f> => s136;
<_,per_u,num_p,tam_yA,gen_f> => s137;
<_,per_m,num_p,tam_yA,gen_f> => s138;
<_,per_a,num_p,tam_yA,gen_f> => s139;
<_,per_m_h,num_p,tam_yA,gen_f> => s140;
<_,per_u,num_s,tam_subj,gen_m> => s141;
<_,per_u,num_s,tam_subj,gen_f> => s142;
<_,per_m,num_s,tam_subj,gen_m> => s143;
<_,per_m,num_s,tam_subj,gen_f> => s144;
<_,per_m_h,num_s,tam_subj,gen_m> => s145;
<_,per_m_h,num_s,tam_subj,gen_f> => s146;
<_,per_a,num_s,tam_subj,gen_m> => s147;
<_,per_a,num_s,tam_subj,gen_f> => s148;
<_,per_u,num_p,tam_subj,gen_m> => s149;
<_,per_u,num_p,tam_subj,gen_f> => s150;
<_,per_m,num_p,tam_subj,gen_m> => s151;
<_,per_m,num_p,tam_subj,gen_f> => s152;
<_,per_m_h,num_p,tam_subj,gen_m> => s153;
<_,per_m_h,num_p,tam_subj,gen_f> => s154;
<_,per_a,num_p,tam_subj,gen_m> => s155;
<_,per_a,num_p,tam_subj,gen_f> => s156;
<_,per_u,num_s,tam_gA,gen_m> => s157;
<_,per_m,num_s,tam_gA,gen_m> => s158;
<_,per_m_h,num_s,tam_gA,gen_m> => s159;
<_,per_a,num_s,tam_gA,gen_m> => s160;
<_,per_u,num_p,tam_gA,gen_m> => s161;
<_,per_m,num_p,tam_gA,gen_m> => s162;
<_,per_m_h,num_p,tam_gA,gen_m> => s163;
<_,per_a,num_p,tam_gA,gen_m> => s164;
<_,per_u,num_s,tam_gA,gen_f> => s165;
<_,per_m,num_s,tam_gA,gen_f> => s166;
<_,per_m_h,num_s,tam_gA,gen_f> => s167;
<_,per_a,num_s,tam_gA,gen_f> => s168;
<_,per_u,num_p,tam_gA,gen_f> => s169;
<_,per_m,num_p,tam_gA,gen_f> => s170;
<_,per_m_h,num_p,tam_gA,gen_f> => s171;
<_,per_a,num_p,tam_gA,gen_f> => s172;
_ => "--"
};
};
CU_v: Str -> { s : Case => Per => Num => Tam => Gen => Str } = \s -> case s of {
var + "U" => mkFunc16 (var+"UnA") (var+"Une") (var+"UwA_huA") (var+"Uwe_hue") (var+"Uwe_hue") (var+"Uwe_hue") (var+"UwI_huI") (var+"UwI_huI") (var+"UwI_huI") (var+"UwI_huI") (var+"UA_huA") (var+"Ue_hue") (var+"Ue_hue") (var+"Ue_hue") (var+"UI_huI") (var+"UI_huI") (var+"UI_huI") (var+"UI_huI") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"U") (var+"U") (var+"uo") (var+"uo") (var+"uo") (var+"uo") (var+"Uiye") (var+"Uiye") (var+"Uiye") (var+"Uiye") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"UnA") (var+"UnA") (var+"UnA") (var+"UnA") (var+"Une") (var+"Une") (var+"Une") (var+"Une") (var+"UnI") (var+"UnI") (var+"UnI") (var+"UnI") (var+"UnIM") (var+"UnIM") (var+"UnIM") (var+"UnIM") (var+"UwA") (var+"UwA") (var+"UwA") (var+"UwA") (var+"Uwe") (var+"Uwe") (var+"Uwe") (var+"Uwe") (var+"UwI") (var+"UwI") (var+"UwI") (var+"UwI") (var+"UwIM") (var+"UwIM") (var+"UwIM") (var+"UwIM") (var+"uA") (var+"uA") (var+"uA") (var+"uA") (var+"ue") (var+"ue") (var+"ue") (var+"ue") (var+"uI") (var+"uI") (var+"uI") (var+"uI") (var+"uIM") (var+"uIM") (var+"uIM") (var+"uIM") (var+"uUz") (var+"uUz") (var+"uye") (var+"uye") (var+"uiye") (var+"uiye") (var+"uye") (var+"uye") (var+"uyeM") (var+"uyeM") (var+"uo") (var+"uo") (var+"uiye") (var+"uiye") (var+"uyeM") (var+"uyeM") (var+"uUzgA") (var+"uegA") (var+"uiegA") (var+"uegA") (var+"uezge") (var+"uoge") (var+"uiegA") (var+"uezge") (var+"uUzgI") (var+"uegI") (var+"uiegA") (var+"uegI") (var+"uezgI") (var+"uogI") (var+"uiegA") (var+"uezgI")
};
mkFunc17: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Per => Num => Tam => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120,s121,s122,s123,s124,s125,s126,s127,s128,s129,s130,s131,s132,s133,s134,s135,s136,s137,s138,s139,s140,s141,s142,s143,s144,s145,s146,s147,s148,s149,s150,s151,s152,s153,s154,s155,s156,s157,s158,s159,s160,s161,s162,s163,s164,s165,s166,s167,s168,s169,s170,s171,s172 -> {
s = \\x1,x2,x3,x4,x5 => case <x1,x2,x3,x4,x5> of {
<case_d,_,_,_,_> => s1;
<case_o,_,_,_,_> => s2;
<case_d,_,num_s,tam_adj_wA_huA,gen_m> => s3;
<case_d,_,num_p,tam_adj_wA_huA,gen_m> => s4;
<case_o,_,num_s,tam_adj_wA_huA,gen_m> => s5;
<case_o,_,num_p,tam_adj_wA_huA,gen_m> => s6;
<case_d,_,num_s,tam_adj_wA_huA,gen_f> => s7;
<case_d,_,num_p,tam_adj_wA_huA,gen_f> => s8;
<case_o,_,num_s,tam_adj_wA_huA,gen_f> => s9;
<case_o,_,num_p,tam_adj_wA_huA,gen_f> => s10;
<case_d,_,num_s,tam_adj_yA_huA,gen_m> => s11;
<case_d,_,num_p,tam_adj_yA_huA,gen_m> => s12;
<case_o,_,num_s,tam_adj_yA_huA,gen_m> => s13;
<case_o,_,num_p,tam_adj_yA_huA,gen_m> => s14;
<case_d,_,num_s,tam_adj_yA_huA,gen_f> => s15;
<case_d,_,num_p,tam_adj_yA_huA,gen_f> => s16;
<case_o,_,num_s,tam_adj_yA_huA,gen_f> => s17;
<case_o,_,num_p,tam_adj_yA_huA,gen_f> => s18;
<_,per_u,num_s,tam_adv_we_hue,gen_m> => s19;
<_,per_m,num_s,tam_adv_we_hue,gen_m> => s20;
<_,per_a,num_s,tam_adv_we_hue,gen_m> => s21;
<_,per_m_h,num_s,tam_adv_we_hue,gen_m> => s22;
<_,per_u,num_p,tam_adv_we_hue,gen_m> => s23;
<_,per_m,num_p,tam_adv_we_hue,gen_m> => s24;
<_,per_a,num_p,tam_adv_we_hue,gen_m> => s25;
<_,per_m_h,num_p,tam_adv_we_hue,gen_m> => s26;
<_,per_u,num_s,tam_adv_we_hue,gen_f> => s27;
<_,per_m,num_s,tam_adv_we_hue,gen_f> => s28;
<_,per_a,num_s,tam_adv_we_hue,gen_f> => s29;
<_,per_m_h,num_s,tam_adv_we_hue,gen_f> => s30;
<_,per_u,num_p,tam_adv_we_hue,gen_f> => s31;
<_,per_m,num_p,tam_adv_we_hue,gen_f> => s32;
<_,per_a,num_p,tam_adv_we_hue,gen_f> => s33;
<_,per_m_h,num_p,tam_adv_we_hue,gen_f> => s34;
<_,per_u,num_s,tam_we_rahanA_hE,gen_m> => s35;
<_,per_m,num_s,tam_we_rahanA_hE,gen_m> => s36;
<_,per_a,num_s,tam_we_rahanA_hE,gen_m> => s37;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_m> => s38;
<_,per_u,num_p,tam_we_rahanA_hE,gen_m> => s39;
<_,per_m,num_p,tam_we_rahanA_hE,gen_m> => s40;
<_,per_a,num_p,tam_we_rahanA_hE,gen_m> => s41;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_m> => s42;
<_,per_u,num_s,tam_we_rahanA_hE,gen_f> => s43;
<_,per_m,num_s,tam_we_rahanA_hE,gen_f> => s44;
<_,per_a,num_s,tam_we_rahanA_hE,gen_f> => s45;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_f> => s46;
<_,per_u,num_p,tam_we_rahanA_hE,gen_f> => s47;
<_,per_m,num_p,tam_we_rahanA_hE,gen_f> => s48;
<_,per_a,num_p,tam_we_rahanA_hE,gen_f> => s49;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_f> => s50;
<_,per_m_h0,num_s,tam_imper,gen_f> => s51;
<_,per_m_h0,num_s,tam_imper,gen_m> => s52;
<_,per_m_h1,num_s,tam_imper,gen_f> => s53;
<_,per_m_h1,num_s,tam_imper,gen_m> => s54;
<_,per_m_h1,num_p,tam_imper,gen_f> => s55;
<_,per_m_h1,num_p,tam_imper,gen_m> => s56;
<_,per_m_h2,num_s,tam_imper,gen_f> => s57;
<_,per_m_h2,num_s,tam_imper,gen_m> => s58;
<_,per_m_h2,num_p,tam_imper,gen_m> => s59;
<_,per_m_h2,num_p,tam_imper,gen_f> => s60;
<_,per_u,num_s,tam_yA,gen_m> => s61;
<_,per_m,num_s,tam_yA,gen_m> => s62;
<_,per_a,num_s,tam_yA,gen_m> => s63;
<_,per_m_h,num_s,tam_yA,gen_m> => s64;
<_,per_u,num_p,tam_yA,gen_m> => s65;
<_,per_m,num_p,tam_yA,gen_m> => s66;
<_,per_a,num_p,tam_yA,gen_m> => s67;
<_,per_m_h,num_p,tam_yA,gen_m> => s68;
<_,per_u,num_s,tam_yA,gen_f> => s69;
<_,per_m,num_s,tam_yA,gen_f> => s70;
<_,per_a,num_s,tam_yA,gen_f> => s71;
<_,per_m_h,num_s,tam_yA,gen_f> => s72;
<_,per_u,num_p,tam_yA,gen_f> => s73;
<_,per_m,num_p,tam_yA,gen_f> => s74;
<_,per_a,num_p,tam_yA,gen_f> => s75;
<_,per_m_h,num_p,tam_yA,gen_f> => s76;
<_,per_u,num_s,tam_kara,gen_m> => s77;
<_,per_m,num_s,tam_kara,gen_m> => s78;
<_,per_a,num_s,tam_kara,gen_m> => s79;
<_,per_m_h,num_s,tam_kara,gen_m> => s80;
<_,per_u,num_p,tam_kara,gen_m> => s81;
<_,per_m,num_p,tam_kara,gen_m> => s82;
<_,per_a,num_p,tam_kara,gen_m> => s83;
<_,per_m_h,num_p,tam_kara,gen_m> => s84;
<_,per_u,num_s,tam_kara,gen_f> => s85;
<_,per_m,num_s,tam_kara,gen_f> => s86;
<_,per_a,num_s,tam_kara,gen_f> => s87;
<_,per_m_h,num_s,tam_kara,gen_f> => s88;
<_,per_u,num_p,tam_kara,gen_f> => s89;
<_,per_m,num_p,tam_kara,gen_f> => s90;
<_,per_a,num_p,tam_kara,gen_f> => s91;
<_,per_m_h,num_p,tam_kara,gen_f> => s92;
<_,per_u,num_s,tam_0,gen_m> => s93;
<_,per_m,num_s,tam_0,gen_m> => s94;
<_,per_a,num_s,tam_0,gen_m> => s95;
<_,per_m_h,num_s,tam_0,gen_m> => s96;
<_,per_u,num_p,tam_0,gen_m> => s97;
<_,per_m,num_p,tam_0,gen_m> => s98;
<_,per_a,num_p,tam_0,gen_m> => s99;
<_,per_m_h,num_p,tam_0,gen_m> => s100;
<_,per_u,num_s,tam_0,gen_f> => s101;
<_,per_m,num_s,tam_0,gen_f> => s102;
<_,per_a,num_s,tam_0,gen_f> => s103;
<_,per_m_h,num_s,tam_0,gen_f> => s104;
<_,per_u,num_p,tam_0,gen_f> => s105;
<_,per_m,num_p,tam_0,gen_f> => s106;
<_,per_a,num_p,tam_0,gen_f> => s107;
<_,per_m_h,num_p,tam_0,gen_f> => s108;
<_,per_u,num_s,tam_subj,gen_m> => s109;
<_,per_u,num_s,tam_subj,gen_f> => s110;
<_,per_m,num_s,tam_subj,gen_m> => s111;
<_,per_m,num_s,tam_subj,gen_f> => s112;
<_,per_m_h,num_s,tam_subj,gen_m> => s113;
<_,per_m_h,num_s,tam_subj,gen_f> => s114;
<_,per_a,num_s,tam_subj,gen_m> => s115;
<_,per_a,num_s,tam_subj,gen_f> => s116;
<_,per_u,num_p,tam_subj,gen_m> => s117;
<_,per_u,num_p,tam_subj,gen_f> => s118;
<_,per_m,num_p,tam_subj,gen_m> => s119;
<_,per_m,num_p,tam_subj,gen_f> => s120;
<_,per_m_h,num_p,tam_subj,gen_m> => s121;
<_,per_m_h,num_p,tam_subj,gen_f> => s122;
<_,per_a,num_p,tam_subj,gen_m> => s123;
<_,per_a,num_p,tam_subj,gen_f> => s124;
<_,per_u,num_s,tam_nA,gen_m> => s125;
<_,per_m,num_s,tam_nA,gen_m> => s126;
<_,per_a,num_s,tam_nA,gen_m> => s127;
<_,per_m_h,num_s,tam_nA,gen_m> => s128;
<_,per_u,num_p,tam_nA,gen_m> => s129;
<_,per_m,num_p,tam_nA,gen_m> => s130;
<_,per_a,num_p,tam_nA,gen_m> => s131;
<_,per_m_h,num_p,tam_nA,gen_m> => s132;
<_,per_u,num_s,tam_nA,gen_f> => s133;
<_,per_m,num_s,tam_nA,gen_f> => s134;
<_,per_a,num_s,tam_nA,gen_f> => s135;
<_,per_m_h,num_s,tam_nA,gen_f> => s136;
<_,per_u,num_p,tam_nA,gen_f> => s137;
<_,per_m,num_p,tam_nA,gen_f> => s138;
<_,per_a,num_p,tam_nA,gen_f> => s139;
<_,per_m_h,num_p,tam_nA,gen_f> => s140;
<_,per_u,num_s,tam_wA,gen_m> => s141;
<_,per_m,num_s,tam_wA,gen_m> => s142;
<_,per_a,num_s,tam_wA,gen_m> => s143;
<_,per_m_h,num_s,tam_wA,gen_m> => s144;
<_,per_u,num_p,tam_wA,gen_m> => s145;
<_,per_m,num_p,tam_wA,gen_m> => s146;
<_,per_a,num_p,tam_wA,gen_m> => s147;
<_,per_m_h,num_p,tam_wA,gen_m> => s148;
<_,per_u,num_s,tam_wA,gen_f> => s149;
<_,per_m,num_s,tam_wA,gen_f> => s150;
<_,per_a,num_s,tam_wA,gen_f> => s151;
<_,per_m_h,num_s,tam_wA,gen_f> => s152;
<_,per_u,num_p,tam_wA,gen_f> => s153;
<_,per_m,num_p,tam_wA,gen_f> => s154;
<_,per_a,num_p,tam_wA,gen_f> => s155;
<_,per_m_h,num_p,tam_wA,gen_f> => s156;
<_,per_u,num_s,tam_gA,gen_m> => s157;
<_,per_m,num_s,tam_gA,gen_m> => s158;
<_,per_m_h,num_s,tam_gA,gen_m> => s159;
<_,per_a,num_s,tam_gA,gen_m> => s160;
<_,per_u,num_p,tam_gA,gen_m> => s161;
<_,per_m,num_p,tam_gA,gen_m> => s162;
<_,per_m_h,num_p,tam_gA,gen_m> => s163;
<_,per_a,num_p,tam_gA,gen_m> => s164;
<_,per_u,num_s,tam_gA,gen_f> => s165;
<_,per_m,num_s,tam_gA,gen_f> => s166;
<_,per_m_h,num_s,tam_gA,gen_f> => s167;
<_,per_a,num_s,tam_gA,gen_f> => s168;
<_,per_u,num_p,tam_gA,gen_f> => s169;
<_,per_m,num_p,tam_gA,gen_f> => s170;
<_,per_m_h,num_p,tam_gA,gen_f> => s171;
<_,per_a,num_p,tam_gA,gen_f> => s172;
_ => "--"
};
};
so_v: Str -> { s : Case => Per => Num => Tam => Gen => Str } = \s -> case s of {
var + "" => mkFunc17 (var+"nA") (var+"ne") (var+"wA_huA") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"wI_huI") (var+"wI_huI") (var+"wI_huI") (var+"wI_huI") (var+"yA_huA") (var+"ye_hue") (var+"ye_hue") (var+"ye_hue") (var+"I_huI") (var+"I_huI") (var+"I_huI") (var+"I_huI") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"") (var+"") (var+"oo") (var+"oo") (var+"oo") (var+"oo") (var+"iye") (var+"iye") (var+"iye") (var+"iye") (var+"yA") (var+"yA") (var+"yA") (var+"yA") (var+"e") (var+"e") (var+"e") (var+"e") (var+"I") (var+"I") (var+"I") (var+"I") (var+"IM") (var+"IM") (var+"IM") (var+"IM") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"Uz") (var+"Uz") (var+"") (var+"") (var+"ie") (var+"ie") (var+"e") (var+"e") (var+"yeM") (var+"yeM") (var+"o") (var+"o") (var+"ie") (var+"ie") (var+"yeM") (var+"yeM") (var+"nA") (var+"nA") (var+"nA") (var+"nA") (var+"ne") (var+"ne") (var+"ne") (var+"ne") (var+"nI") (var+"nI") (var+"nI") (var+"nI") (var+"nIM") (var+"nIM") (var+"nIM") (var+"nIM") (var+"wA") (var+"wA") (var+"wA") (var+"wA") (var+"we") (var+"we") (var+"we") (var+"we") (var+"wI") (var+"wI") (var+"wI") (var+"wI") (var+"wIM") (var+"wIM") (var+"wIM") (var+"wIM") (var+"UzgA") (var+"egA") (var+"iegA") (var+"egA") (var+"yeMge") (var+"oge") (var+"iegA") (var+"yeMge") (var+"UzgI") (var+"yegI") (var+"iegA") (var+"yegI") (var+"yeMgI") (var+"ogI") (var+"iegA") (var+"yeMgI")
};
mkFunc18: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Per => Num => Tam => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38 -> {
s = \\x1,x2,x3,x4,x5 => case <x1,x2,x3,x4,x5> of {
<case_d,_,_,_,_> => s1;
<case_o,_,_,_,_> => s2;
<_,per_u,num_s,tam_adv_we_hue,gen_m> => s3;
<_,per_u,num_s,tam_adv_we_hue,gen_f> => s4;
<_,per_m,num_s,tam_adv_we_hue,gen_m> => s5;
<_,per_m,num_s,tam_adv_we_hue,gen_f> => s6;
<_,per_a,num_s,tam_adv_we_hue,gen_m> => s7;
<_,per_a,num_s,tam_adv_we_hue,gen_f> => s8;
<_,per_u,num_p,tam_adv_we_hue,gen_m> => s9;
<_,per_u,num_p,tam_adv_we_hue,gen_f> => s10;
<_,per_m,num_p,tam_adv_we_hue,gen_m> => s11;
<_,per_m,num_p,tam_adv_we_hue,gen_f> => s12;
<_,per_a,num_p,tam_adv_we_hue,gen_m> => s13;
<_,per_a,num_p,tam_adv_we_hue,gen_f> => s14;
<_,per_u,num_s,tam_we_rahanA_hE,gen_m> => s15;
<_,per_u,num_s,tam_we_rahanA_hE,gen_f> => s16;
<_,per_m,num_s,tam_we_rahanA_hE,gen_m> => s17;
<_,per_m,num_s,tam_we_rahanA_hE,gen_f> => s18;
<_,per_a,num_s,tam_we_rahanA_hE,gen_m> => s19;
<_,per_a,num_s,tam_we_rahanA_hE,gen_f> => s20;
<_,per_u,num_p,tam_we_rahanA_hE,gen_m> => s21;
<_,per_u,num_p,tam_we_rahanA_hE,gen_f> => s22;
<_,per_m,num_p,tam_we_rahanA_hE,gen_m> => s23;
<_,per_m,num_p,tam_we_rahanA_hE,gen_f> => s24;
<_,per_a,num_p,tam_we_rahanA_hE,gen_m> => s25;
<_,per_a,num_p,tam_we_rahanA_hE,gen_f> => s26;
<_,per_u,num_s,tam_hE,gen_m> => s27;
<_,per_u,num_s,tam_hE,gen_f> => s28;
<_,per_m,num_s,tam_hE,gen_m> => s29;
<_,per_m,num_s,tam_hE,gen_f> => s30;
<_,per_a,num_s,tam_hE,gen_m> => s31;
<_,per_a,num_s,tam_hE,gen_f> => s32;
<_,per_u,num_p,tam_hE,gen_m> => s33;
<_,per_u,num_p,tam_hE,gen_f> => s34;
<_,per_m,num_p,tam_hE,gen_m> => s35;
<_,per_m,num_p,tam_hE,gen_f> => s36;
<_,per_a,num_p,tam_hE,gen_m> => s37;
<_,per_a,num_p,tam_hE,gen_f> => s38;
_ => "--"
};
};
hE_v: Str -> { s : Case => Per => Num => Tam => Gen => Str } = \s -> case s of {
var + "E" => mkFunc18 (var+"EnA") (var+"Ene") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"Uz") (var+"Uz") (var+"E") (var+"E") (var+"E") (var+"E") (var+"EM") (var+"EM") (var+"o") (var+"o") (var+"EM") (var+"EM")
};
mkFunc19: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Per => Num => Tam => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120,s121,s122,s123,s124,s125,s126,s127,s128,s129,s130,s131,s132,s133,s134,s135,s136,s137,s138,s139,s140,s141,s142,s143,s144,s145,s146,s147,s148,s149,s150,s151,s152,s153,s154,s155,s156,s157,s158,s159,s160,s161,s162,s163,s164,s165,s166,s167,s168,s169,s170,s171 -> {
s = \\x1,x2,x3,x4,x5 => case <x1,x2,x3,x4,x5> of {
<case_d,_,_,_,_> => s1;
<case_o,_,_,_,_> => s2;
<case_d,_,num_s,tam_adj_wA_huA,gen_m> => s3;
<case_d,_,num_p,tam_adj_wA_huA,gen_m> => s4;
<case_o,_,num_s,tam_adj_wA_huA,gen_m> => s5;
<case_o,_,num_p,tam_adj_wA_huA,gen_m> => s6;
<case_d,_,num_s,tam_adj_wA_huA,gen_f> => s7;
<case_d,_,num_p,tam_adj_wA_huA,gen_f> => s8;
<case_o,_,num_s,tam_adj_wA_huA,gen_f> => s9;
<case_o,_,num_p,tam_adj_wA_huA,gen_f> => s10;
<case_d,_,num_s,tam_adj_yA_huA,gen_m> => s11;
<case_d,_,num_p,tam_adj_yA_huA,gen_m> => s12;
<case_o,_,num_s,tam_adj_yA_huA,gen_m> => s13;
<case_o,_,num_p,tam_adj_yA_huA,gen_m> => s14;
<case_d,_,num_s,tam_adj_yA_huA,gen_f> => s15;
<case_d,_,num_p,tam_adj_yA_huA,gen_f> => s16;
<case_o,_,num_s,tam_adj_yA_huA,gen_f> => s17;
<case_o,_,num_p,tam_adj_yA_huA,gen_f> => s18;
<_,per_u,num_s,tam_adv_we_hue,gen_m> => s19;
<_,per_m,num_s,tam_adv_we_hue,gen_m> => s20;
<_,per_a,num_s,tam_adv_we_hue,gen_m> => s21;
<_,per_m_h,num_s,tam_adv_we_hue,gen_m> => s22;
<_,per_u,num_p,tam_adv_we_hue,gen_m> => s23;
<_,per_m,num_p,tam_adv_we_hue,gen_m> => s24;
<_,per_a,num_p,tam_adv_we_hue,gen_m> => s25;
<_,per_m_h,num_p,tam_adv_we_hue,gen_m> => s26;
<_,per_u,num_s,tam_adv_we_hue,gen_f> => s27;
<_,per_m,num_s,tam_adv_we_hue,gen_f> => s28;
<_,per_a,num_s,tam_adv_we_hue,gen_f> => s29;
<_,per_m_h,num_s,tam_adv_we_hue,gen_f> => s30;
<_,per_u,num_p,tam_adv_we_hue,gen_f> => s31;
<_,per_m,num_p,tam_adv_we_hue,gen_f> => s32;
<_,per_a,num_p,tam_adv_we_hue,gen_f> => s33;
<_,per_m_h,num_p,tam_adv_we_hue,gen_f> => s34;
<_,per_u,num_s,tam_we_rahanA_hE,gen_m> => s35;
<_,per_m,num_s,tam_we_rahanA_hE,gen_m> => s36;
<_,per_a,num_s,tam_we_rahanA_hE,gen_m> => s37;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_m> => s38;
<_,per_u,num_p,tam_we_rahanA_hE,gen_m> => s39;
<_,per_m,num_p,tam_we_rahanA_hE,gen_m> => s40;
<_,per_a,num_p,tam_we_rahanA_hE,gen_m> => s41;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_m> => s42;
<_,per_u,num_s,tam_we_rahanA_hE,gen_f> => s43;
<_,per_m,num_s,tam_we_rahanA_hE,gen_f> => s44;
<_,per_a,num_s,tam_we_rahanA_hE,gen_f> => s45;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_f> => s46;
<_,per_u,num_p,tam_we_rahanA_hE,gen_f> => s47;
<_,per_m,num_p,tam_we_rahanA_hE,gen_f> => s48;
<_,per_a,num_p,tam_we_rahanA_hE,gen_f> => s49;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_f> => s50;
<_,per_m_h0,num_s,tam_imper,gen_f> => s51;
<_,per_m_h0,num_s,tam_imper,gen_m> => s52;
<_,per_m_h1,num_s,tam_imper,gen_f> => s53;
<_,per_m_h1,num_s,tam_imper,gen_m> => s54;
<_,per_m_h1,num_p,tam_imper,gen_f> => s55;
<_,per_m_h1,num_p,tam_imper,gen_m> => s56;
<_,per_m_h2,num_s,tam_imper,gen_f> => s57;
<_,per_m_h2,num_s,tam_imper,gen_m> => s58;
<_,per_m_h2,num_p,tam_imper,gen_m> => s59;
<_,per_m_h2,num_p,tam_imper,gen_f> => s60;
<_,per_u,num_s,tam_nA,gen_m> => s61;
<_,per_m,num_s,tam_nA,gen_m> => s62;
<_,per_a,num_s,tam_nA,gen_m> => s63;
<_,per_m_h,num_s,tam_nA,gen_m> => s64;
<_,per_u,num_p,tam_nA,gen_m> => s65;
<_,per_m,num_p,tam_nA,gen_m> => s66;
<_,per_a,num_p,tam_nA,gen_m> => s67;
<_,per_m_h,num_p,tam_nA,gen_m> => s68;
<_,per_u,num_s,tam_nA,gen_f> => s69;
<_,per_m,num_s,tam_nA,gen_f> => s70;
<_,per_a,num_s,tam_nA,gen_f> => s71;
<_,per_m_h,num_s,tam_nA,gen_f> => s72;
<_,per_u,num_p,tam_nA,gen_f> => s73;
<_,per_m,num_p,tam_nA,gen_f> => s74;
<_,per_a,num_p,tam_nA,gen_f> => s75;
<_,per_m_h,num_p,tam_nA,gen_f> => s76;
<_,per_u,num_s,tam_wA,gen_m> => s77;
<_,per_m,num_s,tam_wA,gen_m> => s78;
<_,per_a,num_s,tam_wA,gen_m> => s79;
<_,per_m_h,num_s,tam_wA,gen_m> => s80;
<_,per_u,num_p,tam_wA,gen_m> => s81;
<_,per_m,num_p,tam_wA,gen_m> => s82;
<_,per_a,num_p,tam_wA,gen_m> => s83;
<_,per_m_h,num_p,tam_wA,gen_m> => s84;
<_,per_u,num_s,tam_wA,gen_f> => s85;
<_,per_m,num_s,tam_wA,gen_f> => s86;
<_,per_a,num_s,tam_wA,gen_f> => s87;
<_,per_m_h,num_s,tam_wA,gen_f> => s88;
<_,per_u,num_p,tam_wA,gen_f> => s89;
<_,per_m,num_p,tam_wA,gen_f> => s90;
<_,per_a,num_p,tam_wA,gen_f> => s91;
<_,per_m_h,num_p,tam_wA,gen_f> => s92;
<_,per_u,num_s,tam_kara,gen_m> => s93;
<_,per_m,num_s,tam_kara,gen_m> => s94;
<_,per_a,num_s,tam_kara,gen_m> => s95;
<_,per_m_h,num_s,tam_kara,gen_m> => s96;
<_,per_u,num_p,tam_kara,gen_m> => s97;
<_,per_m,num_p,tam_kara,gen_m> => s98;
<_,per_a,num_p,tam_kara,gen_m> => s99;
<_,per_m_h,num_p,tam_kara,gen_m> => s100;
<_,per_u,num_s,tam_kara,gen_f> => s101;
<_,per_m,num_s,tam_kara,gen_f> => s102;
<_,per_a,num_s,tam_kara,gen_f> => s103;
<_,per_m_h,num_s,tam_kara,gen_f> => s104;
<_,per_u,num_p,tam_kara,gen_f> => s105;
<_,per_m,num_p,tam_kara,gen_f> => s106;
<_,per_a,num_p,tam_kara,gen_f> => s107;
<_,per_m_h,num_p,tam_kara,gen_f> => s108;
<_,per_u,num_s,tam_0,gen_m> => s109;
<_,per_m,num_s,tam_0,gen_m> => s110;
<_,per_a,num_s,tam_0,gen_m> => s111;
<_,per_m_h,num_s,tam_0,gen_m> => s112;
<_,per_u,num_p,tam_0,gen_m> => s113;
<_,per_m,num_p,tam_0,gen_m> => s114;
<_,per_a,num_p,tam_0,gen_m> => s115;
<_,per_m_h,num_p,tam_0,gen_m> => s116;
<_,per_u,num_s,tam_0,gen_f> => s117;
<_,per_m,num_s,tam_0,gen_f> => s118;
<_,per_a,num_s,tam_0,gen_f> => s119;
<_,per_m_h,num_s,tam_0,gen_f> => s120;
<_,per_u,num_p,tam_0,gen_f> => s121;
<_,per_m,num_p,tam_0,gen_f> => s122;
<_,per_a,num_p,tam_0,gen_f> => s123;
<_,per_m_h,num_p,tam_0,gen_f> => s124;
<_,per_u,num_s,tam_yA,gen_m> => s125;
<_,per_m,num_s,tam_yA,gen_m> => s126;
<_,per_a,num_s,tam_yA,gen_m> => s127;
<_,per_m_h,num_s,tam_yA,gen_m> => s128;
<_,per_u,num_p,tam_yA,gen_m> => s129;
<_,per_m,num_p,tam_yA,gen_m> => s130;
<_,per_a,num_p,tam_yA,gen_m> => s131;
<_,per_m_h,num_p,tam_yA,gen_m> => s132;
<_,per_u,num_s,tam_yA,gen_f> => s133;
<_,per_m,num_s,tam_yA,gen_f> => s134;
<_,per_a,num_s,tam_yA,gen_f> => s135;
<_,per_m_h,num_s,tam_yA,gen_f> => s136;
<_,per_u,num_p,tam_yA,gen_f> => s137;
<_,per_m,num_p,tam_yA,gen_f> => s138;
<_,per_a,num_p,tam_yA,gen_f> => s139;
<_,per_m_h,num_p,tam_yA,gen_f> => s140;
<_,per_u,num_s,tam_subj,gen_m> => s141;
<_,per_u,num_s,tam_subj,gen_f> => s142;
<_,per_m,num_s,tam_subj,gen_m> => s143;
<_,per_m,num_s,tam_subj,gen_f> => s144;
<_,per_m_h,num_s,tam_subj,gen_m> => s145;
<_,per_m_h,num_s,tam_subj,gen_f> => s146;
<_,per_a,num_s,tam_subj,gen_m> => s147;
<_,per_a,num_s,tam_subj,gen_f> => s148;
<_,per_u,num_p,tam_subj,gen_m> => s149;
<_,per_u,num_p,tam_subj,gen_f> => s150;
<_,per_m,num_p,tam_subj,gen_m> => s151;
<_,per_m,num_p,tam_subj,gen_f> => s152;
<_,per_m_h,num_p,tam_subj,gen_m> => s153;
<_,per_m_h,num_p,tam_subj,gen_f> => s154;
<_,per_a,num_p,tam_subj,gen_m> => s155;
<_,per_a,num_p,tam_subj,gen_f> => s156;
<_,per_u,num_s,tam_gA,gen_m> => s157;
<_,per_m,num_s,tam_gA,gen_m> => s158;
<_,per_m_h,num_s,tam_gA,gen_m> => s159;
<_,per_a,num_s,tam_gA,gen_m> => s160;
<_,per_u,num_p,tam_gA,gen_m> => s161;
<_,per_a,num_p,tam_gA,gen_m> => s162;
<_,per_m,num_p,tam_gA,gen_m> => s163;
<_,per_m_h,num_p,tam_gA,gen_m> => s164;
<_,per_u,num_s,tam_gA,gen_f> => s165;
<_,per_m_h,num_s,tam_gA,gen_f> => s166;
<_,per_m,num_p,tam_gA,gen_f> => s167;
<_,per_m_h,num_p,tam_gA,gen_f> => s168;
<_,per_a,num_s,tam_gA,gen_f> => s169;
<_,per_u,num_p,tam_gA,gen_f> => s170;
<_,per_a,num_p,tam_gA,gen_f> => s171;
_ => "--"
};
};
uTa_v: Str -> { s : Case => Per => Num => Tam => Gen => Str } = \s -> case s of {
var + "a" => mkFunc19 (var+"anA") (var+"ane") (var+"awA_huA") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awI_huI") (var+"awI_huI") (var+"awI_huI") (var+"awI_huI") (var+"A_huA") (var+"e_hue") (var+"e_hue") (var+"e_hue") (var+"I_huI") (var+"I_huI") (var+"I_huI") (var+"I_huI") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"a") (var+"a") (var+"o") (var+"o") (var+"o") (var+"o") (var+"iye") (var+"iye") (var+"iye") (var+"iye") (var+"anA") (var+"anA") (var+"anA") (var+"anA") (var+"ane") (var+"ane") (var+"ane") (var+"ane") (var+"anI") (var+"anI") (var+"anI") (var+"anI") (var+"anIM") (var+"anIM") (var+"anIM") (var+"anIM") (var+"awA") (var+"awA") (var+"awA") (var+"awA") (var+"awe") (var+"awe") (var+"awe") (var+"awe") (var+"awI") (var+"awI") (var+"awI") (var+"awI") (var+"awIM") (var+"awIM") (var+"awIM") (var+"awIM") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"A") (var+"A") (var+"A") (var+"A") (var+"e") (var+"e") (var+"e") (var+"e") (var+"I") (var+"I") (var+"I") (var+"I") (var+"IM") (var+"IM") (var+"IM") (var+"IM") (var+"Uz") (var+"Uz") (var+"e") (var+"e") (var+"ie") (var+"ie") (var+"e") (var+"e") (var+"eM") (var+"eM") (var+"o") (var+"o") (var+"ie") (var+"ie") (var+"eM") (var+"eM") (var+"UzgA") (var+"egA") (var+"iegA") (var+"egA") (var+"eMge") (var+"eMge") (var+"oge") (var+"iegA") (var+"UzgI") (var+"iegA") (var+"ogI") (var+"iegA") (var+"egI") (var+"eMgI") (var+"eMgI")
};
mkFunc20: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Tam => Num => Gen => Per => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48 -> {
s = \\x1,x2,x3,x4 => case <x1,x2,x3,x4> of {
<tam_adv_we_hue,num_s,gen_m,per_u> => s1;
<tam_adv_we_hue,num_s,gen_m,per_m> => s2;
<tam_adv_we_hue,num_s,gen_m,per_a> => s3;
<tam_adv_we_hue,num_s,gen_m,per_m_h> => s4;
<tam_adv_we_hue,num_p,gen_m,per_u> => s5;
<tam_adv_we_hue,num_p,gen_m,per_m> => s6;
<tam_adv_we_hue,num_p,gen_m,per_a> => s7;
<tam_adv_we_hue,num_p,gen_m,per_m_h> => s8;
<tam_adv_we_hue,num_s,gen_f,per_u> => s9;
<tam_adv_we_hue,num_s,gen_f,per_m> => s10;
<tam_adv_we_hue,num_s,gen_f,per_a> => s11;
<tam_adv_we_hue,num_s,gen_f,per_m_h> => s12;
<tam_adv_we_hue,num_p,gen_f,per_u> => s13;
<tam_adv_we_hue,num_p,gen_f,per_m> => s14;
<tam_adv_we_hue,num_p,gen_f,per_a> => s15;
<tam_adv_we_hue,num_p,gen_f,per_m_h> => s16;
<tam_we_rahanA_hE,num_s,gen_m,per_u> => s17;
<tam_we_rahanA_hE,num_s,gen_m,per_m> => s18;
<tam_we_rahanA_hE,num_s,gen_m,per_a> => s19;
<tam_we_rahanA_hE,num_s,gen_m,per_m_h> => s20;
<tam_we_rahanA_hE,num_p,gen_m,per_u> => s21;
<tam_we_rahanA_hE,num_p,gen_m,per_m> => s22;
<tam_we_rahanA_hE,num_p,gen_m,per_a> => s23;
<tam_we_rahanA_hE,num_p,gen_m,per_m_h> => s24;
<tam_we_rahanA_hE,num_s,gen_f,per_u> => s25;
<tam_we_rahanA_hE,num_s,gen_f,per_m> => s26;
<tam_we_rahanA_hE,num_s,gen_f,per_a> => s27;
<tam_we_rahanA_hE,num_s,gen_f,per_m_h> => s28;
<tam_we_rahanA_hE,num_p,gen_f,per_u> => s29;
<tam_we_rahanA_hE,num_p,gen_f,per_m> => s30;
<tam_we_rahanA_hE,num_p,gen_f,per_a> => s31;
<tam_we_rahanA_hE,num_p,gen_f,per_m_h> => s32;
<tam_WA,num_s,gen_m,per_u> => s33;
<tam_WA,num_s,gen_m,per_m> => s34;
<tam_WA,num_s,gen_m,per_a> => s35;
<tam_WA,num_s,gen_m,per_m_h> => s36;
<tam_WA,num_p,gen_m,per_u> => s37;
<tam_WA,num_p,gen_m,per_m> => s38;
<tam_WA,num_p,gen_m,per_a> => s39;
<tam_WA,num_p,gen_m,per_m_h> => s40;
<tam_WA,num_s,gen_f,per_u> => s41;
<tam_WA,num_s,gen_f,per_m> => s42;
<tam_WA,num_s,gen_f,per_a> => s43;
<tam_WA,num_s,gen_f,per_m_h> => s44;
<tam_WA,num_p,gen_f,per_u> => s45;
<tam_WA,num_p,gen_f,per_m> => s46;
<tam_WA,num_p,gen_f,per_a> => s47;
<tam_WA,num_p,gen_f,per_m_h> => s48;
_ => "--"
};
};
WA_v: Str -> { s : Tam => Num => Gen => Per => Str } = \s -> case s of {
var + "A" => mkFunc20 (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"A") (var+"A") (var+"A") (var+"A") (var+"e") (var+"e") (var+"e") (var+"e") (var+"I") (var+"I") (var+"I") (var+"I") (var+"IM") (var+"IM") (var+"IM") (var+"IM")
};
mkFunc21: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Per => Num => Tam => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,s76 -> {
s = \\x1,x2,x3,x4,x5 => case <x1,x2,x3,x4,x5> of {
<case_d,_,_,_,_> => s1;
<case_o,_,_,_,_> => s2;
<case_d,_,num_s,tam_adj_wA_huA,gen_m> => s3;
<case_d,_,num_p,tam_adj_wA_huA,gen_m> => s4;
<case_o,_,num_s,tam_adj_wA_huA,gen_m> => s5;
<case_o,_,num_p,tam_adj_wA_huA,gen_m> => s6;
<case_d,_,num_s,tam_adj_wA_huA,gen_f> => s7;
<case_d,_,num_p,tam_adj_wA_huA,gen_f> => s8;
<case_o,_,num_s,tam_adj_wA_huA,gen_f> => s9;
<case_o,_,num_p,tam_adj_wA_huA,gen_f> => s10;
<case_d,_,num_s,tam_adj_yA_huA,gen_m> => s11;
<case_d,_,num_p,tam_adj_yA_huA,gen_m> => s12;
<case_o,_,num_s,tam_adj_yA_huA,gen_m> => s13;
<case_o,_,num_p,tam_adj_yA_huA,gen_m> => s14;
<case_d,_,num_s,tam_adj_yA_huA,gen_f> => s15;
<case_d,_,num_p,tam_adj_yA_huA,gen_f> => s16;
<case_o,_,num_s,tam_adj_yA_huA,gen_f> => s17;
<case_o,_,num_p,tam_adj_yA_huA,gen_f> => s18;
<_,per_u,num_s,tam_adv_we_hue,gen_m> => s19;
<_,per_m,num_s,tam_adv_we_hue,gen_m> => s20;
<_,per_a,num_s,tam_adv_we_hue,gen_m> => s21;
<_,per_m_h,num_s,tam_adv_we_hue,gen_m> => s22;
<_,per_u,num_p,tam_adv_we_hue,gen_m> => s23;
<_,per_m,num_p,tam_adv_we_hue,gen_m> => s24;
<_,per_a,num_p,tam_adv_we_hue,gen_m> => s25;
<_,per_m_h,num_p,tam_adv_we_hue,gen_m> => s26;
<_,per_u,num_s,tam_adv_we_hue,gen_f> => s27;
<_,per_m,num_s,tam_adv_we_hue,gen_f> => s28;
<_,per_a,num_s,tam_adv_we_hue,gen_f> => s29;
<_,per_m_h,num_s,tam_adv_we_hue,gen_f> => s30;
<_,per_u,num_p,tam_adv_we_hue,gen_f> => s31;
<_,per_m,num_p,tam_adv_we_hue,gen_f> => s32;
<_,per_a,num_p,tam_adv_we_hue,gen_f> => s33;
<_,per_m_h,num_p,tam_adv_we_hue,gen_f> => s34;
<_,per_u,num_s,tam_we_rahanA_hE,gen_m> => s35;
<_,per_m,num_s,tam_we_rahanA_hE,gen_m> => s36;
<_,per_a,num_s,tam_we_rahanA_hE,gen_m> => s37;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_m> => s38;
<_,per_u,num_p,tam_we_rahanA_hE,gen_m> => s39;
<_,per_m,num_p,tam_we_rahanA_hE,gen_m> => s40;
<_,per_a,num_p,tam_we_rahanA_hE,gen_m> => s41;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_m> => s42;
<_,per_u,num_s,tam_we_rahanA_hE,gen_f> => s43;
<_,per_m,num_s,tam_we_rahanA_hE,gen_f> => s44;
<_,per_a,num_s,tam_we_rahanA_hE,gen_f> => s45;
<_,per_m_h,num_s,tam_we_rahanA_hE,gen_f> => s46;
<_,per_u,num_p,tam_we_rahanA_hE,gen_f> => s47;
<_,per_m,num_p,tam_we_rahanA_hE,gen_f> => s48;
<_,per_a,num_p,tam_we_rahanA_hE,gen_f> => s49;
<_,per_m_h,num_p,tam_we_rahanA_hE,gen_f> => s50;
<_,per_m_h0,num_s,tam_imper,gen_f> => s51;
<_,per_m_h0,num_s,tam_imper,gen_m> => s52;
<_,per_m_h1,num_s,tam_imper,gen_f> => s53;
<_,per_m_h1,num_s,tam_imper,gen_m> => s54;
<_,per_m_h1,num_p,tam_imper,gen_f> => s55;
<_,per_m_h1,num_p,tam_imper,gen_m> => s56;
<_,per_m_h2,num_s,tam_imper,gen_f> => s57;
<_,per_m_h2,num_s,tam_imper,gen_m> => s58;
<_,per_m_h2,num_p,tam_imper,gen_m> => s59;
<_,per_m_h2,num_p,tam_imper,gen_f> => s60;
<_,per_u,num_s,tam_yA1,gen_m> => s61;
<_,per_m,num_s,tam_yA1,gen_m> => s62;
<_,per_a,num_s,tam_yA1,gen_m> => s63;
<_,per_m_h,num_s,tam_yA1,gen_m> => s64;
<_,per_u,num_p,tam_yA1,gen_m> => s65;
<_,per_m,num_p,tam_yA1,gen_m> => s66;
<_,per_a,num_p,tam_yA1,gen_m> => s67;
<_,per_m_h,num_p,tam_yA1,gen_m> => s68;
<_,per_u,num_s,tam_yA1,gen_f> => s69;
<_,per_m,num_s,tam_yA1,gen_f> => s70;
<_,per_a,num_s,tam_yA1,gen_f> => s71;
<_,per_m_h,num_s,tam_yA1,gen_f> => s72;
<_,per_u,num_p,tam_yA1,gen_f> => s73;
<_,per_m,num_p,tam_yA1,gen_f> => s74;
<_,per_a,num_p,tam_yA1,gen_f> => s75;
<_,per_m_h,num_p,tam_yA1,gen_f> => s76;
_ => "--"
};
};
jA_v: Str -> { s : Case => Per => Num => Tam => Gen => Str } = \s -> case s of {
var + "jA" => mkFunc21 (var+"jAnA") (var+"jAne") (var+"jAwA_huA") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwI_huI") (var+"jAwI_huI") (var+"jAwI_huI") (var+"jAwI_huI") (var+"gayA_huA") (var+"gaye_hue") (var+"gaye_hue") (var+"gaye_hue") (var+"gayI_huI") (var+"gayI_huI") (var+"gayI_huI") (var+"gayI_huI") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jA") (var+"jA") (var+"jAo") (var+"jAo") (var+"jAo") (var+"jAo") (var+"jAiye") (var+"jAiye") (var+"jAiye") (var+"jAiye") (var+"gayA") (var+"gayA") (var+"gayA") (var+"gayA") (var+"gaye") (var+"gaye") (var+"gaye") (var+"gaye") (var+"gayI") (var+"gayI") (var+"gayI") (var+"gayI") (var+"gayIM") (var+"gayIM") (var+"gayIM") (var+"gayIM")
};
mkFunc22: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_o,num_s,gen_m> => s2;
<case_d,num_p,gen_m> => s3;
<case_d,num_s,gen_f> => s4;
<case_o,num_s,gen_f> => s5;
<case_d,num_p,gen_f> => s6;
<case_o,num_p,gen_m> => s7;
<case_o,num_p,gen_f> => s8;
_ => "--"
};
};
kAlA_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "A" => mkFunc22 (var+"A") (var+"e") (var+"e") (var+"I") (var+"I") (var+"I") (var+"oM") (var+"iyoM")
};
mkFunc23: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_d,num_p,gen_f> => s2;
<case_o,num_s,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
rAwa_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "a" => mkFunc23 (var+"a") (var+"eM") (var+"a") (var+"oM")
};
mkFunc24: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_d,num_p,gen_f> => s2;
<case_o,num_s,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
BIda_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc24 (var+"") (var+"") (var+"") (var+"")
};
mkFunc25: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_d,num_p,gen_f> => s2;
<case_o,num_s,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
ASA_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc25 (var+"") (var+"yeM") (var+"") (var+"oM")
};
mkFunc26: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_d,num_p,gen_f> => s2;
<case_o,num_s,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
gudiyA_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "A" => mkFunc26 (var+"A") (var+"Az") (var+"A") (var+"oM")
};
mkFunc27: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_d,num_p,gen_f> => s2;
<case_o,num_s,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
IrRyA_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc27 (var+"") (var+"") (var+"") (var+"")
};
mkFunc28: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_d,num_p,gen_f> => s2;
<case_o,num_s,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
Apawwi_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc28 (var+"") (var+"yAz") (var+"") (var+"yoM")
};
mkFunc29: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_d,num_p,gen_f> => s2;
<case_o,num_s,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
SAnwi_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc29 (var+"") (var+"") (var+"") (var+"")
};
mkFunc30: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_d,num_p,gen_f> => s2;
<case_o,num_s,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
ladakI_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "I" => mkFunc30 (var+"I") (var+"iyAz") (var+"I") (var+"iyoM")
};
mkFunc31: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_d,num_p,gen_f> => s2;
<case_o,num_s,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
AjAxI_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc31 (var+"") (var+"") (var+"") (var+"")
};
mkFunc32: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_d,num_p,gen_f> => s2;
<case_o,num_s,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
qwu_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc32 (var+"") (var+"ez") (var+"") (var+"oM")
};
mkFunc33: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_d,num_p,gen_f> => s2;
<case_o,num_s,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
vAyu_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc33 (var+"") (var+"") (var+"") (var+"")
};
mkFunc34: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_d,num_p,gen_f> => s2;
<case_o,num_s,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
bahU_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "U" => mkFunc34 (var+"U") (var+"uez") (var+"U") (var+"uoM")
};
mkFunc35: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_d,num_p,gen_f> => s2;
<case_o,num_s,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
bAlU_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc35 (var+"") (var+"") (var+"") (var+"")
};
mkFunc36: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_d,num_p,gen_f> => s2;
<case_o,num_s,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
lO_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc36 (var+"") (var+"ez") (var+"") (var+"voM")
};
mkFunc37: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_d,num_p,gen_f> => s2;
<case_o,num_s,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
sarasoM_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc37 (var+"") (var+"") (var+"") (var+"")
};
mkFunc38: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_f> => s1;
<case_d,num_p,gen_f> => s2;
<case_o,num_s,gen_f> => s3;
<case_o,num_p,gen_f> => s4;
_ => "--"
};
};
mAz_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc38 (var+"") (var+"yeM") (var+"") (var+"oM")
};
mkFunc39: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
Gara_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "a" => mkFunc39 (var+"a") (var+"a") (var+"a") (var+"oM")
};
mkFunc40: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
Karca_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "a" => mkFunc40 (var+"a") (var+"e") (var+"a") (var+"oM")
};
mkFunc41: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
kroXa_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc41 (var+"") (var+"") (var+"") (var+"")
};
mkFunc42: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
ladakA_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "A" => mkFunc42 (var+"A") (var+"e") (var+"e") (var+"oM")
};
mkFunc43: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
rAjA_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc43 (var+"") (var+"") (var+"") (var+"oM")
};
mkFunc44: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
lohA_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "A" => mkFunc44 (var+"A") (var+"e") (var+"e") (var+"e")
};
mkFunc45: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
viXAwA_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc45 (var+"") (var+"") (var+"") (var+"")
};
mkFunc46: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
kavi_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc46 (var+"") (var+"") (var+"") (var+"yoM")
};
mkFunc47: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
AxamI_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "I" => mkFunc47 (var+"I") (var+"I") (var+"I") (var+"iyoM")
};
mkFunc48: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
pAnI_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc48 (var+"") (var+"") (var+"") (var+"")
};
mkFunc49: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
Sawru_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc49 (var+"") (var+"") (var+"") (var+"oM")
};
mkFunc50: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_p,gen_m> => s1;
<case_o,num_s,gen_m> => s2;
<case_o,num_p,gen_m> => s3;
<case_d,num_s,gen_m> => s4;
_ => "--"
};
};
katu_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc50 (var+"") (var+"") (var+"") (var+"")
};
mkFunc51: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
AlU_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "U" => mkFunc51 (var+"U") (var+"U") (var+"U") (var+"uoM")
};
mkFunc52: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
lahU_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc52 (var+"") (var+"") (var+"") (var+"")
};
mkFunc53: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
kuAz_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "Az" => mkFunc53 (var+"Az") (var+"ez") (var+"ez") (var+"oM")
};
mkFunc54: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
redio_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc54 (var+"") (var+"") (var+"") (var+"")
};
mkFunc55: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
gehUz_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "Uz" => mkFunc55 (var+"Uz") (var+"Uz") (var+"Uz") (var+"uzoM")
};
mkFunc56: Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_d,num_p,gen_m> => s2;
<case_o,num_s,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
_ => "--"
};
};
BARAvix_n: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc56 (var+"") (var+"") (var+"") (var+"oM")
};
mkFunc57: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Num => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8 -> {
s = \\x1,x2,x3 => case <x1,x2,x3> of {
<case_d,num_s,gen_m> => s1;
<case_o,num_s,gen_m> => s2;
<case_d,num_p,gen_m> => s3;
<case_o,num_p,gen_m> => s4;
<case_d,num_s,gen_f> => s5;
<case_o,num_s,gen_f> => s6;
<case_d,num_p,gen_f> => s7;
<case_o,num_p,gen_f> => s8;
_ => "--"
};
};
kA_sh: Str -> { s : Case => Num => Gen => Str } = \s -> case s of {
var + "A" => mkFunc57 (var+"A") (var+"e") (var+"e") (var+"e") (var+"I") (var+"I") (var+"I") (var+"I")
};
mkFunc58: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Parsarg => Fnum => Per => Num => Tam => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52 -> {
s = \\x1,x2,x3,x4,x5,x6,x7 => case <x1,x2,x3,x4,x5,x6,x7> of {
<case_d,parsarg_0,_,per_a,num_s,_,gen_m> => s1;
<case_d,parsarg_0,_,per_a,num_s,_,gen_f> => s2;
<case_d,_,_,per_a,num_p,tam_0,gen_m> => s3;
<case_d,_,_,per_a,num_p,tam_0,gen_f> => s4;
<case_d,parsarg_kA,fnum_s,per_a,num_s,_,gen_m> => s5;
<case_d,parsarg_kA,fnum_p,per_a,num_s,_,gen_m> => s6;
<case_o,parsarg_kA,fnum_s,per_a,num_s,_,gen_m> => s7;
<case_o,parsarg_kA,fnum_p,per_a,num_s,_,gen_m> => s8;
<case_d,parsarg_kA,fnum_s,per_a,num_s,_,gen_f> => s9;
<case_d,parsarg_kA,fnum_p,per_a,num_s,_,gen_f> => s10;
<case_o,parsarg_kA,fnum_s,per_a,num_s,_,gen_f> => s11;
<case_o,parsarg_kA,fnum_p,per_a,num_s,_,gen_f> => s12;
<case_d,parsarg_kA,fnum_s,per_a,num_p,_,gen_m> => s13;
<case_d,parsarg_kA,fnum_p,per_a,num_p,_,gen_m> => s14;
<case_o,parsarg_kA,fnum_s,per_a,num_p,_,gen_m> => s15;
<case_o,parsarg_kA,fnum_p,per_a,num_p,_,gen_m> => s16;
<case_d,parsarg_kA,fnum_s,per_a,num_p,_,gen_f> => s17;
<case_d,parsarg_kA,fnum_p,per_a,num_p,_,gen_f> => s18;
<case_o,parsarg_kA,fnum_s,per_a,num_p,_,gen_f> => s19;
<case_o,parsarg_kA,fnum_p,per_a,num_p,_,gen_f> => s20;
<case_o,parsarg_0,_,per_a,num_s,_,gen_m> => s21;
<case_o,parsarg_0,_,per_a,num_s,_,gen_f> => s22;
<case_o,parsarg_ne,_,per_a,num_s,_,gen_m> => s23;
<case_o,parsarg_ne,_,per_a,num_s,_,gen_f> => s24;
<case_o,parsarg_ko,_,per_a,num_s,_,gen_m> => s25;
<case_o,parsarg_ko,_,per_a,num_s,_,gen_f> => s26;
<case_o,parsarg_se,_,per_a,num_s,_,gen_m> => s27;
<case_o,parsarg_se,_,per_a,num_s,_,gen_f> => s28;
<case_o,parsarg_ke,_,per_a,num_s,_,gen_m> => s29;
<case_o,parsarg_ke,_,per_a,num_s,_,gen_f> => s30;
<case_o,parsarg_meM,_,per_a,num_s,_,gen_m> => s31;
<case_o,parsarg_meM_se,_,per_a,num_s,_,gen_m> => s32;
<case_o,parsarg_meM,_,per_a,num_s,_,gen_f> => s33;
<case_o,parsarg_meM_se,_,per_a,num_s,_,gen_f> => s34;
<case_o,parsarg_para,_,per_a,num_s,_,gen_m> => s35;
<case_o,parsarg_para,_,per_a,num_s,_,gen_f> => s36;
<case_o,parsarg_0,_,per_a,num_p,_,gen_m> => s37;
<case_o,parsarg_0,_,per_a,num_p,_,gen_f> => s38;
<case_o,parsarg_ne,_,per_a,num_p,_,gen_m> => s39;
<case_o,parsarg_ne,_,per_a,num_p,_,gen_f> => s40;
<case_o,parsarg_ko,_,per_a,num_p,_,gen_m> => s41;
<case_o,parsarg_ko,_,per_a,num_p,_,gen_f> => s42;
<case_o,parsarg_se,_,per_a,num_p,_,gen_m> => s43;
<case_o,parsarg_se,_,per_a,num_p,_,gen_f> => s44;
<case_o,parsarg_ke,_,per_a,num_p,_,gen_m> => s45;
<case_o,parsarg_ke,_,per_a,num_p,_,gen_f> => s46;
<case_o,parsarg_meM,_,per_a,num_p,_,gen_m> => s47;
<case_o,parsarg_meM_se,_,per_a,num_p,_,gen_m> => s48;
<case_o,parsarg_meM,_,per_a,num_p,_,gen_f> => s49;
<case_o,parsarg_meM_se,_,per_a,num_p,_,gen_f> => s50;
<case_o,parsarg_para,_,per_a,num_p,_,gen_m> => s51;
<case_o,parsarg_para,_,per_a,num_p,_,gen_f> => s52;
_ => "--"
};
};
yaha_p: Str -> { s : Case => Parsarg => Fnum => Per => Num => Tam => Gen => Str } = \s -> case s of {
var + "yaha" => mkFunc58 (var+"yaha") (var+"yaha") (var+"ye") (var+"ye") (var+"isakA") (var+"isake") (var+"isake") (var+"isake") (var+"isakI") (var+"isakI") (var+"isakI") (var+"isakI") (var+"inakA") (var+"inake") (var+"inake") (var+"inake") (var+"inakI") (var+"inakI") (var+"inakI") (var+"inakI") (var+"isa") (var+"isa") (var+"isane") (var+"isane") (var+"ise") (var+"ise") (var+"isase") (var+"isase") (var+"isake") (var+"isake") (var+"isameM") (var+"isameM_se") (var+"isameM") (var+"isameM_se") (var+"isapara") (var+"isapara") (var+"ina") (var+"ina") (var+"inhoMne") (var+"inhoMne") (var+"inheM") (var+"inheM") (var+"inase") (var+"inase") (var+"inake") (var+"inake") (var+"inameM") (var+"inameM_se") (var+"inameM") (var+"inameM_se") (var+"inapara") (var+"inapara")
};
mkFunc59: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Parsarg => Fnum => Per => Num => Tam => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52 -> {
s = \\x1,x2,x3,x4,x5,x6,x7 => case <x1,x2,x3,x4,x5,x6,x7> of {
<case_d,_,_,per_a,num_s,tam_0,gen_m> => s1;
<case_d,_,_,per_a,num_s,tam_0,gen_f> => s2;
<case_d,_,_,per_a,num_p,tam_0,gen_m> => s3;
<case_d,_,_,per_a,num_p,tam_0,gen_f> => s4;
<case_d,parsarg_kA,fnum_s,per_a,num_s,_,gen_m> => s5;
<case_d,parsarg_kA,fnum_p,per_a,num_s,_,gen_m> => s6;
<case_o,parsarg_kA,fnum_s,per_a,num_s,_,gen_m> => s7;
<case_o,parsarg_kA,fnum_p,per_a,num_s,_,gen_m> => s8;
<case_d,parsarg_kA,fnum_s,per_a,num_s,_,gen_f> => s9;
<case_d,parsarg_kA,fnum_p,per_a,num_s,_,gen_f> => s10;
<case_o,parsarg_kA,fnum_s,per_a,num_s,_,gen_f> => s11;
<case_o,parsarg_kA,fnum_p,per_a,num_s,_,gen_f> => s12;
<case_d,parsarg_kA,fnum_s,per_a,num_p,_,gen_m> => s13;
<case_d,parsarg_kA,fnum_p,per_a,num_p,_,gen_m> => s14;
<case_o,parsarg_kA,fnum_s,per_a,num_p,_,gen_m> => s15;
<case_o,parsarg_kA,fnum_p,per_a,num_p,_,gen_m> => s16;
<case_d,parsarg_kA,fnum_s,per_a,num_p,_,gen_f> => s17;
<case_d,parsarg_kA,fnum_p,per_a,num_p,_,gen_f> => s18;
<case_o,parsarg_kA,fnum_s,per_a,num_p,_,gen_f> => s19;
<case_o,parsarg_kA,fnum_p,per_a,num_p,_,gen_f> => s20;
<case_o,parsarg_0,_,per_a,num_s,_,gen_m> => s21;
<case_o,parsarg_0,_,per_a,num_s,_,gen_f> => s22;
<case_o,parsarg_ne,_,per_a,num_s,_,gen_m> => s23;
<case_o,parsarg_ne,_,per_a,num_s,_,gen_f> => s24;
<case_o,parsarg_ko,_,per_a,num_s,_,gen_m> => s25;
<case_o,parsarg_ko,_,per_a,num_s,_,gen_f> => s26;
<case_o,parsarg_se,_,per_a,num_s,_,gen_m> => s27;
<case_o,parsarg_se,_,per_a,num_s,_,gen_f> => s28;
<case_o,parsarg_ke,_,per_a,num_s,_,gen_m> => s29;
<case_o,parsarg_ke,_,per_a,num_s,_,gen_f> => s30;
<case_o,parsarg_meM,_,per_a,num_s,_,gen_m> => s31;
<case_o,parsarg_meM_se,_,per_a,num_s,_,gen_m> => s32;
<case_o,parsarg_meM,_,per_a,num_s,_,gen_f> => s33;
<case_o,parsarg_meM_se,_,per_a,num_s,_,gen_f> => s34;
<case_o,parsarg_para,_,per_a,num_s,_,gen_m> => s35;
<case_o,parsarg_para,_,per_a,num_s,_,gen_f> => s36;
<case_o,parsarg_0,_,per_a,num_p,_,gen_m> => s37;
<case_o,parsarg_0,_,per_a,num_p,_,gen_f> => s38;
<case_o,parsarg_ne,_,per_a,num_p,_,gen_m> => s39;
<case_o,parsarg_ne,_,per_a,num_p,_,gen_f> => s40;
<case_o,parsarg_ko,_,per_a,num_p,_,gen_m> => s41;
<case_o,parsarg_ko,_,per_a,num_p,_,gen_f> => s42;
<case_o,parsarg_se,_,per_a,num_p,_,gen_m> => s43;
<case_o,parsarg_se,_,per_a,num_p,_,gen_f> => s44;
<case_o,parsarg_ke,_,per_a,num_p,_,gen_m> => s45;
<case_o,parsarg_ke,_,per_a,num_p,_,gen_f> => s46;
<case_o,parsarg_meM,_,per_a,num_p,_,gen_m> => s47;
<case_o,parsarg_meM_se,_,per_a,num_p,_,gen_m> => s48;
<case_o,parsarg_meM,_,per_a,num_p,_,gen_f> => s49;
<case_o,parsarg_meM_se,_,per_a,num_p,_,gen_f> => s50;
<case_o,parsarg_para,_,per_a,num_p,_,gen_m> => s51;
<case_o,parsarg_para,_,per_a,num_p,_,gen_f> => s52;
_ => "--"
};
};
jo_p: Str -> { s : Case => Parsarg => Fnum => Per => Num => Tam => Gen => Str } = \s -> case s of {
var + "o" => mkFunc59 (var+"o") (var+"o") (var+"o") (var+"o") (var+"isakA") (var+"isake") (var+"isake") (var+"isake") (var+"isakI") (var+"isakI") (var+"isakI") (var+"isakI") (var+"inakA") (var+"inake") (var+"inake") (var+"inake") (var+"inakI") (var+"inakI") (var+"inakI") (var+"inakI") (var+"isa") (var+"isa") (var+"isane") (var+"isane") (var+"ise") (var+"ise") (var+"isase") (var+"isase") (var+"isake") (var+"isake") (var+"isameM") (var+"isameM_se") (var+"isameM") (var+"isameM_se") (var+"isapara") (var+"isapara") (var+"ina") (var+"ina") (var+"inhoMne") (var+"inhoMne") (var+"inheM") (var+"inheM") (var+"inase") (var+"inase") (var+"inake") (var+"inake") (var+"inameM") (var+"inameM_se") (var+"inameM") (var+"inameM_se") (var+"inapara") (var+"inapara")
};
mkFunc60: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Parsarg => Fnum => Per => Num => Tam => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52 -> {
s = \\x1,x2,x3,x4,x5,x6,x7 => case <x1,x2,x3,x4,x5,x6,x7> of {
<case_d,parsarg_kA,fnum_s,per_a,num_s,_,gen_m> => s1;
<case_d,parsarg_kA,fnum_p,per_a,num_s,_,gen_m> => s2;
<case_o,parsarg_kA,fnum_s,per_a,num_s,_,gen_m> => s3;
<case_o,parsarg_kA,fnum_p,per_a,num_s,_,gen_m> => s4;
<case_d,parsarg_kA,fnum_s,per_a,num_s,_,gen_f> => s5;
<case_d,parsarg_kA,fnum_p,per_a,num_s,_,gen_f> => s6;
<case_o,parsarg_kA,fnum_s,per_a,num_s,_,gen_f> => s7;
<case_o,parsarg_kA,fnum_p,per_a,num_s,_,gen_f> => s8;
<case_d,parsarg_kA,fnum_s,per_a,num_p,_,gen_m> => s9;
<case_d,parsarg_kA,fnum_p,per_a,num_p,_,gen_m> => s10;
<case_o,parsarg_kA,fnum_s,per_a,num_p,_,gen_m> => s11;
<case_o,parsarg_kA,fnum_p,per_a,num_p,_,gen_m> => s12;
<case_d,parsarg_kA,fnum_s,per_a,num_p,_,gen_f> => s13;
<case_d,parsarg_kA,fnum_p,per_a,num_p,_,gen_f> => s14;
<case_o,parsarg_kA,fnum_s,per_a,num_p,_,gen_f> => s15;
<case_o,parsarg_kA,fnum_p,per_a,num_p,_,gen_f> => s16;
<case_d,_,_,per_a,num_s,tam_0,gen_m> => s17;
<case_d,_,_,per_a,num_s,tam_0,gen_f> => s18;
<case_d,_,_,per_a,num_p,tam_0,gen_m> => s19;
<case_d,_,_,per_a,num_p,tam_0,gen_f> => s20;
<case_o,parsarg_0,_,per_a,num_s,_,gen_m> => s21;
<case_o,parsarg_0,_,per_a,num_s,_,gen_f> => s22;
<case_o,parsarg_ne,_,per_a,num_s,_,gen_m> => s23;
<case_o,parsarg_ne,_,per_a,num_s,_,gen_f> => s24;
<case_o,parsarg_ko,_,per_a,num_s,_,gen_m> => s25;
<case_o,parsarg_ko,_,per_a,num_s,_,gen_f> => s26;
<case_o,parsarg_se,_,per_a,num_s,_,gen_m> => s27;
<case_o,parsarg_se,_,per_a,num_s,_,gen_f> => s28;
<case_o,parsarg_ke,_,per_a,num_s,_,gen_m> => s29;
<case_o,parsarg_ke,_,per_a,num_s,_,gen_f> => s30;
<case_o,parsarg_meM,_,per_a,num_s,_,gen_m> => s31;
<case_o,parsarg_meM_se,_,per_a,num_s,_,gen_m> => s32;
<case_o,parsarg_meM,_,per_a,num_s,_,gen_f> => s33;
<case_o,parsarg_meM_se,_,per_a,num_s,_,gen_f> => s34;
<case_o,parsarg_para,_,per_a,num_s,_,gen_m> => s35;
<case_o,parsarg_para,_,per_a,num_s,_,gen_f> => s36;
<case_o,parsarg_0,_,per_a,num_p,_,gen_m> => s37;
<case_o,parsarg_0,_,per_a,num_p,_,gen_f> => s38;
<case_o,parsarg_ne,_,per_a,num_p,_,gen_m> => s39;
<case_o,parsarg_ne,_,per_a,num_p,_,gen_f> => s40;
<case_o,parsarg_ko,_,per_a,num_p,_,gen_m> => s41;
<case_o,parsarg_ko,_,per_a,num_p,_,gen_f> => s42;
<case_o,parsarg_se,_,per_a,num_p,_,gen_m> => s43;
<case_o,parsarg_se,_,per_a,num_p,_,gen_f> => s44;
<case_o,parsarg_ke,_,per_a,num_p,_,gen_m> => s45;
<case_o,parsarg_ke,_,per_a,num_p,_,gen_f> => s46;
<case_o,parsarg_meM,_,per_a,num_p,_,gen_m> => s47;
<case_o,parsarg_meM_se,_,per_a,num_p,_,gen_m> => s48;
<case_o,parsarg_meM,_,per_a,num_p,_,gen_f> => s49;
<case_o,parsarg_meM_se,_,per_a,num_p,_,gen_f> => s50;
<case_o,parsarg_para,_,per_a,num_p,_,gen_m> => s51;
<case_o,parsarg_para,_,per_a,num_p,_,gen_f> => s52;
_ => "--"
};
};
kOna_p: Str -> { s : Case => Parsarg => Fnum => Per => Num => Tam => Gen => Str } = \s -> case s of {
var + "Ona" => mkFunc60 (var+"isakA") (var+"isake") (var+"isake") (var+"isake") (var+"isakI") (var+"isakI") (var+"isakI") (var+"isakI") (var+"inakA") (var+"inake") (var+"inake") (var+"inake") (var+"inakI") (var+"inakI") (var+"inakI") (var+"inakI") (var+"Ona") (var+"Ona") (var+"Ona") (var+"Ona") (var+"isa") (var+"isa") (var+"isane") (var+"isane") (var+"ise") (var+"ise") (var+"isase") (var+"isase") (var+"isake") (var+"isake") (var+"isameM") (var+"isameM_se") (var+"isameM") (var+"isameM_se") (var+"isapara") (var+"isapara") (var+"ina") (var+"ina") (var+"inhoMne") (var+"inhoMne") (var+"inheM") (var+"inheM") (var+"inase") (var+"inase") (var+"inake") (var+"inake") (var+"inameM") (var+"inameM_se") (var+"inameM") (var+"inameM_se") (var+"inapara") (var+"inapara")
};
mkFunc61: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Parsarg => Per => Num => Tam => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34 -> {
s = \\x1,x2,x3,x4,x5,x6 => case <x1,x2,x3,x4,x5,x6> of {
<case_o,parsarg_ne,per_a,num_s,_,gen_m> => s1;
<case_o,parsarg_ne,per_a,num_s,_,gen_f> => s2;
<case_o,parsarg_ko,per_a,num_s,_,gen_m> => s3;
<case_o,parsarg_ko,per_a,num_s,_,gen_f> => s4;
<case_o,parsarg_se,per_a,num_s,_,gen_m> => s5;
<case_o,parsarg_se,per_a,num_s,_,gen_f> => s6;
<case_o,parsarg_ke,per_a,num_s,_,gen_m> => s7;
<case_o,parsarg_ke,per_a,num_s,_,gen_f> => s8;
<case_o,parsarg_meM,per_a,num_s,_,gen_m> => s9;
<case_o,parsarg_meM_se,per_a,num_s,_,gen_m> => s10;
<case_o,parsarg_meM,per_a,num_s,_,gen_f> => s11;
<case_o,parsarg_meM_se,per_a,num_s,_,gen_f> => s12;
<case_o,parsarg_para,per_a,num_s,_,gen_m> => s13;
<case_o,parsarg_para,per_a,num_s,_,gen_f> => s14;
<case_o,parsarg_0,per_a,num_p,_,gen_m> => s15;
<case_o,parsarg_0,per_a,num_p,_,gen_f> => s16;
<case_o,parsarg_ne,per_a,num_p,_,gen_m> => s17;
<case_o,parsarg_ne,per_a,num_p,_,gen_f> => s18;
<case_o,parsarg_ko,per_a,num_p,_,gen_m> => s19;
<case_o,parsarg_ko,per_a,num_p,_,gen_f> => s20;
<case_o,parsarg_se,per_a,num_p,_,gen_m> => s21;
<case_o,parsarg_se,per_a,num_p,_,gen_f> => s22;
<case_o,parsarg_ke,per_a,num_p,_,gen_m> => s23;
<case_o,parsarg_ke,per_a,num_p,_,gen_f> => s24;
<case_o,parsarg_meM,per_a,num_p,_,gen_m> => s25;
<case_o,parsarg_meM_se,per_a,num_p,_,gen_m> => s26;
<case_o,parsarg_meM,per_a,num_p,_,gen_f> => s27;
<case_o,parsarg_meM_se,per_a,num_p,_,gen_f> => s28;
<case_o,parsarg_para,per_a,num_p,_,gen_m> => s29;
<case_o,parsarg_para,per_a,num_p,_,gen_f> => s30;
<case_o,parsarg_0,per_a,num_s,tam_0,gen_m> => s31;
<case_o,parsarg_0,per_a,num_s,tam_0,gen_f> => s32;
<case_o,parsarg_0,per_a,num_p,tam_0,gen_m> => s33;
<case_o,parsarg_0,per_a,num_p,tam_0,gen_f> => s34;
_ => "--"
};
};
koI_p: Str -> { s : Case => Parsarg => Per => Num => Tam => Gen => Str } = \s -> case s of {
var + "oI" => mkFunc61 (var+"isIne") (var+"isIne") (var+"isIko") (var+"isIko") (var+"isIse") (var+"isIse") (var+"isIke") (var+"isIke") (var+"isImeM") (var+"isImeM_se") (var+"isImeM") (var+"isImeM_se") (var+"isIpara") (var+"isIpara") (var+"inhIM") (var+"inhIM") (var+"inhoMne") (var+"inhoMne") (var+"inhIMko") (var+"inhIMko") (var+"inhIMse") (var+"inhIMse") (var+"inhIMke") (var+"inhIMke") (var+"inhIMmeM") (var+"inhIMmeM_se") (var+"inhIMmeM") (var+"inhIMmeM_se") (var+"inhIMpara") (var+"inhIMpara") (var+"oI") (var+"oI") (var+"oI") (var+"oI")
};
mkFunc62: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Parsarg => Fnum => Per => Num => Tam => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55 -> {
s = \\x1,x2,x3,x4,x5,x6,x7 => case <x1,x2,x3,x4,x5,x6,x7> of {
<case_o,parsarg_0,_,per_a,num_s,_,gen_m> => s1;
<case_o,parsarg_0,_,per_a,num_s,_,gen_f> => s2;
<case_o,parsarg_ne,_,per_a,num_s,_,gen_m> => s3;
<case_o,parsarg_ne,_,per_a,num_s,_,gen_f> => s4;
<case_o,parsarg_ko,_,per_a,num_s,_,gen_m> => s5;
<case_o,parsarg_ko,_,per_a,num_s,_,gen_f> => s6;
<case_o,parsarg_se,_,per_a,num_s,_,gen_m> => s7;
<case_o,parsarg_se,_,per_a,num_s,_,gen_f> => s8;
<case_o,parsarg_ke,_,per_a,num_s,_,gen_m> => s9;
<case_o,parsarg_ke,_,per_a,num_s,_,gen_f> => s10;
<case_o,parsarg_meM,_,per_a,num_s,_,gen_m> => s11;
<case_o,parsarg_meM_se,_,per_a,num_s,_,gen_m> => s12;
<case_o,parsarg_meM,_,per_a,num_s,_,gen_f> => s13;
<case_o,parsarg_meM_se,_,per_a,num_s,_,gen_f> => s14;
<case_o,parsarg_para,_,per_a,num_s,_,gen_m> => s15;
<case_o,parsarg_para,_,per_a,num_s,_,gen_f> => s16;
<case_o,parsarg_0,_,per_a,num_p,_,gen_m> => s17;
<case_o,parsarg_0,_,per_a,num_p,_,gen_f> => s18;
<case_o,parsarg_ne,_,per_a,num_p,_,gen_m> => s19;
<case_o,parsarg_ne,_,per_a,num_p,_,gen_f> => s20;
<case_o,parsarg_ko,_,per_a,num_p,_,gen_m> => s21;
<case_o,parsarg_ko,_,per_a,num_p,_,gen_f> => s22;
<case_o,parsarg_se,_,per_a,num_p,_,gen_m> => s23;
<case_o,parsarg_se,_,per_a,num_p,_,gen_f> => s24;
<case_o,parsarg_ke,_,per_a,num_p,_,gen_m> => s25;
<case_o,parsarg_ke,_,per_a,num_p,_,gen_f> => s26;
<case_o,parsarg_meM,_,per_a,num_p,_,gen_m> => s27;
<case_o,parsarg_meM_se,_,per_a,num_p,_,gen_m> => s28;
<case_o,parsarg_meM,_,per_a,num_p,_,gen_f> => s29;
<case_o,parsarg_meM_se,_,per_a,num_p,_,gen_f> => s30;
<case_o,parsarg_para,_,per_a,num_p,_,gen_m> => s31;
<case_o,parsarg_para,_,per_a,num_p,_,gen_f> => s32;
<case_d,parsarg_0,_,per_a,num_s,_,gen_m> => s33;
<case_d,parsarg_0,_,per_a,num_s,_,gen_f> => s34;
<case_d,_,_,per_a,num_p,tam_0,gen_m> => s35;
<case_d,_,_,per_a,num_p,tam_0,gen_f> => s36;
<case_d,parsarg_kA,fnum_s,per_a,num_s,_,gen_m> => s37;
<case_d,parsarg_kA,fnum_p,per_a,num_s,_,gen_m> => s38;
<case_o,parsarg_kA,fnum_s,per_a,num_s,_,gen_m> => s39;
<case_o,parsarg_kA,fnum_p,per_a,num_s,_,gen_m> => s40;
<case_o,parsarg_kI,_,per_a,num_s,_,gen_f> => s41;
<case_o,parsarg_kI,_,per_a,num_s,_,gen_m> => s42;
<case_d,parsarg_kA,fnum_s,per_a,num_s,_,gen_f> => s43;
<case_d,parsarg_kA,fnum_p,per_a,num_s,_,gen_f> => s44;
<case_o,parsarg_kA,fnum_s,per_a,num_s,_,gen_f> => s45;
<case_o,parsarg_kA,fnum_p,per_a,num_s,_,gen_f> => s46;
<case_d,parsarg_kA,fnum_s,per_a,num_p,_,gen_m> => s47;
<case_d,parsarg_kA,fnum_p,per_a,num_p,_,gen_m> => s48;
<case_o,parsarg_kA,fnum_s,per_a,num_p,_,gen_m> => s49;
<case_o,parsarg_kA,fnum_p,per_a,num_p,_,gen_m> => s50;
<case_o,parsarg_kI,_,per_a,num_p,_,gen_f> => s51;
<case_d,parsarg_kA,fnum_s,per_a,num_p,_,gen_f> => s52;
<case_d,parsarg_kA,fnum_p,per_a,num_p,_,gen_f> => s53;
<case_o,parsarg_kA,fnum_s,per_a,num_p,_,gen_f> => s54;
<case_o,parsarg_kA,fnum_p,per_a,num_p,_,gen_f> => s55;
_ => "--"
};
};
vaha_p: Str -> { s : Case => Parsarg => Fnum => Per => Num => Tam => Gen => Str } = \s -> case s of {
var + "vaha" => mkFunc62 (var+"usa") (var+"usa") (var+"usane") (var+"usane") (var+"use") (var+"use") (var+"usase") (var+"usase") (var+"usake") (var+"usake") (var+"usameM") (var+"usameM_se") (var+"usameM") (var+"usameM_se") (var+"usapara") (var+"usapara") (var+"una") (var+"una") (var+"unhoMne") (var+"unhoMne") (var+"unheM") (var+"unheM") (var+"unase") (var+"unase") (var+"unake") (var+"unake") (var+"unameM") (var+"unameM_se") (var+"unameM") (var+"unameM_se") (var+"unapara") (var+"unapara") (var+"vaha") (var+"vaha") (var+"ve") (var+"ve") (var+"usakA") (var+"usake") (var+"usake") (var+"usake") (var+"usakI") (var+"usakI") (var+"usakI") (var+"usakI") (var+"usakI") (var+"usakI") (var+"unakA") (var+"unake") (var+"unake") (var+"unake") (var+"unakI") (var+"unakI") (var+"unakI") (var+"unakI") (var+"unakI")
};
mkFunc63: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Parsarg => Fnum => Per => Num => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50 -> {
s = \\x1,x2,x3,x4,x5,x6 => case <x1,x2,x3,x4,x5,x6> of {
<case_o,parsarg_0,_,per_m,num_s,gen_m> => s1;
<case_o,parsarg_0,_,per_m,num_s,gen_f> => s2;
<case_o,parsarg_ne,_,per_m,num_s,gen_m> => s3;
<case_o,parsarg_ne,_,per_m,num_s,gen_f> => s4;
<case_o,parsarg_ko,_,per_m,num_s,gen_m> => s5;
<case_o,parsarg_ko,_,per_m,num_s,gen_f> => s6;
<case_o,parsarg_se,_,per_m,num_s,gen_m> => s7;
<case_o,parsarg_se,_,per_m,num_s,gen_f> => s8;
<case_o,parsarg_ke,_,per_m,num_s,gen_m> => s9;
<case_o,parsarg_ke,_,per_m,num_s,gen_f> => s10;
<case_o,parsarg_meM,_,per_m,num_s,gen_m> => s11;
<case_o,parsarg_meM_se,_,per_m,num_s,gen_m> => s12;
<case_o,parsarg_meM,_,per_m,num_s,gen_f> => s13;
<case_o,parsarg_meM_se,_,per_m,num_s,gen_f> => s14;
<case_o,parsarg_para,_,per_m,num_s,gen_m> => s15;
<case_o,parsarg_para,_,per_m,num_s,gen_f> => s16;
<case_o,parsarg_0,_,per_m,num_p,gen_m> => s17;
<case_o,parsarg_0,_,per_m,num_p,gen_f> => s18;
<case_o,parsarg_ne,_,per_m,num_p,gen_m> => s19;
<case_o,parsarg_ne,_,per_m,num_p,gen_f> => s20;
<case_o,parsarg_ko,_,per_m,num_p,gen_m> => s21;
<case_o,parsarg_ko,_,per_m,num_p,gen_f> => s22;
<case_o,parsarg_se,_,per_m,num_p,gen_m> => s23;
<case_o,parsarg_se,_,per_m,num_p,gen_f> => s24;
<case_o,parsarg_ke,_,per_m,num_p,gen_m> => s25;
<case_o,parsarg_ke,_,per_m,num_p,gen_f> => s26;
<case_o,parsarg_meM,_,per_m,num_p,gen_m> => s27;
<case_o,parsarg_meM_se,_,per_m,num_p,gen_m> => s28;
<case_o,parsarg_meM,_,per_m,num_p,gen_f> => s29;
<case_o,parsarg_meM_se,_,per_m,num_p,gen_f> => s30;
<case_o,parsarg_para,_,per_m,num_p,gen_m> => s31;
<case_o,parsarg_para,_,per_m,num_p,gen_f> => s32;
<case_d,parsarg_kA,fnum_s,per_m,num_s,gen_m> => s33;
<case_d,parsarg_kA,fnum_p,per_m,num_s,gen_m> => s34;
<case_o,parsarg_kA,fnum_s,per_m,num_s,gen_m> => s35;
<case_o,parsarg_kA,fnum_p,per_m,num_s,gen_m> => s36;
<case_d,parsarg_kA,fnum_s,per_m,num_s,gen_f> => s37;
<case_d,parsarg_kA,fnum_p,per_m,num_s,gen_f> => s38;
<case_o,parsarg_kA,fnum_s,per_m,num_s,gen_f> => s39;
<case_o,parsarg_kA,fnum_p,per_m,num_s,gen_f> => s40;
<case_o,parsarg_kI,_,per_m,num_s,gen_f> => s41;
<case_d,parsarg_kA,fnum_s,per_m,num_p,gen_m> => s42;
<case_d,parsarg_kA,fnum_p,per_m,num_p,gen_m> => s43;
<case_o,parsarg_kA,fnum_s,per_m,num_p,gen_m> => s44;
<case_o,parsarg_kA,fnum_p,per_m,num_p,gen_m> => s45;
<case_d,parsarg_kA,fnum_s,per_m,num_p,gen_f> => s46;
<case_d,parsarg_kA,fnum_p,per_m,num_p,gen_f> => s47;
<case_o,parsarg_kA,fnum_s,per_m,num_p,gen_f> => s48;
<case_o,parsarg_kA,fnum_p,per_m,num_p,gen_f> => s49;
<case_o,parsarg_kI,_,per_m,num_p,gen_f> => s50;
_ => "--"
};
};
wU_p: Str -> { s : Case => Parsarg => Fnum => Per => Num => Gen => Str } = \s -> case s of {
var + "U" => mkFunc63 (var+"U") (var+"U") (var+"Une") (var+"Une") (var+"uJe") (var+"uJe") (var+"uJase") (var+"uJase") (var+"uJake") (var+"uJake") (var+"uJameM") (var+"uJameM_se") (var+"uJameM") (var+"uJameM_se") (var+"uJapara") (var+"uJapara") (var+"uma") (var+"uma") (var+"umane ") (var+"umane ") (var+"umheM") (var+"umheM") (var+"umase") (var+"umase") (var+"umake") (var+"umake") (var+"umameM") (var+"umameM_se") (var+"umameM") (var+"umameM_se") (var+"umapara") (var+"umapara") (var+"erA") (var+"ere") (var+"ere") (var+"ere") (var+"erI") (var+"erI") (var+"erI") (var+"erI") (var+"erI") (var+"umhArA") (var+"umhAre") (var+"umhAre") (var+"umhAre") (var+"umhArI") (var+"umhArI") (var+"umhArI") (var+"umhArI") (var+"umhArI")
};
mkFunc64: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Parsarg => Fnum => Per => Num => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,s91,s92,s93,s94,s95,s96 -> {
s = \\x1,x2,x3,x4,x5,x6 => case <x1,x2,x3,x4,x5,x6> of {
<case_o,parsarg_0,_,_,num_s,gen_m> => s1;
<case_o,parsarg_0,_,_,num_p,gen_m> => s2;
<case_o,parsarg_0,_,_,num_s,gen_f> => s3;
<case_o,parsarg_0,_,_,num_p,gen_f> => s4;
<case_o,parsarg_ne,_,_,num_s,gen_m> => s5;
<case_o,parsarg_ne,_,_,num_p,gen_m> => s6;
<case_o,parsarg_ne,_,_,num_s,gen_f> => s7;
<case_o,parsarg_ne,_,_,num_p,gen_f> => s8;
<case_o,parsarg_ko,_,_,num_s,gen_m> => s9;
<case_o,parsarg_ko,_,_,num_p,gen_m> => s10;
<case_o,parsarg_ko,_,_,num_s,gen_f> => s11;
<case_o,parsarg_ko,_,_,num_p,gen_f> => s12;
<case_o,parsarg_se,_,_,num_s,gen_m> => s13;
<case_o,parsarg_se,_,_,num_p,gen_m> => s14;
<case_o,parsarg_se,_,_,num_s,gen_f> => s15;
<case_o,parsarg_se,_,_,num_p,gen_f> => s16;
<case_o,parsarg_ke,_,_,num_s,gen_m> => s17;
<case_o,parsarg_ke,_,_,num_p,gen_m> => s18;
<case_o,parsarg_ke,_,_,num_s,gen_f> => s19;
<case_o,parsarg_ke,_,_,num_p,gen_f> => s20;
<case_o,parsarg_meM,_,_,num_s,gen_m> => s21;
<case_o,parsarg_meM_se,_,_,num_s,gen_m> => s22;
<case_o,parsarg_meM,_,_,num_p,gen_m> => s23;
<case_o,parsarg_meM_se,_,_,num_p,gen_m> => s24;
<case_o,parsarg_meM,_,_,num_s,gen_f> => s25;
<case_o,parsarg_meM_se,_,_,num_s,gen_f> => s26;
<case_o,parsarg_meM,_,_,num_p,gen_f> => s27;
<case_o,parsarg_meM_se,_,_,num_p,gen_f> => s28;
<case_o,parsarg_para,_,_,num_s,gen_m> => s29;
<case_o,parsarg_para,_,_,num_p,gen_m> => s30;
<case_o,parsarg_para,_,_,num_s,gen_f> => s31;
<case_o,parsarg_para,_,_,num_p,gen_f> => s32;
<case_d,parsarg_kA,fnum_s,per_a,num_p,gen_m> => s33;
<case_d,parsarg_kA,fnum_s,per_a,num_s,gen_m> => s34;
<case_d,parsarg_kA,fnum_s,per_m_h,num_p,gen_m> => s35;
<case_d,parsarg_kA,fnum_s,per_m_h,num_s,gen_m> => s36;
<case_d,parsarg_kA,fnum_s,per_m,num_p,gen_m> => s37;
<case_d,parsarg_kA,fnum_s,per_m,num_s,gen_m> => s38;
<case_d,parsarg_kA,fnum_s,per_u,num_p,gen_m> => s39;
<case_d,parsarg_kA,fnum_s,per_u,num_s,gen_m> => s40;
<case_d,parsarg_kA,fnum_p,per_a,num_p,gen_m> => s41;
<case_d,parsarg_kA,fnum_p,per_a,num_s,gen_m> => s42;
<case_d,parsarg_kA,fnum_p,per_m_h,num_p,gen_m> => s43;
<case_d,parsarg_kA,fnum_p,per_m_h,num_s,gen_m> => s44;
<case_d,parsarg_kA,fnum_p,per_m,num_p,gen_m> => s45;
<case_d,parsarg_kA,fnum_p,per_m,num_s,gen_m> => s46;
<case_d,parsarg_kA,fnum_p,per_u,num_p,gen_m> => s47;
<case_d,parsarg_kA,fnum_p,per_u,num_s,gen_m> => s48;
<case_o,parsarg_kA,fnum_p,per_a,num_p,gen_m> => s49;
<case_o,parsarg_kA,fnum_p,per_a,num_s,gen_m> => s50;
<case_o,parsarg_kA,fnum_p,per_m_h,num_p,gen_m> => s51;
<case_o,parsarg_kA,fnum_p,per_m_h,num_s,gen_m> => s52;
<case_o,parsarg_kA,fnum_p,per_m,num_p,gen_m> => s53;
<case_o,parsarg_kA,fnum_p,per_m,num_s,gen_m> => s54;
<case_o,parsarg_kA,fnum_p,per_u,num_p,gen_m> => s55;
<case_o,parsarg_kA,fnum_p,per_u,num_s,gen_m> => s56;
<case_o,parsarg_kA,fnum_s,per_a,num_p,gen_m> => s57;
<case_o,parsarg_kA,fnum_s,per_a,num_s,gen_m> => s58;
<case_o,parsarg_kA,fnum_s,per_m_h,num_p,gen_m> => s59;
<case_o,parsarg_kA,fnum_s,per_m_h,num_s,gen_m> => s60;
<case_o,parsarg_kA,fnum_s,per_m,num_p,gen_m> => s61;
<case_o,parsarg_kA,fnum_s,per_m,num_s,gen_m> => s62;
<case_o,parsarg_kA,fnum_s,per_u,num_p,gen_m> => s63;
<case_o,parsarg_kA,fnum_s,per_u,num_s,gen_m> => s64;
<case_d,parsarg_kA,fnum_p,per_a,num_p,gen_f> => s65;
<case_d,parsarg_kA,fnum_p,per_a,num_s,gen_f> => s66;
<case_d,parsarg_kA,fnum_p,per_m_h,num_p,gen_f> => s67;
<case_d,parsarg_kA,fnum_p,per_m_h,num_s,gen_f> => s68;
<case_d,parsarg_kA,fnum_p,per_m,num_p,gen_f> => s69;
<case_d,parsarg_kA,fnum_p,per_m,num_s,gen_f> => s70;
<case_d,parsarg_kA,fnum_p,per_u,num_p,gen_f> => s71;
<case_d,parsarg_kA,fnum_p,per_u,num_s,gen_f> => s72;
<case_o,parsarg_kA,fnum_p,per_a,num_p,gen_f> => s73;
<case_o,parsarg_kA,fnum_p,per_a,num_s,gen_f> => s74;
<case_o,parsarg_kA,fnum_p,per_m_h,num_p,gen_f> => s75;
<case_o,parsarg_kA,fnum_p,per_m_h,num_s,gen_f> => s76;
<case_o,parsarg_kA,fnum_p,per_m,num_p,gen_f> => s77;
<case_o,parsarg_kA,fnum_p,per_m,num_s,gen_f> => s78;
<case_o,parsarg_kA,fnum_p,per_u,num_p,gen_f> => s79;
<case_o,parsarg_kA,fnum_p,per_u,num_s,gen_f> => s80;
<case_d,parsarg_kA,fnum_s,per_a,num_p,gen_f> => s81;
<case_d,parsarg_kA,fnum_s,per_a,num_s,gen_f> => s82;
<case_d,parsarg_kA,fnum_s,per_m_h,num_p,gen_f> => s83;
<case_d,parsarg_kA,fnum_s,per_m_h,num_s,gen_f> => s84;
<case_d,parsarg_kA,fnum_s,per_m,num_p,gen_f> => s85;
<case_d,parsarg_kA,fnum_s,per_m,num_s,gen_f> => s86;
<case_d,parsarg_kA,fnum_s,per_u,num_p,gen_f> => s87;
<case_d,parsarg_kA,fnum_s,per_u,num_s,gen_f> => s88;
<case_o,parsarg_kA,fnum_s,per_a,num_p,gen_f> => s89;
<case_o,parsarg_kA,fnum_s,per_a,num_s,gen_f> => s90;
<case_o,parsarg_kA,fnum_s,per_m_h,num_p,gen_f> => s91;
<case_o,parsarg_kA,fnum_s,per_m_h,num_s,gen_f> => s92;
<case_o,parsarg_kA,fnum_s,per_m,num_p,gen_f> => s93;
<case_o,parsarg_kA,fnum_s,per_m,num_s,gen_f> => s94;
<case_o,parsarg_kA,fnum_s,per_u,num_p,gen_f> => s95;
<case_o,parsarg_kA,fnum_s,per_u,num_s,gen_f> => s96;
_ => "--"
};
};
Apa_p: Str -> { s : Case => Parsarg => Fnum => Per => Num => Gen => Str } = \s -> case s of {
var + "" => mkFunc64 (var+"") (var+"") (var+"") (var+"") (var+"ne") (var+"ne") (var+"ne") (var+"ne") (var+"ko") (var+"ko") (var+"ko") (var+"ko") (var+"se") (var+"se") (var+"se") (var+"se") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"meM") (var+"meM_se") (var+"meM") (var+"meM_se") (var+"meM") (var+"meM_se") (var+"meM") (var+"meM_se") (var+"para") (var+"para") (var+"para") (var+"para") (var+"kA") (var+"kA") (var+"kA") (var+"kA") (var+"kA") (var+"kA") (var+"kA") (var+"kA") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"ke") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI") (var+"kI")
};
mkFunc65: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Parsarg => Fnum => Per => Num => Gen => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50 -> {
s = \\x1,x2,x3,x4,x5,x6 => case <x1,x2,x3,x4,x5,x6> of {
<case_o,parsarg_0,_,per_u,num_s,gen_m> => s1;
<case_o,parsarg_0,_,per_u,num_s,gen_f> => s2;
<case_o,parsarg_ne,_,per_u,num_s,gen_m> => s3;
<case_o,parsarg_ne,_,per_u,num_s,gen_f> => s4;
<case_o,parsarg_ko,_,per_u,num_s,gen_m> => s5;
<case_o,parsarg_ko,_,per_u,num_s,gen_f> => s6;
<case_o,parsarg_se,_,per_u,num_s,gen_m> => s7;
<case_o,parsarg_se,_,per_u,num_s,gen_f> => s8;
<case_o,parsarg_meM,_,per_u,num_s,gen_m> => s9;
<case_o,parsarg_meM_se,_,per_u,num_s,gen_m> => s10;
<case_o,parsarg_meM,_,per_u,num_s,gen_f> => s11;
<case_o,parsarg_meM_se,_,per_u,num_s,gen_f> => s12;
<case_o,parsarg_para,_,per_u,num_s,gen_m> => s13;
<case_o,parsarg_para,_,per_u,num_s,gen_f> => s14;
<case_o,parsarg_0,_,per_u,num_p,gen_m> => s15;
<case_o,parsarg_0,_,per_u,num_p,gen_f> => s16;
<case_o,parsarg_ne,_,per_u,num_p,gen_m> => s17;
<case_o,parsarg_ne,_,per_u,num_p,gen_f> => s18;
<case_o,parsarg_ko,_,per_u,num_p,gen_m> => s19;
<case_o,parsarg_ko,_,per_u,num_p,gen_f> => s20;
<case_o,parsarg_se,_,per_u,num_p,gen_m> => s21;
<case_o,parsarg_se,_,per_u,num_p,gen_f> => s22;
<case_o,parsarg_meM,_,per_u,num_p,gen_m> => s23;
<case_o,parsarg_meM_se,_,per_u,num_p,gen_m> => s24;
<case_o,parsarg_meM,_,per_u,num_p,gen_f> => s25;
<case_o,parsarg_meM_se,_,per_u,num_p,gen_f> => s26;
<case_o,parsarg_para,_,per_u,num_p,gen_m> => s27;
<case_o,parsarg_para,_,per_u,num_p,gen_f> => s28;
<case_d,parsarg_kA,fnum_s,per_u,num_s,gen_m> => s29;
<case_d,parsarg_kA,fnum_p,per_u,num_s,gen_m> => s30;
<case_o,parsarg_kA,fnum_s,per_u,num_s,gen_m> => s31;
<case_o,parsarg_kA,fnum_p,per_u,num_s,gen_m> => s32;
<case_d,parsarg_kA,fnum_s,per_u,num_s,gen_f> => s33;
<case_d,parsarg_kA,fnum_p,per_u,num_s,gen_f> => s34;
<case_o,parsarg_kA,fnum_s,per_u,num_s,gen_f> => s35;
<case_o,parsarg_kA,fnum_p,per_u,num_s,gen_f> => s36;
<case_o,parsarg_kI,_,per_u,num_s,gen_f> => s37;
<case_o,parsarg_kI,_,per_u,num_p,gen_f> => s38;
<case_o,parsarg_ke,_,per_u,num_s,gen_m> => s39;
<case_o,parsarg_ke,_,per_u,num_s,gen_f> => s40;
<case_d,parsarg_kA,fnum_s,per_u,num_p,gen_m> => s41;
<case_d,parsarg_kA,fnum_p,per_u,num_p,gen_m> => s42;
<case_o,parsarg_kA,fnum_s,per_u,num_p,gen_m> => s43;
<case_o,parsarg_kA,fnum_p,per_u,num_p,gen_m> => s44;
<case_d,parsarg_kA,fnum_s,per_u,num_p,gen_f> => s45;
<case_d,parsarg_kA,fnum_p,per_u,num_p,gen_f> => s46;
<case_o,parsarg_kA,fnum_s,per_u,num_p,gen_f> => s47;
<case_o,parsarg_kA,fnum_p,per_u,num_p,gen_f> => s48;
<case_o,parsarg_ke,_,per_u,num_p,gen_m> => s49;
<case_o,parsarg_ke,_,per_u,num_p,gen_f> => s50;
_ => "--"
};
};
mEM_p: Str -> { s : Case => Parsarg => Fnum => Per => Num => Gen => Str } = \s -> case s of {
var + "mEM" => mkFunc65 (var+"mEM") (var+"mEM") (var+"mEMne") (var+"mEMne") (var+"muJe") (var+"muJe") (var+"muJase") (var+"muJase") (var+"muJameM") (var+"muJameM_se") (var+"muJameM") (var+"muJameM_se") (var+"muJapara") (var+"muJapara") (var+"hama") (var+"hama") (var+"hamane") (var+"hamane") (var+"hameM") (var+"hameM") (var+"hamase") (var+"hamase") (var+"hamameM") (var+"hamameM_se") (var+"hamameM") (var+"hamameM_se") (var+"hamapara") (var+"hamapara") (var+"merA") (var+"mere") (var+"mere") (var+"mere") (var+"merI") (var+"merI") (var+"merI") (var+"merI") (var+"merI") (var+"hamArI") (var+"mere") (var+"mere") (var+"hamArA") (var+"hamAre") (var+"hamAre") (var+"hamAre") (var+"hamArI") (var+"hamArI") (var+"hamArI") (var+"hamArI") (var+"hamAre") (var+"hamAre")
};

};

