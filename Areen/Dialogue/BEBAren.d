BEGIN BEBAREN

// FIRST ROUND OF BANTER

// Aeri

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenAerie1","GLOBAL",0)~ THEN BEBAREN BEArenAerie1
@0
DO ~SetGlobal("BEArenAerie1","GLOBAL",1)~
== BAERIE @1
== BEBAREN @2
== BAERIE @3
== BEBAREN @4
== BAERIE @5
== BEBAREN @6
EXIT

// Anomen

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenAnomen1","GLOBAL",0)~ THEN BEBAREN BEArenAnomen1
@7
DO ~SetGlobal("BEArenAnomen1","GLOBAL",1)~
== BANOMEN @8
== BEBAREN @9
== BANOMEN @10
== BEBAREN @11
EXIT

// Cern

CHAIN 
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenCernd1","GLOBAL",0)~ THEN BCERND BEArenCernd1
@12
DO ~SetGlobal("BEArenCernd1","GLOBAL",1)~
== BEBAREN @13
== BCERND @14
== BEBAREN @15
== BCERND @16
== BEBAREN @17
== BCERND @18
EXIT

// Edwin

CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenEdwin1","GLOBAL",0)~ THEN BEBAREN BEArenEdwin1
@19
DO ~SetGlobal("BEArenEdwin1","GLOBAL",1)~
== BEDWIN @20
== BEBAREN @21
== BEDWIN @22
== BEBAREN @23
== BEDWIN @24
== BEBAREN @25
EXIT

// Haer'Dalis

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenHaerDalis1","GLOBAL",0)~ THEN BHAERDA BEArenHaerDalis1
@26
DO ~SetGlobal("BEArenHaerDalis1","GLOBAL",1)~
== BEBAREN @27
== BHAERDA @28
== BEBAREN @29
== BHAERDA @30
== BEBAREN @31
EXIT

// Imoen

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenImoen1","GLOBAL",0)~ THEN BEBAREN BEArenImoen1
@32
DO ~SetGlobal("BEArenImoen1","GLOBAL",1)~
== IMOEN2J @33
== BEBAREN @34
== IMOEN2J @35
== BEBAREN @36
== IMOEN2J @37
EXIT

// Jan

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenJan1","GLOBAL",0)~ THEN BJAN BEArenJan1
@38
DO ~SetGlobal("BEArenJan1","GLOBAL",1)~
== BEBAREN @39
== BJAN @40
== BEBAREN @41
== BJAN @42
== BEBAREN @43
== BJAN @44
== BEBAREN @45
== BJAN @46
== BJAN @47
== BEBAREN @48
EXIT

// Keldorn

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenKeldorn1","GLOBAL",0)~ THEN BKELDOR BEArenKeldorn1
@54
DO ~SetGlobal("BEArenKeldorn1","GLOBAL",1)~
== BEBAREN @55
== BKELDOR @56
== BEBAREN @57
== BKELDOR @58
== BEBAREN @59
== BKELDOR @60
== BEBAREN @61
== BKELDOR @62
EXIT

// Korgan

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenKorgan1","GLOBAL",0)~ THEN BEBAREN BEArenKorgan1
@63
DO ~SetGlobal("BEArenKorgan1","GLOBAL",1)~
== BKORGAN @64
== BEBAREN @65
== BKORGAN @66
== BEBAREN @67
== BKORGAN @68
EXIT

// Mazzy

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenMazzy1","GLOBAL",0)~ THEN BEBAREN BEArenMazzy1
@69
DO ~SetGlobal("BEArenMazzy1","GLOBAL",1)~
== BMAZZY @70
== BEBAREN @71
== BMAZZY @72
== BEBAREN @73
== BMAZZY @74
EXIT

// Minsc

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenMinsc1","GLOBAL",0)~ THEN BEBAREN BEArenMinsc1
@75
DO ~SetGlobal("BEArenMinsc1","GLOBAL",1)~
== BMINSC @76
== BEBAREN @77
== BMINSC @78
== BEBAREN @79
EXIT

// Jaheira

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenJaheira1","GLOBAL",0)~ THEN BEBAREN BEArenJaheira1
@80
DO ~SetGlobal("BEArenJaheira2","GLOBAL",1)~
== BJAHEIR @81
== BEBAREN @82
== BJAHEIR @82
== BEBAREN @84
EXIT

