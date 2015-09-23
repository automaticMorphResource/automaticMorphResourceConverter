resource myresource = {
flags	coding=utf8 ;
param
	Case = d | o ;
	Parsarg = zero1 | ne | ko | se | ke | meM | meM_se | kA | kI | para ;
	Fnum = fs | fp ;
	Per = u | ma | m_h0 | m_h1 | m_h2 | m_h | a ;
	Cat = n | prn | v | vn | adj | sh | prsg | cnj | prawyaya ;
	Num = s | p ;
	Tam = adv_we_hue | adj_wA_huA | adj_yA_huA | we_rahanA_hE | imper | subj | nA | wA | yA | yA1 | kara | gA | hE | WA | zero ;
	Gen = m | f ;
oper
mkFunc1: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Case => Gen => Num => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8 -> {
s = table {
	d => table {
		m => table {
			s => s1;
			p => s2
		};
		f => table {
			s => s3;
			p => s4
		}
	};
	o => table {
		m => table {
			s => s5;
			p => s6
		};
		f => table {
			s => s7;
			p => s8
		}
	}
};
};
mkFunc2: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Tam => Per => Case => Gen => Num => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120,s121,s122,s123,s124,s125,s126,s127,s128,s129,s130,s131,s132,s133,s134,s135,s136,s137,s138,s139,s140,s141,s142,s143,s144,s145,s146,s147,s148,s149,s150,s151,s152,s153,s154,s155,s156,s157,s158,s159,s160,s161,s162,s163,s164,s165,s166,s167,s168,s169,s170,s171,s172,s173,s174,s175,s176,s177,s178,s179,s180,s181,s182,s183,s184,s185,s186,s187,s188,s189,s190,s191,s192,s193,s194,s195,s196,s197,s198,s199,s200,s201,s202,s203,s204,s205,s206,s207,s208,s209,s210,s211,s212,s213,s214,s215,s216,s217,s218,s219,s220,s221,s222,s223,s224,s225,s226,s227,s228,s229,s230,s231,s232,s233,s234,s235,s236,s237,s238,s239,s240,s241,s242,s243,s244,s245,s246,s247,s248,s249,s250,s251,s252,s253,s254,s255,s256,s257,s258,s259,s260,s261,s262,s263,s264,s265,s266,s267,s268,s269,s270,s271,s272,s273,s274,s275,s276,s277,s278,s279,s280,s281,s282,s283,s284,s285,s286,s287,s288,s289,s290,s291,s292,s293,s294,s295,s296,s297,s298,s299,s300,s301,s302,s303,s304,s305,s306,s307,s308,s309,s310,s311,s312,s313,s314,s315,s316,s317,s318,s319,s320,s321,s322,s323,s324,s325,s326,s327,s328,s329,s330,s331,s332,s333,s334,s335,s336,s337,s338,s339,s340,s341,s342,s343,s344,s345,s346,s347,s348,s349,s350,s351,s352,s353,s354,s355,s356,s357,s358,s359,s360,s361,s362,s363,s364,s365,s366,s367,s368,s369,s370,s371,s372,s373,s374,s375,s376,s377,s378,s379,s380 -> {
s = table {
	adv_we_hue => table {
		u => table {
			_ => table {
				m => table {
					s => s1;
					p => s2
				};
				f => table {
					s => s3;
					p => s4
				}
			}
		};
		ma => table {
			_ => table {
				m => table {
					s => s5;
					p => s6
				};
				f => table {
					s => s7;
					p => s8
				}
			}
		};
		m_h0 => table {
			_ => table {
				m => table {
					s => s9;
					p => s10
				};
				f => table {
					s => s11;
					p => s12
				}
			}
		};
		m_h1 => table {
			_ => table {
				m => table {
					s => s13;
					p => s14
				};
				f => table {
					s => s15;
					p => s16
				}
			}
		};
		m_h2 => table {
			_ => table {
				m => table {
					s => s17;
					p => s18
				};
				f => table {
					s => s19;
					p => s20
				}
			}
		};
		m_h => table {
			_ => table {
				m => table {
					s => s21;
					p => s22
				};
				f => table {
					s => s23;
					p => s24
				}
			}
		};
		a => table {
			_ => table {
				m => table {
					s => s25;
					p => s26
				};
				f => table {
					s => s27;
					p => s28
				}
			}
		}
	};
	adj_wA_huA => table {
		_ => table {
			d => table {
				m => table {
					s => s29;
					p => s30
				};
				f => table {
					s => s31;
					p => s32
				}
			};
			o => table {
				m => table {
					s => s33;
					p => s34
				};
				f => table {
					s => s35;
					p => s36
				}
			}
		}
	};
	adj_yA_huA => table {
		_ => table {
			d => table {
				m => table {
					s => s37;
					p => s38
				};
				f => table {
					s => s39;
					p => s40
				}
			};
			o => table {
				m => table {
					s => s41;
					p => s42
				};
				f => table {
					s => s43;
					p => s44
				}
			}
		}
	};
	we_rahanA_hE => table {
		u => table {
			_ => table {
				m => table {
					s => s45;
					p => s46
				};
				f => table {
					s => s47;
					p => s48
				}
			}
		};
		ma => table {
			_ => table {
				m => table {
					s => s49;
					p => s50
				};
				f => table {
					s => s51;
					p => s52
				}
			}
		};
		m_h0 => table {
			_ => table {
				m => table {
					s => s53;
					p => s54
				};
				f => table {
					s => s55;
					p => s56
				}
			}
		};
		m_h1 => table {
			_ => table {
				m => table {
					s => s57;
					p => s58
				};
				f => table {
					s => s59;
					p => s60
				}
			}
		};
		m_h2 => table {
			_ => table {
				m => table {
					s => s61;
					p => s62
				};
				f => table {
					s => s63;
					p => s64
				}
			}
		};
		m_h => table {
			_ => table {
				m => table {
					s => s65;
					p => s66
				};
				f => table {
					s => s67;
					p => s68
				}
			}
		};
		a => table {
			_ => table {
				m => table {
					s => s69;
					p => s70
				};
				f => table {
					s => s71;
					p => s72
				}
			}
		}
	};
	imper => table {
		u => table {
			_ => table {
				m => table {
					s => s73;
					p => s74
				};
				f => table {
					s => s75;
					p => s76
				}
			}
		};
		ma => table {
			_ => table {
				m => table {
					s => s77;
					p => s78
				};
				f => table {
					s => s79;
					p => s80
				}
			}
		};
		m_h0 => table {
			_ => table {
				m => table {
					s => s81;
					p => s82
				};
				f => table {
					s => s83;
					p => s84
				}
			}
		};
		m_h1 => table {
			_ => table {
				m => table {
					s => s85;
					p => s86
				};
				f => table {
					s => s87;
					p => s88
				}
			}
		};
		m_h2 => table {
			_ => table {
				m => table {
					s => s89;
					p => s90
				};
				f => table {
					s => s91;
					p => s92
				}
			}
		};
		m_h => table {
			_ => table {
				m => table {
					s => s93;
					p => s94
				};
				f => table {
					s => s95;
					p => s96
				}
			}
		};
		a => table {
			_ => table {
				m => table {
					s => s97;
					p => s98
				};
				f => table {
					s => s99;
					p => s100
				}
			}
		}
	};
	subj => table {
		u => table {
			_ => table {
				m => table {
					s => s101;
					p => s102
				};
				f => table {
					s => s103;
					p => s104
				}
			}
		};
		ma => table {
			_ => table {
				m => table {
					s => s105;
					p => s106
				};
				f => table {
					s => s107;
					p => s108
				}
			}
		};
		m_h0 => table {
			_ => table {
				m => table {
					s => s109;
					p => s110
				};
				f => table {
					s => s111;
					p => s112
				}
			}
		};
		m_h1 => table {
			_ => table {
				m => table {
					s => s113;
					p => s114
				};
				f => table {
					s => s115;
					p => s116
				}
			}
		};
		m_h2 => table {
			_ => table {
				m => table {
					s => s117;
					p => s118
				};
				f => table {
					s => s119;
					p => s120
				}
			}
		};
		m_h => table {
			_ => table {
				m => table {
					s => s121;
					p => s122
				};
				f => table {
					s => s123;
					p => s124
				}
			}
		};
		a => table {
			_ => table {
				m => table {
					s => s125;
					p => s126
				};
				f => table {
					s => s127;
					p => s128
				}
			}
		}
	};
	nA => table {
		u => table {
			_ => table {
				m => table {
					s => s129;
					p => s130
				};
				f => table {
					s => s131;
					p => s132
				}
			}
		};
		ma => table {
			_ => table {
				m => table {
					s => s133;
					p => s134
				};
				f => table {
					s => s135;
					p => s136
				}
			}
		};
		m_h0 => table {
			_ => table {
				m => table {
					s => s137;
					p => s138
				};
				f => table {
					s => s139;
					p => s140
				}
			}
		};
		m_h1 => table {
			_ => table {
				m => table {
					s => s141;
					p => s142
				};
				f => table {
					s => s143;
					p => s144
				}
			}
		};
		m_h2 => table {
			_ => table {
				m => table {
					s => s145;
					p => s146
				};
				f => table {
					s => s147;
					p => s148
				}
			}
		};
		m_h => table {
			_ => table {
				m => table {
					s => s149;
					p => s150
				};
				f => table {
					s => s151;
					p => s152
				}
			}
		};
		a => table {
			_ => table {
				m => table {
					s => s153;
					p => s154
				};
				f => table {
					s => s155;
					p => s156
				}
			}
		}
	};
	wA => table {
		u => table {
			_ => table {
				m => table {
					s => s157;
					p => s158
				};
				f => table {
					s => s159;
					p => s160
				}
			}
		};
		ma => table {
			_ => table {
				m => table {
					s => s161;
					p => s162
				};
				f => table {
					s => s163;
					p => s164
				}
			}
		};
		m_h0 => table {
			_ => table {
				m => table {
					s => s165;
					p => s166
				};
				f => table {
					s => s167;
					p => s168
				}
			}
		};
		m_h1 => table {
			_ => table {
				m => table {
					s => s169;
					p => s170
				};
				f => table {
					s => s171;
					p => s172
				}
			}
		};
		m_h2 => table {
			_ => table {
				m => table {
					s => s173;
					p => s174
				};
				f => table {
					s => s175;
					p => s176
				}
			}
		};
		m_h => table {
			_ => table {
				m => table {
					s => s177;
					p => s178
				};
				f => table {
					s => s179;
					p => s180
				}
			}
		};
		a => table {
			_ => table {
				m => table {
					s => s181;
					p => s182
				};
				f => table {
					s => s183;
					p => s184
				}
			}
		}
	};
	yA => table {
		u => table {
			_ => table {
				m => table {
					s => s185;
					p => s186
				};
				f => table {
					s => s187;
					p => s188
				}
			}
		};
		ma => table {
			_ => table {
				m => table {
					s => s189;
					p => s190
				};
				f => table {
					s => s191;
					p => s192
				}
			}
		};
		m_h0 => table {
			_ => table {
				m => table {
					s => s193;
					p => s194
				};
				f => table {
					s => s195;
					p => s196
				}
			}
		};
		m_h1 => table {
			_ => table {
				m => table {
					s => s197;
					p => s198
				};
				f => table {
					s => s199;
					p => s200
				}
			}
		};
		m_h2 => table {
			_ => table {
				m => table {
					s => s201;
					p => s202
				};
				f => table {
					s => s203;
					p => s204
				}
			}
		};
		m_h => table {
			_ => table {
				m => table {
					s => s205;
					p => s206
				};
				f => table {
					s => s207;
					p => s208
				}
			}
		};
		a => table {
			_ => table {
				m => table {
					s => s209;
					p => s210
				};
				f => table {
					s => s211;
					p => s212
				}
			}
		}
	};
	yA1 => table {
		u => table {
			_ => table {
				m => table {
					s => s213;
					p => s214
				};
				f => table {
					s => s215;
					p => s216
				}
			}
		};
		ma => table {
			_ => table {
				m => table {
					s => s217;
					p => s218
				};
				f => table {
					s => s219;
					p => s220
				}
			}
		};
		m_h0 => table {
			_ => table {
				m => table {
					s => s221;
					p => s222
				};
				f => table {
					s => s223;
					p => s224
				}
			}
		};
		m_h1 => table {
			_ => table {
				m => table {
					s => s225;
					p => s226
				};
				f => table {
					s => s227;
					p => s228
				}
			}
		};
		m_h2 => table {
			_ => table {
				m => table {
					s => s229;
					p => s230
				};
				f => table {
					s => s231;
					p => s232
				}
			}
		};
		m_h => table {
			_ => table {
				m => table {
					s => s233;
					p => s234
				};
				f => table {
					s => s235;
					p => s236
				}
			}
		};
		a => table {
			_ => table {
				m => table {
					s => s237;
					p => s238
				};
				f => table {
					s => s239;
					p => s240
				}
			}
		}
	};
	kara => table {
		u => table {
			_ => table {
				m => table {
					s => s241;
					p => s242
				};
				f => table {
					s => s243;
					p => s244
				}
			}
		};
		ma => table {
			_ => table {
				m => table {
					s => s245;
					p => s246
				};
				f => table {
					s => s247;
					p => s248
				}
			}
		};
		m_h0 => table {
			_ => table {
				m => table {
					s => s249;
					p => s250
				};
				f => table {
					s => s251;
					p => s252
				}
			}
		};
		m_h1 => table {
			_ => table {
				m => table {
					s => s253;
					p => s254
				};
				f => table {
					s => s255;
					p => s256
				}
			}
		};
		m_h2 => table {
			_ => table {
				m => table {
					s => s257;
					p => s258
				};
				f => table {
					s => s259;
					p => s260
				}
			}
		};
		m_h => table {
			_ => table {
				m => table {
					s => s261;
					p => s262
				};
				f => table {
					s => s263;
					p => s264
				}
			}
		};
		a => table {
			_ => table {
				m => table {
					s => s265;
					p => s266
				};
				f => table {
					s => s267;
					p => s268
				}
			}
		}
	};
	gA => table {
		u => table {
			_ => table {
				m => table {
					s => s269;
					p => s270
				};
				f => table {
					s => s271;
					p => s272
				}
			}
		};
		ma => table {
			_ => table {
				m => table {
					s => s273;
					p => s274
				};
				f => table {
					s => s275;
					p => s276
				}
			}
		};
		m_h0 => table {
			_ => table {
				m => table {
					s => s277;
					p => s278
				};
				f => table {
					s => s279;
					p => s280
				}
			}
		};
		m_h1 => table {
			_ => table {
				m => table {
					s => s281;
					p => s282
				};
				f => table {
					s => s283;
					p => s284
				}
			}
		};
		m_h2 => table {
			_ => table {
				m => table {
					s => s285;
					p => s286
				};
				f => table {
					s => s287;
					p => s288
				}
			}
		};
		m_h => table {
			_ => table {
				m => table {
					s => s289;
					p => s290
				};
				f => table {
					s => s291;
					p => s292
				}
			}
		};
		a => table {
			_ => table {
				m => table {
					s => s293;
					p => s294
				};
				f => table {
					s => s295;
					p => s296
				}
			}
		}
	};
	hE => table {
		u => table {
			_ => table {
				m => table {
					s => s297;
					p => s298
				};
				f => table {
					s => s299;
					p => s300
				}
			}
		};
		ma => table {
			_ => table {
				m => table {
					s => s301;
					p => s302
				};
				f => table {
					s => s303;
					p => s304
				}
			}
		};
		m_h0 => table {
			_ => table {
				m => table {
					s => s305;
					p => s306
				};
				f => table {
					s => s307;
					p => s308
				}
			}
		};
		m_h1 => table {
			_ => table {
				m => table {
					s => s309;
					p => s310
				};
				f => table {
					s => s311;
					p => s312
				}
			}
		};
		m_h2 => table {
			_ => table {
				m => table {
					s => s313;
					p => s314
				};
				f => table {
					s => s315;
					p => s316
				}
			}
		};
		m_h => table {
			_ => table {
				m => table {
					s => s317;
					p => s318
				};
				f => table {
					s => s319;
					p => s320
				}
			}
		};
		a => table {
			_ => table {
				m => table {
					s => s321;
					p => s322
				};
				f => table {
					s => s323;
					p => s324
				}
			}
		}
	};
	WA => table {
		u => table {
			_ => table {
				m => table {
					s => s325;
					p => s326
				};
				f => table {
					s => s327;
					p => s328
				}
			}
		};
		ma => table {
			_ => table {
				m => table {
					s => s329;
					p => s330
				};
				f => table {
					s => s331;
					p => s332
				}
			}
		};
		m_h0 => table {
			_ => table {
				m => table {
					s => s333;
					p => s334
				};
				f => table {
					s => s335;
					p => s336
				}
			}
		};
		m_h1 => table {
			_ => table {
				m => table {
					s => s337;
					p => s338
				};
				f => table {
					s => s339;
					p => s340
				}
			}
		};
		m_h2 => table {
			_ => table {
				m => table {
					s => s341;
					p => s342
				};
				f => table {
					s => s343;
					p => s344
				}
			}
		};
		m_h => table {
			_ => table {
				m => table {
					s => s345;
					p => s346
				};
				f => table {
					s => s347;
					p => s348
				}
			}
		};
		a => table {
			_ => table {
				m => table {
					s => s349;
					p => s350
				};
				f => table {
					s => s351;
					p => s352
				}
			}
		}
	};
	zero => table {
		u => table {
			_ => table {
				m => table {
					s => s353;
					p => s354
				};
				f => table {
					s => s355;
					p => s356
				}
			}
		};
		ma => table {
			_ => table {
				m => table {
					s => s357;
					p => s358
				};
				f => table {
					s => s359;
					p => s360
				}
			}
		};
		m_h0 => table {
			_ => table {
				m => table {
					s => s361;
					p => s362
				};
				f => table {
					s => s363;
					p => s364
				}
			}
		};
		m_h1 => table {
			_ => table {
				m => table {
					s => s365;
					p => s366
				};
				f => table {
					s => s367;
					p => s368
				}
			}
		};
		m_h2 => table {
			_ => table {
				m => table {
					s => s369;
					p => s370
				};
				f => table {
					s => s371;
					p => s372
				}
			}
		};
		m_h => table {
			_ => table {
				m => table {
					s => s373;
					p => s374
				};
				f => table {
					s => s375;
					p => s376
				}
			}
		};
		a => table {
			_ => table {
				m => table {
					s => s377;
					p => s378
				};
				f => table {
					s => s379;
					p => s380
				}
			}
		}
	}
};
};
mkFunc3: Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> Str -> { s : Tam => Parsarg => Fnum => Per => Case => Gen => Num => Str }  = 
\s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120,s121,s122,s123,s124,s125,s126,s127,s128,s129,s130,s131,s132,s133,s134,s135,s136,s137,s138,s139,s140,s141,s142,s143,s144,s145,s146,s147,s148,s149,s150,s151,s152,s153,s154,s155,s156,s157,s158,s159,s160,s161,s162,s163,s164,s165,s166,s167,s168,s169,s170,s171,s172,s173,s174,s175,s176,s177,s178,s179,s180,s181,s182,s183,s184,s185,s186,s187,s188,s189,s190,s191,s192,s193,s194,s195,s196,s197,s198,s199,s200,s201,s202,s203,s204,s205,s206,s207,s208,s209,s210,s211,s212,s213,s214,s215,s216,s217,s218,s219,s220,s221,s222,s223,s224,s225,s226,s227,s228,s229,s230,s231,s232,s233,s234,s235,s236,s237,s238,s239,s240,s241,s242,s243,s244,s245,s246,s247,s248,s249,s250,s251,s252,s253,s254,s255,s256,s257,s258,s259,s260,s261,s262,s263,s264,s265,s266,s267,s268,s269,s270,s271,s272,s273,s274,s275,s276,s277,s278,s279,s280,s281,s282,s283,s284,s285,s286,s287,s288,s289,s290,s291,s292,s293,s294,s295,s296,s297,s298,s299,s300,s301,s302,s303,s304,s305,s306,s307,s308,s309,s310,s311,s312,s313,s314,s315,s316,s317,s318,s319,s320,s321,s322,s323,s324,s325,s326,s327,s328,s329,s330,s331,s332,s333,s334,s335,s336,s337,s338,s339,s340,s341,s342,s343,s344,s345,s346,s347,s348,s349,s350,s351,s352,s353,s354,s355,s356,s357,s358,s359,s360,s361,s362,s363,s364,s365,s366,s367,s368,s369,s370,s371,s372,s373,s374,s375,s376,s377,s378,s379,s380,s381,s382,s383,s384,s385,s386,s387,s388,s389,s390,s391,s392,s393,s394,s395,s396,s397,s398,s399,s400,s401,s402,s403,s404,s405,s406,s407,s408,s409,s410,s411,s412,s413,s414,s415,s416,s417,s418,s419,s420,s421,s422,s423,s424,s425,s426,s427,s428,s429,s430,s431,s432,s433,s434,s435,s436,s437,s438,s439,s440,s441,s442,s443,s444,s445,s446,s447,s448,s449,s450,s451,s452,s453,s454,s455,s456,s457,s458,s459,s460,s461,s462,s463,s464,s465,s466,s467,s468,s469,s470,s471,s472,s473,s474,s475,s476,s477,s478,s479,s480,s481,s482,s483,s484,s485,s486,s487,s488,s489,s490,s491,s492,s493,s494,s495,s496,s497,s498,s499,s500,s501,s502,s503,s504,s505,s506,s507,s508,s509,s510,s511,s512,s513,s514,s515,s516,s517,s518,s519,s520,s521,s522,s523,s524,s525,s526,s527,s528,s529,s530,s531,s532,s533,s534,s535,s536,s537,s538,s539,s540,s541,s542,s543,s544,s545,s546,s547,s548,s549,s550,s551,s552,s553,s554,s555,s556,s557,s558,s559,s560,s561,s562,s563,s564,s565,s566,s567,s568,s569,s570,s571,s572,s573,s574,s575,s576,s577,s578,s579,s580,s581,s582,s583,s584,s585,s586,s587,s588,s589,s590,s591,s592,s593,s594,s595,s596,s597,s598,s599,s600,s601,s602,s603,s604,s605,s606,s607,s608,s609,s610,s611,s612,s613,s614,s615,s616,s617,s618,s619,s620,s621,s622,s623,s624,s625,s626,s627,s628,s629,s630,s631,s632,s633,s634,s635,s636,s637,s638,s639,s640,s641,s642,s643,s644,s645,s646,s647,s648,s649,s650,s651,s652,s653,s654,s655,s656,s657,s658,s659,s660,s661,s662,s663,s664,s665,s666,s667,s668,s669,s670,s671,s672 -> {
s = table {
	zero => table {
		_ => table {
			_ => table {
				u => table {
					d => table {
						m => table {
							s => s1;
							p => s2
						};
						f => table {
							s => s3;
							p => s4
						}
					};
					o => table {
						m => table {
							s => s5;
							p => s6
						};
						f => table {
							s => s7;
							p => s8
						}
					}
				};
				ma => table {
					d => table {
						m => table {
							s => s9;
							p => s10
						};
						f => table {
							s => s11;
							p => s12
						}
					};
					o => table {
						m => table {
							s => s13;
							p => s14
						};
						f => table {
							s => s15;
							p => s16
						}
					}
				};
				m_h0 => table {
					d => table {
						m => table {
							s => s17;
							p => s18
						};
						f => table {
							s => s19;
							p => s20
						}
					};
					o => table {
						m => table {
							s => s21;
							p => s22
						};
						f => table {
							s => s23;
							p => s24
						}
					}
				};
				m_h1 => table {
					d => table {
						m => table {
							s => s25;
							p => s26
						};
						f => table {
							s => s27;
							p => s28
						}
					};
					o => table {
						m => table {
							s => s29;
							p => s30
						};
						f => table {
							s => s31;
							p => s32
						}
					}
				};
				m_h2 => table {
					d => table {
						m => table {
							s => s33;
							p => s34
						};
						f => table {
							s => s35;
							p => s36
						}
					};
					o => table {
						m => table {
							s => s37;
							p => s38
						};
						f => table {
							s => s39;
							p => s40
						}
					}
				};
				m_h => table {
					d => table {
						m => table {
							s => s41;
							p => s42
						};
						f => table {
							s => s43;
							p => s44
						}
					};
					o => table {
						m => table {
							s => s45;
							p => s46
						};
						f => table {
							s => s47;
							p => s48
						}
					}
				};
				a => table {
					d => table {
						m => table {
							s => s49;
							p => s50
						};
						f => table {
							s => s51;
							p => s52
						}
					};
					o => table {
						m => table {
							s => s53;
							p => s54
						};
						f => table {
							s => s55;
							p => s56
						}
					}
				}
			}
		}
	};
	_ => table {
		zero1 => table {
			_ => table {
				u => table {
					d => table {
						m => table {
							s => s57;
							p => s58
						};
						f => table {
							s => s59;
							p => s60
						}
					};
					o => table {
						m => table {
							s => s61;
							p => s62
						};
						f => table {
							s => s63;
							p => s64
						}
					}
				};
				ma => table {
					d => table {
						m => table {
							s => s65;
							p => s66
						};
						f => table {
							s => s67;
							p => s68
						}
					};
					o => table {
						m => table {
							s => s69;
							p => s70
						};
						f => table {
							s => s71;
							p => s72
						}
					}
				};
				m_h0 => table {
					d => table {
						m => table {
							s => s73;
							p => s74
						};
						f => table {
							s => s75;
							p => s76
						}
					};
					o => table {
						m => table {
							s => s77;
							p => s78
						};
						f => table {
							s => s79;
							p => s80
						}
					}
				};
				m_h1 => table {
					d => table {
						m => table {
							s => s81;
							p => s82
						};
						f => table {
							s => s83;
							p => s84
						}
					};
					o => table {
						m => table {
							s => s85;
							p => s86
						};
						f => table {
							s => s87;
							p => s88
						}
					}
				};
				m_h2 => table {
					d => table {
						m => table {
							s => s89;
							p => s90
						};
						f => table {
							s => s91;
							p => s92
						}
					};
					o => table {
						m => table {
							s => s93;
							p => s94
						};
						f => table {
							s => s95;
							p => s96
						}
					}
				};
				m_h => table {
					d => table {
						m => table {
							s => s97;
							p => s98
						};
						f => table {
							s => s99;
							p => s100
						}
					};
					o => table {
						m => table {
							s => s101;
							p => s102
						};
						f => table {
							s => s103;
							p => s104
						}
					}
				};
				a => table {
					d => table {
						m => table {
							s => s105;
							p => s106
						};
						f => table {
							s => s107;
							p => s108
						}
					};
					o => table {
						m => table {
							s => s109;
							p => s110
						};
						f => table {
							s => s111;
							p => s112
						}
					}
				}
			}
		};
		ne => table {
			_ => table {
				u => table {
					d => table {
						m => table {
							s => s113;
							p => s114
						};
						f => table {
							s => s115;
							p => s116
						}
					};
					o => table {
						m => table {
							s => s117;
							p => s118
						};
						f => table {
							s => s119;
							p => s120
						}
					}
				};
				ma => table {
					d => table {
						m => table {
							s => s121;
							p => s122
						};
						f => table {
							s => s123;
							p => s124
						}
					};
					o => table {
						m => table {
							s => s125;
							p => s126
						};
						f => table {
							s => s127;
							p => s128
						}
					}
				};
				m_h0 => table {
					d => table {
						m => table {
							s => s129;
							p => s130
						};
						f => table {
							s => s131;
							p => s132
						}
					};
					o => table {
						m => table {
							s => s133;
							p => s134
						};
						f => table {
							s => s135;
							p => s136
						}
					}
				};
				m_h1 => table {
					d => table {
						m => table {
							s => s137;
							p => s138
						};
						f => table {
							s => s139;
							p => s140
						}
					};
					o => table {
						m => table {
							s => s141;
							p => s142
						};
						f => table {
							s => s143;
							p => s144
						}
					}
				};
				m_h2 => table {
					d => table {
						m => table {
							s => s145;
							p => s146
						};
						f => table {
							s => s147;
							p => s148
						}
					};
					o => table {
						m => table {
							s => s149;
							p => s150
						};
						f => table {
							s => s151;
							p => s152
						}
					}
				};
				m_h => table {
					d => table {
						m => table {
							s => s153;
							p => s154
						};
						f => table {
							s => s155;
							p => s156
						}
					};
					o => table {
						m => table {
							s => s157;
							p => s158
						};
						f => table {
							s => s159;
							p => s160
						}
					}
				};
				a => table {
					d => table {
						m => table {
							s => s161;
							p => s162
						};
						f => table {
							s => s163;
							p => s164
						}
					};
					o => table {
						m => table {
							s => s165;
							p => s166
						};
						f => table {
							s => s167;
							p => s168
						}
					}
				}
			}
		};
		ko => table {
			_ => table {
				u => table {
					d => table {
						m => table {
							s => s169;
							p => s170
						};
						f => table {
							s => s171;
							p => s172
						}
					};
					o => table {
						m => table {
							s => s173;
							p => s174
						};
						f => table {
							s => s175;
							p => s176
						}
					}
				};
				ma => table {
					d => table {
						m => table {
							s => s177;
							p => s178
						};
						f => table {
							s => s179;
							p => s180
						}
					};
					o => table {
						m => table {
							s => s181;
							p => s182
						};
						f => table {
							s => s183;
							p => s184
						}
					}
				};
				m_h0 => table {
					d => table {
						m => table {
							s => s185;
							p => s186
						};
						f => table {
							s => s187;
							p => s188
						}
					};
					o => table {
						m => table {
							s => s189;
							p => s190
						};
						f => table {
							s => s191;
							p => s192
						}
					}
				};
				m_h1 => table {
					d => table {
						m => table {
							s => s193;
							p => s194
						};
						f => table {
							s => s195;
							p => s196
						}
					};
					o => table {
						m => table {
							s => s197;
							p => s198
						};
						f => table {
							s => s199;
							p => s200
						}
					}
				};
				m_h2 => table {
					d => table {
						m => table {
							s => s201;
							p => s202
						};
						f => table {
							s => s203;
							p => s204
						}
					};
					o => table {
						m => table {
							s => s205;
							p => s206
						};
						f => table {
							s => s207;
							p => s208
						}
					}
				};
				m_h => table {
					d => table {
						m => table {
							s => s209;
							p => s210
						};
						f => table {
							s => s211;
							p => s212
						}
					};
					o => table {
						m => table {
							s => s213;
							p => s214
						};
						f => table {
							s => s215;
							p => s216
						}
					}
				};
				a => table {
					d => table {
						m => table {
							s => s217;
							p => s218
						};
						f => table {
							s => s219;
							p => s220
						}
					};
					o => table {
						m => table {
							s => s221;
							p => s222
						};
						f => table {
							s => s223;
							p => s224
						}
					}
				}
			}
		};
		se => table {
			_ => table {
				u => table {
					d => table {
						m => table {
							s => s225;
							p => s226
						};
						f => table {
							s => s227;
							p => s228
						}
					};
					o => table {
						m => table {
							s => s229;
							p => s230
						};
						f => table {
							s => s231;
							p => s232
						}
					}
				};
				ma => table {
					d => table {
						m => table {
							s => s233;
							p => s234
						};
						f => table {
							s => s235;
							p => s236
						}
					};
					o => table {
						m => table {
							s => s237;
							p => s238
						};
						f => table {
							s => s239;
							p => s240
						}
					}
				};
				m_h0 => table {
					d => table {
						m => table {
							s => s241;
							p => s242
						};
						f => table {
							s => s243;
							p => s244
						}
					};
					o => table {
						m => table {
							s => s245;
							p => s246
						};
						f => table {
							s => s247;
							p => s248
						}
					}
				};
				m_h1 => table {
					d => table {
						m => table {
							s => s249;
							p => s250
						};
						f => table {
							s => s251;
							p => s252
						}
					};
					o => table {
						m => table {
							s => s253;
							p => s254
						};
						f => table {
							s => s255;
							p => s256
						}
					}
				};
				m_h2 => table {
					d => table {
						m => table {
							s => s257;
							p => s258
						};
						f => table {
							s => s259;
							p => s260
						}
					};
					o => table {
						m => table {
							s => s261;
							p => s262
						};
						f => table {
							s => s263;
							p => s264
						}
					}
				};
				m_h => table {
					d => table {
						m => table {
							s => s265;
							p => s266
						};
						f => table {
							s => s267;
							p => s268
						}
					};
					o => table {
						m => table {
							s => s269;
							p => s270
						};
						f => table {
							s => s271;
							p => s272
						}
					}
				};
				a => table {
					d => table {
						m => table {
							s => s273;
							p => s274
						};
						f => table {
							s => s275;
							p => s276
						}
					};
					o => table {
						m => table {
							s => s277;
							p => s278
						};
						f => table {
							s => s279;
							p => s280
						}
					}
				}
			}
		};
		ke => table {
			_ => table {
				u => table {
					d => table {
						m => table {
							s => s281;
							p => s282
						};
						f => table {
							s => s283;
							p => s284
						}
					};
					o => table {
						m => table {
							s => s285;
							p => s286
						};
						f => table {
							s => s287;
							p => s288
						}
					}
				};
				ma => table {
					d => table {
						m => table {
							s => s289;
							p => s290
						};
						f => table {
							s => s291;
							p => s292
						}
					};
					o => table {
						m => table {
							s => s293;
							p => s294
						};
						f => table {
							s => s295;
							p => s296
						}
					}
				};
				m_h0 => table {
					d => table {
						m => table {
							s => s297;
							p => s298
						};
						f => table {
							s => s299;
							p => s300
						}
					};
					o => table {
						m => table {
							s => s301;
							p => s302
						};
						f => table {
							s => s303;
							p => s304
						}
					}
				};
				m_h1 => table {
					d => table {
						m => table {
							s => s305;
							p => s306
						};
						f => table {
							s => s307;
							p => s308
						}
					};
					o => table {
						m => table {
							s => s309;
							p => s310
						};
						f => table {
							s => s311;
							p => s312
						}
					}
				};
				m_h2 => table {
					d => table {
						m => table {
							s => s313;
							p => s314
						};
						f => table {
							s => s315;
							p => s316
						}
					};
					o => table {
						m => table {
							s => s317;
							p => s318
						};
						f => table {
							s => s319;
							p => s320
						}
					}
				};
				m_h => table {
					d => table {
						m => table {
							s => s321;
							p => s322
						};
						f => table {
							s => s323;
							p => s324
						}
					};
					o => table {
						m => table {
							s => s325;
							p => s326
						};
						f => table {
							s => s327;
							p => s328
						}
					}
				};
				a => table {
					d => table {
						m => table {
							s => s329;
							p => s330
						};
						f => table {
							s => s331;
							p => s332
						}
					};
					o => table {
						m => table {
							s => s333;
							p => s334
						};
						f => table {
							s => s335;
							p => s336
						}
					}
				}
			}
		};
		meM => table {
			_ => table {
				u => table {
					d => table {
						m => table {
							s => s337;
							p => s338
						};
						f => table {
							s => s339;
							p => s340
						}
					};
					o => table {
						m => table {
							s => s341;
							p => s342
						};
						f => table {
							s => s343;
							p => s344
						}
					}
				};
				ma => table {
					d => table {
						m => table {
							s => s345;
							p => s346
						};
						f => table {
							s => s347;
							p => s348
						}
					};
					o => table {
						m => table {
							s => s349;
							p => s350
						};
						f => table {
							s => s351;
							p => s352
						}
					}
				};
				m_h0 => table {
					d => table {
						m => table {
							s => s353;
							p => s354
						};
						f => table {
							s => s355;
							p => s356
						}
					};
					o => table {
						m => table {
							s => s357;
							p => s358
						};
						f => table {
							s => s359;
							p => s360
						}
					}
				};
				m_h1 => table {
					d => table {
						m => table {
							s => s361;
							p => s362
						};
						f => table {
							s => s363;
							p => s364
						}
					};
					o => table {
						m => table {
							s => s365;
							p => s366
						};
						f => table {
							s => s367;
							p => s368
						}
					}
				};
				m_h2 => table {
					d => table {
						m => table {
							s => s369;
							p => s370
						};
						f => table {
							s => s371;
							p => s372
						}
					};
					o => table {
						m => table {
							s => s373;
							p => s374
						};
						f => table {
							s => s375;
							p => s376
						}
					}
				};
				m_h => table {
					d => table {
						m => table {
							s => s377;
							p => s378
						};
						f => table {
							s => s379;
							p => s380
						}
					};
					o => table {
						m => table {
							s => s381;
							p => s382
						};
						f => table {
							s => s383;
							p => s384
						}
					}
				};
				a => table {
					d => table {
						m => table {
							s => s385;
							p => s386
						};
						f => table {
							s => s387;
							p => s388
						}
					};
					o => table {
						m => table {
							s => s389;
							p => s390
						};
						f => table {
							s => s391;
							p => s392
						}
					}
				}
			}
		};
		meM_se => table {
			_ => table {
				u => table {
					d => table {
						m => table {
							s => s393;
							p => s394
						};
						f => table {
							s => s395;
							p => s396
						}
					};
					o => table {
						m => table {
							s => s397;
							p => s398
						};
						f => table {
							s => s399;
							p => s400
						}
					}
				};
				ma => table {
					d => table {
						m => table {
							s => s401;
							p => s402
						};
						f => table {
							s => s403;
							p => s404
						}
					};
					o => table {
						m => table {
							s => s405;
							p => s406
						};
						f => table {
							s => s407;
							p => s408
						}
					}
				};
				m_h0 => table {
					d => table {
						m => table {
							s => s409;
							p => s410
						};
						f => table {
							s => s411;
							p => s412
						}
					};
					o => table {
						m => table {
							s => s413;
							p => s414
						};
						f => table {
							s => s415;
							p => s416
						}
					}
				};
				m_h1 => table {
					d => table {
						m => table {
							s => s417;
							p => s418
						};
						f => table {
							s => s419;
							p => s420
						}
					};
					o => table {
						m => table {
							s => s421;
							p => s422
						};
						f => table {
							s => s423;
							p => s424
						}
					}
				};
				m_h2 => table {
					d => table {
						m => table {
							s => s425;
							p => s426
						};
						f => table {
							s => s427;
							p => s428
						}
					};
					o => table {
						m => table {
							s => s429;
							p => s430
						};
						f => table {
							s => s431;
							p => s432
						}
					}
				};
				m_h => table {
					d => table {
						m => table {
							s => s433;
							p => s434
						};
						f => table {
							s => s435;
							p => s436
						}
					};
					o => table {
						m => table {
							s => s437;
							p => s438
						};
						f => table {
							s => s439;
							p => s440
						}
					}
				};
				a => table {
					d => table {
						m => table {
							s => s441;
							p => s442
						};
						f => table {
							s => s443;
							p => s444
						}
					};
					o => table {
						m => table {
							s => s445;
							p => s446
						};
						f => table {
							s => s447;
							p => s448
						}
					}
				}
			}
		};
		kA => table {
			fs => table {
				u => table {
					d => table {
						m => table {
							s => s449;
							p => s450
						};
						f => table {
							s => s451;
							p => s452
						}
					};
					o => table {
						m => table {
							s => s453;
							p => s454
						};
						f => table {
							s => s455;
							p => s456
						}
					}
				};
				ma => table {
					d => table {
						m => table {
							s => s457;
							p => s458
						};
						f => table {
							s => s459;
							p => s460
						}
					};
					o => table {
						m => table {
							s => s461;
							p => s462
						};
						f => table {
							s => s463;
							p => s464
						}
					}
				};
				m_h0 => table {
					d => table {
						m => table {
							s => s465;
							p => s466
						};
						f => table {
							s => s467;
							p => s468
						}
					};
					o => table {
						m => table {
							s => s469;
							p => s470
						};
						f => table {
							s => s471;
							p => s472
						}
					}
				};
				m_h1 => table {
					d => table {
						m => table {
							s => s473;
							p => s474
						};
						f => table {
							s => s475;
							p => s476
						}
					};
					o => table {
						m => table {
							s => s477;
							p => s478
						};
						f => table {
							s => s479;
							p => s480
						}
					}
				};
				m_h2 => table {
					d => table {
						m => table {
							s => s481;
							p => s482
						};
						f => table {
							s => s483;
							p => s484
						}
					};
					o => table {
						m => table {
							s => s485;
							p => s486
						};
						f => table {
							s => s487;
							p => s488
						}
					}
				};
				m_h => table {
					d => table {
						m => table {
							s => s489;
							p => s490
						};
						f => table {
							s => s491;
							p => s492
						}
					};
					o => table {
						m => table {
							s => s493;
							p => s494
						};
						f => table {
							s => s495;
							p => s496
						}
					}
				};
				a => table {
					d => table {
						m => table {
							s => s497;
							p => s498
						};
						f => table {
							s => s499;
							p => s500
						}
					};
					o => table {
						m => table {
							s => s501;
							p => s502
						};
						f => table {
							s => s503;
							p => s504
						}
					}
				}
			};
			fp => table {
				u => table {
					d => table {
						m => table {
							s => s505;
							p => s506
						};
						f => table {
							s => s507;
							p => s508
						}
					};
					o => table {
						m => table {
							s => s509;
							p => s510
						};
						f => table {
							s => s511;
							p => s512
						}
					}
				};
				ma => table {
					d => table {
						m => table {
							s => s513;
							p => s514
						};
						f => table {
							s => s515;
							p => s516
						}
					};
					o => table {
						m => table {
							s => s517;
							p => s518
						};
						f => table {
							s => s519;
							p => s520
						}
					}
				};
				m_h0 => table {
					d => table {
						m => table {
							s => s521;
							p => s522
						};
						f => table {
							s => s523;
							p => s524
						}
					};
					o => table {
						m => table {
							s => s525;
							p => s526
						};
						f => table {
							s => s527;
							p => s528
						}
					}
				};
				m_h1 => table {
					d => table {
						m => table {
							s => s529;
							p => s530
						};
						f => table {
							s => s531;
							p => s532
						}
					};
					o => table {
						m => table {
							s => s533;
							p => s534
						};
						f => table {
							s => s535;
							p => s536
						}
					}
				};
				m_h2 => table {
					d => table {
						m => table {
							s => s537;
							p => s538
						};
						f => table {
							s => s539;
							p => s540
						}
					};
					o => table {
						m => table {
							s => s541;
							p => s542
						};
						f => table {
							s => s543;
							p => s544
						}
					}
				};
				m_h => table {
					d => table {
						m => table {
							s => s545;
							p => s546
						};
						f => table {
							s => s547;
							p => s548
						}
					};
					o => table {
						m => table {
							s => s549;
							p => s550
						};
						f => table {
							s => s551;
							p => s552
						}
					}
				};
				a => table {
					d => table {
						m => table {
							s => s553;
							p => s554
						};
						f => table {
							s => s555;
							p => s556
						}
					};
					o => table {
						m => table {
							s => s557;
							p => s558
						};
						f => table {
							s => s559;
							p => s560
						}
					}
				}
			}
		};
		kI => table {
			_ => table {
				u => table {
					d => table {
						m => table {
							s => s561;
							p => s562
						};
						f => table {
							s => s563;
							p => s564
						}
					};
					o => table {
						m => table {
							s => s565;
							p => s566
						};
						f => table {
							s => s567;
							p => s568
						}
					}
				};
				ma => table {
					d => table {
						m => table {
							s => s569;
							p => s570
						};
						f => table {
							s => s571;
							p => s572
						}
					};
					o => table {
						m => table {
							s => s573;
							p => s574
						};
						f => table {
							s => s575;
							p => s576
						}
					}
				};
				m_h0 => table {
					d => table {
						m => table {
							s => s577;
							p => s578
						};
						f => table {
							s => s579;
							p => s580
						}
					};
					o => table {
						m => table {
							s => s581;
							p => s582
						};
						f => table {
							s => s583;
							p => s584
						}
					}
				};
				m_h1 => table {
					d => table {
						m => table {
							s => s585;
							p => s586
						};
						f => table {
							s => s587;
							p => s588
						}
					};
					o => table {
						m => table {
							s => s589;
							p => s590
						};
						f => table {
							s => s591;
							p => s592
						}
					}
				};
				m_h2 => table {
					d => table {
						m => table {
							s => s593;
							p => s594
						};
						f => table {
							s => s595;
							p => s596
						}
					};
					o => table {
						m => table {
							s => s597;
							p => s598
						};
						f => table {
							s => s599;
							p => s600
						}
					}
				};
				m_h => table {
					d => table {
						m => table {
							s => s601;
							p => s602
						};
						f => table {
							s => s603;
							p => s604
						}
					};
					o => table {
						m => table {
							s => s605;
							p => s606
						};
						f => table {
							s => s607;
							p => s608
						}
					}
				};
				a => table {
					d => table {
						m => table {
							s => s609;
							p => s610
						};
						f => table {
							s => s611;
							p => s612
						}
					};
					o => table {
						m => table {
							s => s613;
							p => s614
						};
						f => table {
							s => s615;
							p => s616
						}
					}
				}
			}
		};
		para => table {
			_ => table {
				u => table {
					d => table {
						m => table {
							s => s617;
							p => s618
						};
						f => table {
							s => s619;
							p => s620
						}
					};
					o => table {
						m => table {
							s => s621;
							p => s622
						};
						f => table {
							s => s623;
							p => s624
						}
					}
				};
				ma => table {
					d => table {
						m => table {
							s => s625;
							p => s626
						};
						f => table {
							s => s627;
							p => s628
						}
					};
					o => table {
						m => table {
							s => s629;
							p => s630
						};
						f => table {
							s => s631;
							p => s632
						}
					}
				};
				m_h0 => table {
					d => table {
						m => table {
							s => s633;
							p => s634
						};
						f => table {
							s => s635;
							p => s636
						}
					};
					o => table {
						m => table {
							s => s637;
							p => s638
						};
						f => table {
							s => s639;
							p => s640
						}
					}
				};
				m_h1 => table {
					d => table {
						m => table {
							s => s641;
							p => s642
						};
						f => table {
							s => s643;
							p => s644
						}
					};
					o => table {
						m => table {
							s => s645;
							p => s646
						};
						f => table {
							s => s647;
							p => s648
						}
					}
				};
				m_h2 => table {
					d => table {
						m => table {
							s => s649;
							p => s650
						};
						f => table {
							s => s651;
							p => s652
						}
					};
					o => table {
						m => table {
							s => s653;
							p => s654
						};
						f => table {
							s => s655;
							p => s656
						}
					}
				};
				m_h => table {
					d => table {
						m => table {
							s => s657;
							p => s658
						};
						f => table {
							s => s659;
							p => s660
						}
					};
					o => table {
						m => table {
							s => s661;
							p => s662
						};
						f => table {
							s => s663;
							p => s664
						}
					}
				};
				a => table {
					d => table {
						m => table {
							s => s665;
							p => s666
						};
						f => table {
							s => s667;
							p => s668
						}
					};
					o => table {
						m => table {
							s => s669;
							p => s670
						};
						f => table {
							s => s671;
							p => s672
						}
					}
				}
			}
		}
	}
};
};



aneka_adj: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "a" => mkFunc1 (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a")
};
amIra_adj: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"")
};
bAlikA_adj: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 "--" "--" (var+"") (var+"") "--" "--" (var+"") (var+"")
};
bAlaka_adj: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 (var+"") (var+"") "--" "--" (var+"") (var+"") "--" "--"
};
ajAwI_adj: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 "--" "--" (var+"") (var+"") "--" "--" (var+"") (var+"")
};
kAlA_adj: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "A" => mkFunc1 (var+"A") (var+"e") (var+"I") (var+"I") (var+"e") (var+"e") (var+"I") (var+"I")
};
jyAxA_adj: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "A" => mkFunc1 (var+"A") (var+"A") (var+"A") (var+"A") (var+"A") (var+"A") (var+"A") (var+"A")
};
kAlA_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "A" => mkFunc1 (var+"A") (var+"e") (var+"I") (var+"I") (var+"e") (var+"oM") (var+"I") (var+"iyoM")
};
rAwa_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "a" => mkFunc1 "--" "--" (var+"a") (var+"eM") "--" "--" (var+"a") (var+"oM")
};
BIda_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 "--" "--" (var+"") (var+"") "--" "--" (var+"") (var+"")
};
ASA_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 "--" "--" (var+"") (var+"ez") "--" "--" (var+"") (var+"oM")
};
gudiyA_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "A" => mkFunc1 "--" "--" (var+"A") (var+"Az") "--" "--" (var+"A") (var+"oM")
};
IrRyA_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 "--" "--" (var+"") (var+"") "--" "--" (var+"") (var+"")
};
Apawwi_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 "--" "--" (var+"") (var+"yAz") "--" "--" (var+"") (var+"yoM")
};
SAnwi_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 "--" "--" (var+"") (var+"") "--" "--" (var+"") (var+"")
};
ladakI_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "I" => mkFunc1 "--" "--" (var+"I") (var+"iyAz") "--" "--" (var+"I") (var+"iyoM")
};
AjAxI_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 "--" "--" (var+"") (var+"") "--" "--" (var+"") (var+"")
};
qwu_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 "--" "--" (var+"") (var+"ez") "--" "--" (var+"") (var+"oM")
};
vAyu_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 "--" "--" (var+"") (var+"") "--" "--" (var+"") (var+"")
};
bahU_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "U" => mkFunc1 "--" "--" (var+"U") (var+"uyeM") "--" "--" (var+"U") (var+"uoM")
};
bAlU_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 "--" "--" (var+"") (var+"") "--" "--" (var+"") (var+"")
};
lO_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 "--" "--" (var+"") (var+"ez") "--" "--" (var+"") (var+"voM")
};
sarasoM_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 "--" "--" (var+"") (var+"") "--" "--" (var+"") (var+"")
};
mAz_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 "--" "--" (var+"") (var+"yeM") "--" "--" (var+"") (var+"oM")
};
Gara_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "a" => mkFunc1 (var+"a") (var+"a") "--" "--" (var+"a") (var+"oM") "--" "--"
};
Karca_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "a" => mkFunc1 (var+"a") (var+"e") "--" "--" (var+"a") (var+"oM") "--" "--"
};
kroXa_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 (var+"") (var+"") "--" "--" (var+"") (var+"") "--" "--"
};
ladakA_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "A" => mkFunc1 (var+"A") (var+"e") "--" "--" (var+"e") (var+"oM") "--" "--"
};
rAjA_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 (var+"") (var+"") "--" "--" (var+"") (var+"oM") "--" "--"
};
lohA_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "A" => mkFunc1 (var+"A") (var+"e") "--" "--" (var+"e") (var+"e") "--" "--"
};
viXAwA_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 (var+"") (var+"") "--" "--" (var+"") (var+"") "--" "--"
};
kavi_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 (var+"") (var+"") "--" "--" (var+"") (var+"yoM") "--" "--"
};
AxamI_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "I" => mkFunc1 (var+"I") (var+"I") "--" "--" (var+"I") (var+"iyoM") "--" "--"
};
pAnI_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 (var+"") (var+"") "--" "--" (var+"") (var+"") "--" "--"
};
Sawru_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 (var+"") (var+"") "--" "--" (var+"") (var+"oM") "--" "--"
};
katu_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 (var+"") (var+"") "--" "--" (var+"") (var+"") "--" "--"
};
AlU_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "U" => mkFunc1 (var+"U") (var+"U") "--" "--" (var+"U") (var+"uoM") "--" "--"
};
lahU_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 (var+"") (var+"") "--" "--" (var+"") (var+"") "--" "--"
};
kuAz_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "Az" => mkFunc1 (var+"Az") (var+"ez") "--" "--" (var+"ez") (var+"oM") "--" "--"
};
redio_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 (var+"") (var+"") "--" "--" (var+"") (var+"") "--" "--"
};
gehUz_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "Uz" => mkFunc1 (var+"Uz") (var+"Uz") "--" "--" (var+"Uz") (var+"uzoM") "--" "--"
};
BARAvix_n: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc1 (var+"") (var+"") "--" "--" (var+"") (var+"oM") "--" "--"
};
kA_sh: Str -> { s : Case => Gen => Num => Str } = \s -> case s of {
var + "A" => mkFunc1 (var+"A") (var+"e") (var+"I") (var+"I") (var+"e") (var+"e") (var+"I") (var+"I")
};
KA_v: Str -> { s : Tam => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc2 (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"wA_huA") (var+"we_hue") (var+"wI_huI") (var+"wI_huI") (var+"we_hue") (var+"we_hue") (var+"wI_huI") (var+"wI_huI") (var+"yA_huA") (var+"ye_hue") (var+"I_huI") (var+"I_huI") (var+"ye_hue") (var+"ye_hue") (var+"I_huI") (var+"I_huI") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" (var+"") "--" (var+"") "--" (var+"o") (var+"o") (var+"o") (var+"o") (var+"iye") (var+"iye") (var+"iye") (var+"iye") "--" "--" "--" "--" "--" "--" "--" "--" (var+"Uz") (var+"ez") (var+"Uz") (var+"ez") (var+"e") (var+"o") (var+"e") (var+"o") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"ie") (var+"ie") (var+"ie") (var+"ie") (var+"e") (var+"ez") (var+"e") (var+"ez") (var+"nA") (var+"ne") (var+"nI") (var+"nIM") (var+"nA") (var+"ne") (var+"nI") (var+"nIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"nA") (var+"ne") (var+"nI") (var+"nIM") (var+"nA") (var+"ne") (var+"nI") (var+"nIM") (var+"wA") (var+"we") (var+"wI") (var+"wIM") (var+"wA") (var+"we") (var+"wI") (var+"wIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"wA") (var+"we") (var+"wI") (var+"wIM") (var+"wA") (var+"we") (var+"wI") (var+"wIM") (var+"yA") (var+"e") (var+"yI") (var+"yIM") (var+"yA") (var+"e") (var+"yI") (var+"yIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"yA") (var+"e") (var+"yI") (var+"yIM") (var+"yA") (var+"e") (var+"yI") (var+"yIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"UzgA") (var+"yeMge") (var+"UzgI") (var+"yeMgI") (var+"yegA") (var+"oge") (var+"yegI") (var+"ogI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"iyegA") (var+"iyegA") (var+"iyegA") (var+"iyegA") (var+"yegA") (var+"yeMge") (var+"yegI") (var+"yeMgI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"")
};
kara_v: Str -> { s : Tam => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "ara" => mkFunc2 (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arawe_hue") (var+"arwA_huA") (var+"arwe_hue") (var+"arwI_huI") (var+"arwI_huI") (var+"arwe_hue") (var+"arwe_hue") (var+"arwI_huI") (var+"arwI_huI") (var+"iyA_huA") (var+"iye_hue") (var+"I_huI") (var+"I_huI") (var+"iye_hue") (var+"iye_hue") (var+"I_huI") (var+"I_huI") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") (var+"arawe_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" (var+"ara") "--" (var+"ara") "--" (var+"aro") (var+"aro") (var+"aro") (var+"aro") (var+"Ijiye") (var+"Ijiye") (var+"Ijiye") (var+"Ijiye") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"aranA") "--" (var+"aranI") (var+"aranIM") (var+"aranA") (var+"arane") (var+"aranI") (var+"aranIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"aranA") (var+"arane") (var+"aranI") (var+"aranIM") (var+"aranA") (var+"arane") (var+"aranI") (var+"aranIM") (var+"arawA") (var+"arawe") (var+"arawI") (var+"arawIM") (var+"arawA") (var+"arawe") (var+"arawI") (var+"arawIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"arawA") (var+"arawe") (var+"arawI") (var+"arawIM") (var+"arawA") (var+"arawe") (var+"arawI") (var+"arawIM") (var+"iyA") (var+"ie") (var+"I") (var+"IM") (var+"iyA") (var+"ie") (var+"I") (var+"IM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"iyA") (var+"ie") (var+"I") (var+"IM") (var+"iyA") (var+"ie") (var+"I") (var+"IM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arake") (var+"arUzgA") (var+"areMge") (var+"arUzgI") (var+"areMgI") (var+"aregA") (var+"aroge") (var+"aregI") (var+"arogI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"ariegA") (var+"ariegA") (var+"ariegA") (var+"ariegA") (var+"aregA") (var+"areMge") (var+"aregI") (var+"areMgI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara") (var+"ara")
};
le_v: Str -> { s : Tam => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "e" => mkFunc2 (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewe_hue") (var+"ewA_huA") (var+"ewe_hue") (var+"ewI_huI") (var+"ewI_huI") (var+"ewe_hue") (var+"ewe_hue") (var+"ewI_huI") (var+"ewI_huI") (var+"iyA_huA") (var+"iye_hue") (var+"I_huI") (var+"I_huI") (var+"iye_hue") (var+"iye_hue") (var+"I_huI") (var+"I_huI") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") (var+"ewe_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" (var+"e") "--" (var+"e") "--" (var+"o") (var+"o") (var+"o") (var+"o") (var+"Ijiye") (var+"Ijiye") (var+"Ijiye") (var+"Ijiye") "--" "--" "--" "--" "--" "--" "--" "--" (var+"Uz") (var+"eM") (var+"Uz") (var+"eM") (var+"e") (var+"o") (var+"e") (var+"o") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"Ijiye") (var+"Ijiye") (var+"Ijiye") (var+"Ijiye") (var+"e") (var+"eM") (var+"e") (var+"eM") (var+"enA") (var+"ene") (var+"enI") (var+"enIM") (var+"enA") (var+"ene") (var+"enI") (var+"enIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"enA") (var+"ene") (var+"enI") (var+"enIM") (var+"enA") (var+"ene") (var+"enI") (var+"enIM") (var+"ewA") (var+"ewe") (var+"ewI") (var+"ewIM") (var+"ewA") (var+"ewe") (var+"ewI") (var+"ewIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"ewA") (var+"ewe") (var+"ewI") (var+"ewIM") (var+"ewA") (var+"ewe") (var+"ewI") (var+"ewIM") (var+"iyA") (var+"ie") (var+"I") (var+"IM") (var+"iyA") (var+"ie") (var+"I") (var+"IM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"iyA") (var+"ie") (var+"I") (var+"IM") (var+"iyA") (var+"ie") (var+"I") (var+"IM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"ekara") (var+"UzgA") (var+"eMge") (var+"UzgI") (var+"eMgI") (var+"egA") (var+"oge") (var+"egI") (var+"ogI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"IjiegA") (var+"IjiegA") (var+"IjiegA") (var+"IjiegA") (var+"egA") (var+"eMge") (var+"egI") (var+"eMgI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e") (var+"e")
};
ho_v: Str -> { s : Tam => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "o" => mkFunc2 (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owe_hue") (var+"owA_huA") (var+"owe_hue") (var+"owI_huI") (var+"owI_huI") (var+"owe_hue") (var+"owe_hue") (var+"owI_huI") (var+"owI_huI") "--" "--" "--" "--" "--" "--" "--" "--" (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") (var+"owe_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" (var+"o") "--" (var+"o") "--" (var+"oo") (var+"oo") (var+"oo") (var+"oo") (var+"oiye") (var+"oiye") (var+"oiye") (var+"oiye") "--" "--" "--" "--" "--" "--" "--" "--" (var+"oUz") (var+"oez") (var+"oUz") (var+"oez") (var+"o") (var+"o") (var+"o") (var+"o") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"oiye") (var+"oiye") (var+"oiye") (var+"oiye") (var+"o") (var+"oez") (var+"o") (var+"oez") (var+"onA") (var+"one") (var+"onI") (var+"onIM") (var+"onA") (var+"one") (var+"onI") (var+"onIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"onA") (var+"one") (var+"onI") (var+"onIM") (var+"onA") (var+"one") (var+"onI") (var+"onIM") (var+"owA") (var+"owe") (var+"owI") (var+"owIM") (var+"owA") (var+"owe") (var+"owI") (var+"owIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"owA") (var+"owe") (var+"owI") (var+"owIM") (var+"owA") (var+"owe") (var+"owI") (var+"owIM") (var+"uA") (var+"uye") (var+"uyI") (var+"uyIM") (var+"uA") (var+"uye") (var+"uyI") (var+"uyIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"uA") (var+"uye") (var+"uyI") (var+"uyIM") (var+"uA") (var+"uye") (var+"uyI") (var+"uyIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"okara") (var+"oUzgA") (var+"oMge") (var+"oUzgI") (var+"oMgI") (var+"ogA") (var+"oge") (var+"ogI") (var+"ogI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"oiegA") (var+"oiegA") (var+"oiegA") (var+"oiegA") (var+"ogA") (var+"oMge") (var+"ogI") (var+"oMgI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o") (var+"o")
};
pI_v: Str -> { s : Tam => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "I" => mkFunc2 (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"IwA_huA") (var+"Iwe_hue") (var+"IwI_huI") (var+"IwI_huI") (var+"Iwe_hue") (var+"Iwe_hue") (var+"IwI_huI") (var+"IwI_huI") (var+"iyA_huA") (var+"iye_hue") (var+"I_huI") (var+"I_huI") (var+"iye_hue") (var+"iye_hue") (var+"I_huI") (var+"I_huI") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" (var+"I") "--" (var+"I") "--" (var+"Io") (var+"Io") (var+"Io") (var+"Io") (var+"Ijiye") (var+"Ijiye") (var+"Ijiye") (var+"Ijiye") "--" "--" "--" "--" "--" "--" "--" "--" (var+"iUz") (var+"iez") (var+"iUz") (var+"iez") (var+"ie") (var+"io") (var+"ie") (var+"io") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"Ijie") (var+"Ijie") (var+"Ijie") (var+"Ijie") (var+"ie") (var+"iez") (var+"ie") (var+"iez") (var+"InA") (var+"Ine") (var+"InI") (var+"InIM") (var+"InA") (var+"Ine") (var+"InI") (var+"InIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"InA") (var+"Ine") (var+"InI") (var+"InIM") (var+"InA") (var+"Ine") (var+"InI") (var+"InIM") (var+"IwA") (var+"Iwe") (var+"IwI") (var+"IwIM") (var+"IwA") (var+"Iwe") (var+"IwI") (var+"IwIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"IwA") (var+"Iwe") (var+"IwI") (var+"IwIM") (var+"IwA") (var+"Iwe") (var+"IwI") (var+"IwIM") (var+"iyA") (var+"ie") (var+"I") (var+"IM") (var+"iyA") (var+"ie") (var+"I") (var+"IM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"iyA") (var+"ie") (var+"I") (var+"IM") (var+"iyA") (var+"ie") (var+"I") (var+"IM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"Ikara") (var+"iyUzgA") (var+"iyeMge") (var+"iyUzgI") (var+"iyeMgI") (var+"iyegA") (var+"ioge") (var+"iegI") (var+"iogI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"IjiyegA") (var+"IjiyegA") (var+"IjiyegA") (var+"IjiyegA") (var+"iyeMgA") (var+"iyeMge") (var+"iegI") (var+"iyeMgI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"")
};
CU_v: Str -> { s : Tam => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "U" => mkFunc2 (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"UwA_huA") (var+"Uwe_hue") (var+"UwI_huI") (var+"UwI_huI") (var+"Uwe_hue") (var+"Uwe_hue") (var+"UwI_huI") (var+"UwI_huI") (var+"UA_huA") (var+"Ue_hue") (var+"UI_huI") (var+"UI_huI") (var+"Ue_hue") (var+"Ue_hue") (var+"UI_huI") (var+"UI_huI") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" (var+"U") "--" (var+"U") "--" (var+"uo") (var+"uo") (var+"uo") (var+"uo") (var+"Uiye") (var+"Uiye") (var+"Uiye") (var+"Uiye") "--" "--" "--" "--" "--" "--" "--" "--" (var+"uUz") (var+"uez") (var+"uUz") (var+"uez") (var+"ue") (var+"uo") (var+"ue") (var+"uo") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"uie") (var+"uie") (var+"uie") (var+"uie") (var+"ue") (var+"uez") (var+"ue") (var+"uez") (var+"UnA") (var+"Une") (var+"UnI") (var+"UnIM") (var+"UnA") (var+"Une") (var+"UnI") (var+"UnIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"UnA") (var+"Une") (var+"UnI") (var+"UnIM") (var+"UnA") (var+"Une") (var+"UnI") (var+"UnIM") (var+"UwA") (var+"Uwe") (var+"UwI") (var+"UwIM") (var+"UwA") (var+"Uwe") (var+"UwI") (var+"UwIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"UwA") (var+"Uwe") (var+"UwI") (var+"UwIM") (var+"UwA") (var+"Uwe") (var+"UwI") (var+"UwIM") (var+"uA") (var+"uye") (var+"uyI") (var+"uyIM") (var+"uA") (var+"uye") (var+"uyI") (var+"uyIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"uA") (var+"uye") (var+"uyI") (var+"uyIM") (var+"uA") (var+"uye") (var+"uyI") (var+"uyIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"Ukara") (var+"UzgA") (var+"eMge") (var+"UzgI") (var+"eMgI") (var+"egA") (var+"oge") (var+"egI") (var+"ogI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"iyegA") (var+"eMge") (var+"iyegA") (var+"iyegA") (var+"egA") (var+"iyegA") (var+"egI") (var+"eMgI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U") (var+"U")
};
so_v: Str -> { s : Tam => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc2 (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"wA_huA") (var+"we_hue") (var+"wI_huI") (var+"wI_huI") (var+"we_hue") (var+"we_hue") (var+"wI_huI") (var+"wI_huI") (var+"yA_huA") (var+"ye_hue") (var+"I_huI") (var+"I_huI") (var+"ye_hue") (var+"ye_hue") (var+"I_huI") (var+"I_huI") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" (var+"") "--" (var+"") "--" (var+"oo") (var+"oo") (var+"oo") (var+"oo") (var+"iye") (var+"iye") (var+"iye") (var+"iye") "--" "--" "--" "--" "--" "--" "--" "--" (var+"Uz") (var+"ez") (var+"Uz") (var+"ez") (var+"") (var+"o") (var+"") (var+"o") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"iye") (var+"iye") (var+"iye") (var+"iye") (var+"e") (var+"ez") (var+"e") (var+"ez") (var+"nA") (var+"ne") (var+"nI") (var+"nIM") (var+"nA") (var+"ne") (var+"nI") (var+"nIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"nA") (var+"ne") (var+"nI") (var+"nIM") (var+"nA") (var+"ne") (var+"nI") (var+"nIM") (var+"wA") (var+"we") (var+"wI") (var+"wIM") (var+"wA") (var+"we") (var+"wI") (var+"wIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"wA") (var+"we") (var+"wI") (var+"wIM") (var+"wA") (var+"we") (var+"wI") (var+"wIM") (var+"yA") (var+"ye") (var+"yI") (var+"yIM") (var+"yA") (var+"ye") (var+"yI") (var+"yIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"yA") (var+"ye") (var+"yI") (var+"yIM") (var+"yA") (var+"ye") (var+"yI") (var+"yIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"kara") (var+"UzgA") (var+"yeMge") (var+"UzgI") (var+"yeMgI") (var+"yegA") (var+"oge") (var+"yegI") (var+"ogI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"iyegA") (var+"iyegA") (var+"iyegA") (var+"iyegA") (var+"yegA") (var+"yeMge") (var+"yegI") (var+"yeMgI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"") (var+"")
};
hE_v: Str -> { s : Tam => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "E" => mkFunc2 (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"Uz") (var+"EM") (var+"Uz") (var+"EM") (var+"E") (var+"o") (var+"E") (var+"o") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"E") (var+"EM") (var+"E") (var+"EM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--"
};
uTa_v: Str -> { s : Tam => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "a" => mkFunc2 (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awe_hue") (var+"awA_huA") (var+"awe_hue") (var+"awI_huI") (var+"awI_huI") (var+"awe_hue") (var+"awe_hue") (var+"awI_huI") (var+"awI_huI") (var+"A_huA") (var+"e_hue") (var+"I_huI") (var+"I_huI") (var+"e_hue") (var+"e_hue") (var+"I_huI") (var+"I_huI") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") (var+"awe_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" (var+"a") "--" (var+"a") "--" (var+"o") (var+"o") (var+"o") (var+"o") (var+"iye") (var+"iye") (var+"iye") (var+"iye") "--" "--" "--" "--" "--" "--" "--" "--" (var+"Uz") (var+"eM") (var+"Uz") (var+"eM") (var+"e") (var+"o") (var+"e") (var+"o") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"iye") (var+"iye") (var+"iye") (var+"iye") (var+"e") (var+"eM") (var+"e") (var+"eM") (var+"anA") (var+"ane") (var+"anI") (var+"anIM") (var+"anA") (var+"ane") (var+"anI") (var+"anIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"anA") (var+"ane") (var+"anI") (var+"anIM") (var+"anA") (var+"ane") (var+"anI") (var+"anIM") (var+"awA") (var+"awe") (var+"awI") (var+"awIM") (var+"awA") (var+"awe") (var+"awI") (var+"awIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"awA") (var+"awe") (var+"awI") (var+"awIM") (var+"awA") (var+"awe") (var+"awI") (var+"awIM") (var+"A") (var+"e") (var+"I") (var+"IM") (var+"A") (var+"e") (var+"I") (var+"IM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"A") (var+"e") (var+"I") (var+"IM") (var+"A") (var+"e") (var+"I") (var+"IM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"akara") (var+"UzgA") (var+"eMge") (var+"UzgI") (var+"eMgI") (var+"egA") (var+"oge") "--" (var+"ogI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"iyegA") (var+"iyegA") (var+"iyegA") (var+"iyegA") (var+"egA") (var+"eMge") (var+"egI") (var+"eMgI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a") (var+"a")
};
WA_v: Str -> { s : Tam => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "A" => mkFunc2 "--" (var+"we_hue") (var+"we_hue") (var+"we_hue") "--" (var+"we_hue") (var+"we_hue") (var+"we_hue") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") (var+"we_hue") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") (var+"we_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"A") (var+"e") (var+"I") (var+"IM") (var+"A") (var+"e") (var+"I") (var+"IM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"A") (var+"e") (var+"I") (var+"IM") (var+"A") (var+"e") (var+"I") (var+"IM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--"
};
jA_v: Str -> { s : Tam => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "jA" => mkFunc2 (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwA_huA") (var+"jAwe_hue") (var+"jAwI_huI") (var+"jAwI_huI") (var+"jAwe_hue") (var+"jAwe_hue") (var+"jAwI_huI") (var+"jAwI_huI") (var+"gayA_huA") (var+"gaye_hue") (var+"gayI_huI") (var+"gayI_huI") (var+"gaye_hue") (var+"gaye_hue") (var+"gayI_huI") (var+"gayI_huI") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") (var+"jAwe_rahanA_hE") "--" "--" "--" "--" "--" "--" "--" "--" (var+"jA") "--" (var+"jA") "--" (var+"jAo") (var+"jAo") (var+"jAo") (var+"jAo") (var+"jAiye") (var+"jAiye") (var+"jAiye") (var+"jAiye") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"gayA") (var+"gaye") (var+"gaI") (var+"gaIM") (var+"gayA") (var+"gaye") (var+"gaI") (var+"gaIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"gayA") (var+"gaye") (var+"gaI") (var+"gaIM") (var+"gayA") (var+"gaye") (var+"gaI") (var+"gaIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--"
};
yaha_p: Str -> { s : Tam => Parsarg => Fnum => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "yaha" => mkFunc3 "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"ye") "--" (var+"ye") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"yaha") "--" (var+"yaha") "--" (var+"isa") (var+"ina") (var+"isa") (var+"ina") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isane") (var+"inhoMne") (var+"isane") (var+"inhoMne") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isako") (var+"inako") (var+"isako") (var+"inako") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isase") (var+"inase") (var+"isase") (var+"inase") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isake") (var+"inake") (var+"isake") (var+"inake") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isameM") (var+"inameM") (var+"isameM") (var+"inameM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isameM_se") (var+"inameM_se") (var+"isameM_se") (var+"inameM_se") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isakA") (var+"inakA") (var+"isakI") (var+"inakI") (var+"isake") (var+"inake") (var+"isakI") (var+"inakI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isake") (var+"inake") (var+"isakI") (var+"inakI") (var+"isake") (var+"inake") (var+"isakI") (var+"inakI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isapara") (var+"inapara") (var+"isapara") (var+"inapara")
};
jo_p: Str -> { s : Tam => Parsarg => Fnum => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "o" => mkFunc3 "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"o") (var+"o") (var+"o") (var+"o") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isa") (var+"ina") (var+"isa") (var+"ina") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isane") (var+"inhoMne") (var+"isane") (var+"inhoMne") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isako") (var+"inako") (var+"isako") (var+"inako") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isase") (var+"inase") (var+"isase") (var+"inase") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isake") (var+"inake") (var+"isake") (var+"inake") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isameM") (var+"inameM") (var+"isameM") (var+"inameM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isameM_se") (var+"inameM_se") (var+"isameM_se") (var+"inameM_se") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isakA") (var+"inakA") (var+"isakI") (var+"inakI") (var+"isake") (var+"inake") (var+"isakI") (var+"inakI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isake") (var+"inake") (var+"isakI") (var+"inakI") (var+"isake") (var+"inake") (var+"isakI") (var+"inakI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isapara") (var+"inapara") (var+"isapara") (var+"inapara")
};
kOna_p: Str -> { s : Tam => Parsarg => Fnum => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "Ona" => mkFunc3 "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"Ona") (var+"Ona") (var+"Ona") (var+"Ona") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isa") (var+"ina") (var+"isa") (var+"ina") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isane") (var+"inhoMne") (var+"isane") (var+"inhoMne") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isako") (var+"inako") (var+"isako") (var+"inako") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isase") (var+"inase") (var+"isase") (var+"inase") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isake") (var+"inake") (var+"isake") (var+"inake") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isameM") (var+"inameM") (var+"isameM") (var+"inameM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isameM_se") (var+"inameM_se") (var+"isameM_se") (var+"inameM_se") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isakA") (var+"inakA") (var+"isakI") (var+"inakI") (var+"isake") (var+"inake") (var+"isakI") (var+"inakI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isake") (var+"inake") (var+"isakI") (var+"inakI") (var+"isake") (var+"inake") (var+"isakI") (var+"inakI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isapara") (var+"inapara") (var+"isapara") (var+"inapara")
};
koI_p: Str -> { s : Tam => Parsarg => Fnum => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "oI" => mkFunc3 "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"oI") (var+"oI") (var+"oI") (var+"oI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"inhIM") "--" (var+"inhIM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isIne") (var+"inhoMne") (var+"isIne") (var+"inhoMne") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isIko") (var+"inhIMko") (var+"isIko") (var+"inhIMko") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isIse") (var+"inhIMse") (var+"isIse") (var+"inhIMse") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isIke") (var+"inhIMke") (var+"isIke") (var+"inhIMke") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isImeM") (var+"inhIMmeM") (var+"isImeM") (var+"inhIMmeM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isImeM_se") (var+"inhIMmeM_se") (var+"isImeM_se") (var+"inhIMmeM_se") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"isIpara") (var+"inhIMpara") (var+"isIpara") (var+"inhIMpara")
};
vaha_p: Str -> { s : Tam => Parsarg => Fnum => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "vaha" => mkFunc3 "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"ve") "--" (var+"ve") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"vaha") "--" (var+"vaha") "--" (var+"usa") (var+"una") (var+"usa") (var+"una") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"usane") (var+"unhoMne") (var+"usane") (var+"unhoMne") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"usako") (var+"unako") (var+"usako") (var+"unako") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"usase") (var+"unase") (var+"usase") (var+"unase") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"usake") (var+"unake") (var+"usake") (var+"unake") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"usameM") (var+"unameM") (var+"usameM") (var+"unameM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"usameM_se") (var+"unameM_se") (var+"usameM_se") (var+"unameM_se") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"usakA") (var+"unakA") (var+"usakI") (var+"unakI") (var+"usake") (var+"unake") (var+"usakI") (var+"unakI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"usake") (var+"unake") (var+"usakI") (var+"unakI") (var+"usake") (var+"unake") (var+"usakI") (var+"unakI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"usakI") "--" (var+"usakI") (var+"unakI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"usapara") (var+"unapara") (var+"usapara") (var+"unapara")
};
wU_p: Str -> { s : Tam => Parsarg => Fnum => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "U" => mkFunc3 "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"U") (var+"uma") (var+"U") (var+"uma") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"Une") (var+"umane ") (var+"Une") (var+"umane ") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"uJako") (var+"umako") (var+"uJako") (var+"umako") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"uJase") (var+"umase") (var+"uJase") (var+"umase") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"uJake") (var+"umake") (var+"uJake") (var+"umake") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"uJameM") (var+"umameM") (var+"uJameM") (var+"umameM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"uJameM_se") (var+"umameM_se") (var+"uJameM_se") (var+"umameM_se") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"erA") (var+"umhArA") (var+"erI") (var+"umhArI") (var+"ere") (var+"umhAre") (var+"erI") (var+"umhArI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"ere") (var+"umhAre") (var+"erI") (var+"umhArI") (var+"ere") (var+"umhAre") (var+"erI") (var+"umhArI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"erI") (var+"umhArI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"uJapara") (var+"umapara") (var+"uJapara") (var+"umapara") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--"
};
Apa_p: Str -> { s : Tam => Parsarg => Fnum => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "" => mkFunc3 "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"") (var+"") (var+"") (var+"") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"ne") (var+"ne") (var+"ne") (var+"ne") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"ko") (var+"ko") (var+"ko") (var+"ko") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"se") (var+"se") (var+"se") (var+"se") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"ke") (var+"ke") (var+"ke") (var+"ke") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"meM") (var+"meM") (var+"meM") (var+"meM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"meM_se") (var+"meM_se") (var+"meM_se") (var+"meM_se") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"kA") (var+"kA") (var+"kI") (var+"kI") (var+"ke") (var+"ke") (var+"kI") (var+"kI") (var+"kA") (var+"kA") (var+"kI") (var+"kI") (var+"ke") (var+"ke") (var+"kI") (var+"kI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"kA") (var+"kA") (var+"kI") (var+"kI") (var+"ke") (var+"ke") (var+"kI") (var+"kI") (var+"kA") (var+"kA") (var+"kI") (var+"kI") (var+"ke") (var+"ke") (var+"kI") (var+"kI") (var+"ke") (var+"ke") (var+"kI") (var+"kI") (var+"ke") (var+"ke") (var+"kI") (var+"kI") (var+"ke") (var+"ke") (var+"kI") (var+"kI") (var+"ke") (var+"ke") (var+"kI") (var+"kI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"ke") (var+"ke") (var+"kI") (var+"kI") (var+"ke") (var+"ke") (var+"kI") (var+"kI") (var+"ke") (var+"ke") (var+"kI") (var+"kI") (var+"ke") (var+"ke") (var+"kI") (var+"kI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"para") (var+"para") (var+"para") (var+"para") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--"
};
mEM_p: Str -> { s : Tam => Parsarg => Fnum => Per => Case => Gen => Num => Str } = \s -> case s of {
var + "mEM" => mkFunc3 "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"mEM") (var+"hama") (var+"mEM") (var+"hama") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"mEMne") (var+"hamane") (var+"mEMne") (var+"hamane") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"muJako") (var+"hamako") (var+"muJako") (var+"hamako") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"muJase") (var+"hamase") (var+"muJase") (var+"hamase") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"mere") (var+"hamAre") (var+"mere") (var+"hamAre") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"muJameM") (var+"hamameM") (var+"muJameM") (var+"hamameM") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"muJameM_se") (var+"hamameM_se") (var+"muJameM_se") (var+"hamameM_se") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"merA") (var+"hamArA") (var+"merI") (var+"hamArI") (var+"mere") (var+"hamAre") (var+"merI") (var+"hamArI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"mere") (var+"hamAre") (var+"merI") (var+"hamArI") (var+"mere") (var+"hamAre") (var+"merI") (var+"hamArI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"merI") (var+"hamArI") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" (var+"muJapara") (var+"hamapara") (var+"muJapara") (var+"hamapara") "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--" "--"
};
}