// Nalia

CHAIN 
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenNalia1","GLOBAL",0)~ THEN BNALIA BEArenNalia1
@85
DO ~SetGlobal("BEArenNalia1","GLOBAL",1)~
== BEBAREN @86
== BNALIA @87
== BEBAREN @88
== BNALIA @89
== BEBAREN @90
EXIT 

// Valygard

CHAIN 
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenValygar1","GLOBAL",0)~ THEN BVALYGA BEArenValygar1
@91
DO ~SetGlobal("BEArenValygar1","GLOBAL",1)~
== BEBAREN @92
== BVALYGA @93
== BEBAREN @94
== BVALYGA @95
== BEBAREN @96
== BVALYGA @97
== BEBAREN @98
EXIT

// Viconia

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenViconia1","GLOBAL",0)~ THEN BEBAREN BEArenViconia1
@99
DO ~SetGlobal("BEArenViconia1","GLOBAL",1)~
== BVICONI @100
== BEBAREN @101
== BVICONI @102
== BEBAREN @103
== BVICONI @104
== BEBAREN @105
== BVICONI @106
EXIT

// Yoshimo

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BEArenYoshimo1","GLOBAL",0)~ THEN BEBAREN BEArenYoshimo1
@107
DO ~SetGlobal("BEArenYoshimo1","GLOBAL",1)~
== BYOSHIM @108
== BEBAREN @109
== BYOSHIM @110
== BEBAREN @111
== BYOSHIM @112
EXIT


// SECOND ROUND OF BANTER

// Haer'Dalis 2 (did not follow the sequence, but too lazy to change it now)

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenHaerDalis1","GLOBAL",1)~ THEN BHAERDA BEArenHaerDalis2
@49
DO ~SetGlobal("BEArenHaerDalis1","GLOBAL",2)~
== BEBAREN @50
== BHAERDA @51
== BEBAREN @52
== BHAERDA @53
EXIT

// Edwin 2

CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenEdwin2","GLOBAL",0)~ THEN BEBAREN BEArenEdwin2
@113
DO ~SetGlobal("BEArenEdwin2","GLOBAL",1)~
== BEDWIN @114
== BEBAREN @115
== BEDWIN @116
== BEBAREN @117
== BEDWIN @118
== BEBAREN @119
== BEDWIN @120
EXIT

// Imoen 2

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenImoen2","GLOBAL",0)~ THEN BEBAREN BEArenImoen2
@121
DO ~SetGlobal("BEArenImoen2","GLOBAL",1)~
== IMOEN2J @122
== BEBAREN @123
== IMOEN2J @124
== BEBAREN @125
== IMOEN2J @126
== BEBAREN @127
== IMOEN2J @128
== BEBAREN @129
EXIT

/* Gap between @130 and @150, in case we want to include more 2nd round banter in the future. */

// THIRD ROUND OF BANTER

// Edwin 3 - female

CHAIN
IF ~InParty("BEAren")
See("BEAren")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenEdwin3","GLOBAL",0)~ THEN BEDWIN BEArenEdwin3
@151
DO ~SetGlobal("BEArenEdwin3","GLOBAL",1)~
== BEBAREN @152
== BEDWIN @153
== BEBAREN @154
== BEDWIN @155
== BEBAREN @156
== BEDWIN @157
EXIT

// Edwin 4 - after being male again

CHAIN
IF ~InParty("BEAren")
See("BEAren")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenEdwin3","GLOBAL",1)~ THEN BEDWIN BEArenEdwin4
@158
DO ~SetGlobal("BEArenEdwin3","GLOBAL",2)~
== BEBAREN @159
== BEDWIN @160
== BEBAREN @161
== BEDWIN @162
== BEBAREN @163
== BEDWIN @164
EXIT

// Imoen 3

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenImoen3","GLOBAL",0)~ THEN BEBAREN BEArenImoen3
@165
DO ~SetGlobal("BEArenImoen3","GLOBAL",1)~
== IMOEN2J @166
== BEBAREN @167
== IMOEN2J @168
== BEBAREN @169
== IMOEN2J @170
== BEBAREN @171
== IMOEN2J @172
== BEBAREN @173
== IMOEN2J @174
== BEBAREN @175
== IMOEN2J @176
EXIT
