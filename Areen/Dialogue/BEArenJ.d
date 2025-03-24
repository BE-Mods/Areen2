BEGIN BEARENJ

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("BEAren",LastTalkedToBy)~ EXTERN TRGYP02 g1
END

CHAIN TRGYP02 g1
@0
== BEARENJ @1
EXIT

// Crazy Celvan - an obligatory bad limerick.

CHAIN IF WEIGHT #-1 
~InParty("BEAren")
See("BEAren")
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenReactionCelvan","AR0300",0)~ THEN CELVAN c1
@2
DO ~SetGlobal("BEArenReactionCelvan","AR0300",1)~
== BEARENJ @3
END CELVAN 1

// Obligatory comments for Madame Nin's brothel in the Copper Coronet

CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0) 
Name("BEAren",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM BEArenReactionMadam1
@4
== BEARENJ @5
EXIT

// Yoshimo's betrayal

I_C_T YOSHJ 113 BEArenYOSHJ113
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @8
END

// Spellhold, right after the player loses his or her soul.

INTERJECT Player1 3 BEArenSpellholdDizzy0
== BEARENJ IF ~InParty("BEAren") Range("BEAren",15) !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN
@9
END
++ @10 EXTERN BEARENJ pl1.1
++ @11 EXTERN BEARENJ pl1.2
++ @12 EXTERN BEARENJ pl1.1

CHAIN BEARENJ pl1.1
@13
EXIT

CHAIN BEARENJ pl1.2
@14
EXIT

// Player becomes the Slayer for the first time.

I_C_T PLAYER1 5 BEArenFirstSlayerChange1
== BEARENJ IF ~InParty("BEAren") See("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @15
END

// Lonk is dead, inmates are free, time to battle Irenicus!

I_C_T PLAYER1 15 BEArenLonkIsDead1
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @16
END

// This is the dialogue for the Tree of Life.
// Non-romanced:

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) Global("BEArenTreeOfLife","GLOBAL",0) !Global("BEArenRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 pl2
END

CHAIN PLAYER1 pl2
@17
DO ~SetGlobal("BEArenTreeOfLife","GLOBAL",1)~
END
++ @18 EXTERN BEARENJ pl2.1
++ @19 EXTERN BEARENJ pl2.1
++ @20 EXTERN BEARENJ pl2.1

CHAIN BEARENJ pl2.1
@21
END
COPY_TRANS PLAYER1 33

// Romanced at the Tree of Life:

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) Global("BEArenTreeOfLife","GLOBAL",0) Global("BEArenRomanceActive","GLOBAL",2)~
EXTERN PLAYER1 pl3
END

CHAIN PLAYER1 pl3
@22
DO ~SetGlobal("BEArenTreeOfLife","GLOBAL",1)~
END
++ @23 EXTERN BEARENJ pl3.1

CHAIN BEARENJ pl3.1
@24
= @25
= @26
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 BEArenIrenicusIsDead1
== BEARENJ IF ~InParty("BEAren") Range("BEAren",15) !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @27
END

// Entering Hell with the rest of the party.

I_C_T PLAYER1 25 BEArenEnteringHell1
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @28
END

// Battling Irenicus. There are four identical interjections for four dialogue states.

I_C_T HELLJON 7 BEArenThirdBattleWithIrenicus1
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @29
END

I_C_T HELLJON 8 BEArenThirdBattleWithIrenicus1
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @29
END

I_C_T HELLJON 9 BEArenThirdBattleWithIrenicus1
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @29
END

I_C_T HELLJON 10 BEArenThirdBattleWithIrenicus1
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @29
END

// ROMANCE CONTENT: the second slayer change and Bodhi abduction.

INTERJECT Player1 7 BEArenSecondSlayerChange0
== BEArenJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) OR(2) Global("BEArenRomanceActive","GLOBAL",1) Global("BEArenRomanceActive","GLOBAL",2)~ THEN @30
END
++ @31 EXTERN BEArenJ BEArenSecondSlayerChange1
++ @32 EXTERN BEArenJ BEArenSecondSlayerChange1
++ @33 EXTERN BEArenJ BEArenSecondSlayerChange1

CHAIN BEArenJ BEArenSecondSlayerChange1
@34
DO ~SetGlobal("BEArenSecondSlayerChange","GLOBAL",1)
ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

INTERJECT Player1 10 BEArenSlayerSurvived1
== BEArenJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) OR(2) Global("BEArenRomanceActive","GLOBAL",1) Global("BEArenRomanceActive","GLOBAL",2) Global("BEArenSecondSlayerChange","GLOBAL",1)~ THEN @35
== BEArenJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) OR(2) Global("BEArenRomanceActive","GLOBAL",1) Global("BEArenRomanceActive","GLOBAL",2) Global("BEArenSecondSlayerChange","GLOBAL",1)~ THEN @36
END
IF ~~ EXIT

EXTEND_BOTTOM Player1 10
IF ~Dead("BEAren") Global("BEArenSecondSlayerChange","GLOBAL",1)~ EXTERN Player1 12
END

// Bodhi abduction.

BEGIN BEARENV

// Bodhi's dialogue at the entrance to the Graveyard.

EXTEND_BOTTOM BODHIAMB 5
IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) Global("BEArenRomanceActive","GLOBAL",2)~ EXTERN BODHIAMB BEArenKidnap
END

CHAIN BODHIAMB BEArenKidnap
@37
== BEArenJ @38
== BODHIAMB @39
END
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("BEArenVC")~ UNSOLVED_JOURNAL @100001
EXIT

A_T_T C6bodhi 21 ~!Global("BEArenVampire","GLOBAL",2)~ DO 0

EXTEND_BOTTOM C6BODHI 21
IF ~Global("BEArenVampire","GLOBAL",2)~ + 23
END

EXTEND_BOTTOM C6BODHI 23
+ ~Global("BEArenVampire","GLOBAL",2)~ + @40 EXTERN C6BODHI BEArenAb
+ ~Global("BEArenVampire","GLOBAL",2)~ + @41 EXTERN C6BODHI BEArenAb
+ ~Global("BEArenVampire","GLOBAL",2)~ + @42 EXTERN C6BODHI BEArenAb
+ ~Global("BEArenVampire","GLOBAL",2)~ + @43 EXTERN C6BODHI BEArenAbConf
END

CHAIN C6BODHI BEArenAbConf
@44
END
IF ~~ EXTERN C6BODHI BEArenAb

CHAIN C6BODHI BEArenAb
@45
== BEARENV @46
== C6BODHI @47
END
IF ~~ EXTERN C6BODHI 28

// Elhan's sages, Oghma, Imnesvale's books, obligatory extra dialogue options.

EXTEND_BOTTOM WARSAGE 0
+ ~!Dead("C6BODHI") OR(2) Global("BEArenVampire","GLOBAL",1) Global("BEArenVampire","GLOBAL",2)~ + @48 EXTERN WARSAGE 6
+ ~PartyHasItem("BEArenB")~ + @49 EXTERN WARSAGE 5
END

EXTEND_BOTTOM DOGHMA 0
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("BEArenB")~ + @50 EXTERN DOGHMA 10
END

EXTEND_BOTTOM IMNBOOK1 0
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("BEArenB")~ + @51 EXTERN IMNBOOK1 4
END

// In the temple of Amaunator

APPEND BEARENP

IF WEIGHT #-1 ~Global("BEArenVampire","GLOBAL",4)~ v1
SAY @52
IF ~~ DO ~EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(7002)
EraseJournalEntry(3716)
EraseJournalEntry(5814)
EraseJournalEntry(16331)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(11864)
EraseJournalEntry(3374)
EraseJournalEntry(3377)
EraseJournalEntry(3927)
SetGlobal("BEArenVampire","GLOBAL",5)~ SOLVED_JOURNAL @100002 + v1.1 // read about @100002 in English/Setup-Branwen.tra
END

IF ~~ v1.1
SAY @53
IF ~~ DO ~EraseJournalEntry(@100001)~ + v1.1a
END

IF ~~ v1.1a
SAY @54
++ @55 DO ~ActionOverride("BEAren",JoinParty())~ EXIT
++ @56 + v1.2
END

IF ~~ v1.2
SAY @57
= @58
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) MoveGlobal("AR0500","BEAren",[4053.255])~ EXIT
END

END // for the APPEND BEARENP


// NON-ESSENTIAL INTERJECTIONS

// Genie in circus tent

I_C_T KGENIE1 3 BEArenKGENIE13
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @59
END

// Viconia

I_C_T VICONI 13 BEArenVICONI13
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @60
END

// Xzar

I_C_T LYROS 5 BEArenLYROS5
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @61
END

// Corneil, goverment building

I_C_T CORNEIL 0 BEArenCORNEIL0
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @62
== CORNEIL IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @63
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @64
== CORNEIL IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @65
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @66
== CORNEIL IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @67
END

I_C_T SHOP08 0 BEArenSHOP080
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @68
== SHOP08 IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @69
END

I_C_T TRAX 7 BEArenTRAX7
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @70
END

I_C_T COWENF2 0 BEArenCOWENF20
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @71
== COWENF2 IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @72
END

// Maevar and Edwin

I_C_T MAEVAR 24 BEArenMAEVAR24
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @73
END

I_C_T MAEVAR 30 BEArenMAEVAR30
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @74
END

I_C_T EDWIN 0 BEArenEDWIN0
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @75
END

I_C_T EDWIN 16 BEArenEDWIN16
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @76
END

// parties

I_C_T SEVPAT01 0 BEArenSEVPAT010
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @77
END

I_C_T HLSION 5 BEArenHLSION5
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @78
END

// Rayic Gethras, Edwin quest
I_C_T DCOWL1 0 BEArenDCOWL10
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @79
END

// Jermien, Imnesvale

I_C_T JUGJER01 0 BEArenJUGJER010
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @80
== JUGJER01 IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @81
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @82
== JUGJER01 IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @83
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @84
== JUGJER01 IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @85
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @86
END

I_C_T MGTEOS01 4 BEArenMGTEOS014
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @87
END

// Valigar joinging dialogue
I_C_T VALYGAR 35 BEArenVALYGAR35
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @88
END

I_C_T VALYGAR 44 BEArenVALYGAR44
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @89
END

I_C_T VALYGAR 3 BEArenVALYGAR3
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @90
END

I_C_T VALYGAR 19 BEArenVALYGAR19
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @91
END

// planar prison


// Tolgerias in goverment building and planar sphere

I_C_T TOLGER 0 BEArenTOLGER0
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @94
END

I_C_T TOLGER2 0 BEArenTOLGER20
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @95
END

I_C_T TOLGER2 2 BEArenTOLGER22
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @95
END

I_C_T TOLGER2 4 BEArenTOLGER24
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @95
END

I_C_T TOLGER2 5 BEArenTOLGER25
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @95
END

// de'Arnise-related

I_C_T NALIA 56 BEArenBEAren56
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @99
END

I_C_T NALIA 75 BEArenBEAren75
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @100
END

I_C_T NALIA 77 BEArenBEAren77
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @102
END

I_C_T NALIAJ 171 BEArenBEArenJ171
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @102
END

// Spellhold

I_C_T PPCOWLED 1 BEArenPPCOWLED1
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @107
END

I_C_T ELEARB01 2 BEArenELEARB012
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @111
END

I_C_T PPIRENI1 3 BEArenPPIRENI13
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @114
END

// The Underdark

I_C_T BREG01 2 BEArenBREG012
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @115
== BREG01 IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @116
END

// Kruin

I_C_T KRUIN 4 BEArenKRUIN4
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @117
== KRUIN IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @118
END

I_C_T KRUIN 6 BEArenKRUIN6
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @117
== KRUIN IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @118
END

I_C_T KRUIN 12 BEArenKRUIN12
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @117
== KRUIN IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @118
END

I_C_T KRUIN 11 BEArenKRUIN11
== KRUIN IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @119
DO ~GiveItemCreate("BEGLOVES",Player1,0,0,0)~
END

// Shangalar - Twisted rune hideout

I_C_T HLSHANG 1 BEArenHLSHANG1
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @120
END

/* 121 to 128 available for extra interjections*/



 





// LOVETALKS START HERE

APPEND BEARENJ

// Talk 1.

IF ~Global("BEArenTalk","GLOBAL",2)~ t1
SAY @129
++ @130 + t1.1
++ @131 + t1.2
++ @132 + t1.3
++ @133 + t.0
END

IF ~~ t.0
SAY @134
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ EXIT
END

IF ~~ t1.1
SAY @135
IF ~~ + t1.4
END

IF ~~ t1.2
SAY @136
IF ~~ + t1.4
END

IF ~~ t1.3
SAY @137
IF ~~ + t1.4
END

IF ~~ t1.4
SAY @138
= @139
= @140
= @141
++ @142 + t1.5
++ @143 + t1.6
++ @144 + t1.7
++ @145 + t1.8
END

IF ~~ t1.5
SAY @146
IF ~~ + t1.8
END

IF ~~ t1.6
SAY @147
= @148
IF ~~ + t1.8
END

IF ~~ t1.7
SAY @149
IF ~~ + t1.8
END

IF ~~ t1.8
SAY @150
++ @151 + t1.9
++ @152 + t1.9
++ @153 + t1.9
++ @154 + t1.9
END

IF ~~ t1.9
SAY @155
= @156
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ EXIT
END

// Talk 2.

IF ~Global("BEArenTalk","GLOBAL",4)~ t2
SAY @157
++ @158 + t2.3
++ @159 + t2.1
++ @160 + t2.2
++ @161 + t.0
END

IF ~~ t2.1
SAY @162
= @163
IF ~~ + t2.3
END

IF ~~ t2.2
SAY @164
IF ~~ + t2.3
END

IF ~~ t2.3
SAY @165
++ @166 + t2.4
++ @167 + t2.4
++ @168 + t.0
END

IF ~~ t2.4
SAY @169
= @170
++ @171 + t2.5
++ @172 + t2.6
++ @173 + t2.6
END

IF ~~ t2.5
SAY @174
= @175
IF ~~ + t2.6
END

IF ~~ t2.6
SAY @176
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ EXIT
IF ~Global("BEArenRomanceActive","GLOBAL",1)~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ + t2.7
END

IF ~~ t2.7
SAY @177
IF ~~ EXIT
END

// Talk 3.

IF ~Global("BEArenTalk","GLOBAL",6)~ t3
SAY @178
++ @179 + t3.2
++ @180 + t3.2
++ @181 + t3.1
END

IF ~~ t3.1
SAY @182
IF ~~ + t3.2
END

IF ~~ t3.2
SAY @183
= @184
++ @185 + t3.3
++ @186 + t3.4
++ @187 + t3.5
END

IF ~~ t3.3
SAY @188
IF ~~ + t3.5
END

IF ~~ t3.4
SAY @189
IF ~~ + t3.5
END

IF ~~ t3.5
SAY @190
= @191
++ @192 + t3.6
++ @193 + t.0
++ @194 + t3.7
++ @195 + t3.7
END

IF ~~ t3.6
SAY @196
IF ~~ + t3.7
END

IF ~~ t3.7
SAY @197
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ EXIT
END

// Talk 4.

IF ~Global("BEArenTalk","GLOBAL",8)~ t4
SAY @198
++ @199 + t4.2
++ @200 + t4.1
++ @201 + t.0
END

IF ~~ t4.1
SAY @202
IF ~~ + t4.2
END

IF ~~ t4.2
SAY @203
= @204
++ @205 + t4.3
++ @206 + t4.4
++ @207 + t4.3
END

IF ~~ t4.3
SAY @208
IF ~~ + t4.5
END

IF ~~ t4.4
SAY @209
IF ~~ + t4.5
END

IF ~~ t4.5
SAY @210
= @211
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ EXIT
IF ~Global("BEArenRomanceActive","GLOBAL",1)~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ + t4.6
END

IF ~~ t4.6
SAY @212
++ @213 + t4.7
++ @214 + t4.8
++ @215 + t4.9
END

IF ~~ t4.7
SAY @216
IF ~~ EXIT
END

IF ~~ t4.8
SAY @217
IF ~~ EXIT
END

IF ~~ t4.9
SAY @218
IF ~~ DO ~SetGlobal("BEArenRomanceActive","GLOBAL",3)~ EXIT
END

// Talk 5.

IF ~Global("BEArenTalk","GLOBAL",10)~ t5
SAY @219
++ @220 + t5.1
++ @221 + t5.1
++ @222 + t5.1
++ @223 + t.0
END

IF ~~ t5.1
SAY @224
= @225
= @226
= @227
++ @228 + t.0
++ @229 + t5.3
++ @230 + t5.2
END

IF ~~ t5.2
SAY @231
IF ~~ + t5.3
END

IF ~~ t5.3
SAY @232
++ @233 + t5.4
++ @234 + t5.4
++ @235 + t5.4
++ @236 + t5.4
END

IF ~~ t5.4
SAY @237
= @238
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ EXIT
END

// Talk 6.

IF ~Global("BEArenTalk","GLOBAL",12)~ t6
SAY @239
= @240
++ @241 + t6.1
++ @242 + t6.2
++ @243 + t6.3
++ @244 + t.0
END

IF ~~ t6.1
SAY @245
IF ~~ + t6.4
END

IF ~~ t6.2
SAY @246
IF ~~ + t6.4
END

IF ~~ t6.3
SAY @247
IF ~~ + t6.4
END

IF ~~ t6.4
SAY @248
= @249
= @250
++ @251 + t6.5
++ @252 + t6.5
++ @253 + t6.5
++ @254 + t6.5
END

IF ~~ t6.5
SAY @255
= @256
++ @257 + t6.6
++ @258 + t6.6
++ @259 + t6.7
++ @260 + t.0
END

IF ~~ t6.6
SAY @261
IF ~~ + t6.8
END

IF ~~ t6.7
SAY @262
IF ~~ + t6.8
END

IF ~~ t6.8
SAY @263
= @264
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ EXIT
IF ~Global("BEArenRomanceActive","GLOBAL",1)~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ + t6.8a
END

IF ~~ t6.8a
SAY @265
++ @266 + t6.9
++ @267 + t6.9
++ @268 + t4.9
END

IF ~~ t6.9
SAY @269
= @270
IF ~~ EXIT
END

// Talk 7.

IF ~Global("BEArenTalk","GLOBAL",14)~ t7
SAY @271
++ @272 + t7.1
++ @273 + t7.1
++ @274 + t7.1
++ @275 + t.0
END

IF ~~ t7.1
SAY @276
= @277
= @278
++ @279 + t7.2
++ @280 + t7.3
++ @281 + t7.3
END

IF ~~ t7.2
SAY @282
++ @283 + t7.2a
++ @284 + t7.3
END

IF ~~ t7.2a
SAY @285
IF ~~ + t7.3
END

IF ~~ t7.3
SAY @286
++ @287 + t7.4
++ @288 + t7.4
++ @289 + t7.4
END

IF ~~ t7.4
SAY @290
= @291
= @292
++ @293 + t7.5
++ @294 + t7.6
END

IF ~~ t7.5
SAY @295
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ EXIT
END

IF ~~ t7.6
SAY @296
IF ~~ + t7.5
END

// Talk 8.

IF ~Global("BEArenTalk","GLOBAL",16)~ t8
SAY @297
++ @298 + t8.1
++ @299 + t8.2
++ @300 + t.0
END

IF ~~ t8.1
SAY @301
IF ~~ + t8.2
END

IF ~~ t8.2
SAY @302
= @303
++ @304 + t8.3
++ @305 + t8.4
++ @306 + t8.5
END

IF ~~ t8.3
SAY @307
IF ~~ + t8.6
END

IF ~~ t8.4
SAY @308
IF ~~ + t8.6
END

IF ~~ t8.5
SAY @309
IF ~~ + t8.6
END

IF ~~ t8.6
SAY @310
+ ~Global("BEArenRomanceActive","GLOBAL",1)~ + @311 + t8.6a
++ @312 + t8.7
++ @313 + t.0
END

IF ~~ t8.6a
SAY @314
IF ~~ + t8.7
END

IF ~~ t8.7
SAY @315
= @316
= @317
++ @318 + t8.8
++ @319 + t8.8
END

IF ~~ t8.8
SAY @320
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ EXIT
IF ~Global("BEArenRomanceActive","GLOBAL",1)~ + t8.10
END

IF ~~ t8.10
SAY @321
= @322
++ @323 + t8.11
++ @324 + t8.11
++ @325 + t8.11
++ @326 + t4.9
END

IF ~~ t8.11
SAY @327
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ EXIT
END

// Talk 9.

IF ~Global("BEArenTalk","GLOBAL",18)~ t9
SAY @328
++ @329 + t9.1
+ ~Gender(Player1,MALE)~ + @330 + t9.2
+ ~Gender(Player1,FEMALE)~ + @330 + t9.2a
++ @331 + t9.3
++ @332 + t9.4
++ @333 + t.0
END

IF ~~ t9.1
SAY @334
IF ~~ + t9.5
IF ~Global("BEArenRomanceActive","GLOBAL",1)~ + t9.1a
END

IF ~~ t9.1a
SAY @335
IF ~~ + t9.5
END

IF ~~ t9.2
SAY @336
IF ~~ + t9.5
END

IF ~~ t9.2a
SAY @337
IF ~~ + t9.5
END

IF ~~ t9.3
SAY @338
IF ~~ + t9.5
END

IF ~~ t9.4
SAY @339
IF ~~ + t9.5
END

IF ~~ t9.5
SAY @340
= @341
++ @342 + t9.6
++ @343 + t9.7
++ @344 + t9.7
END

IF ~~ t9.6
SAY @345
IF ~~ + t9.7
END

IF ~~ t9.7
SAY @346
= @347
++ @348 + t9.8
++ @349 + t9.9
++ @350 + t9.9
++ @351 + t9.10
END

IF ~~ t9.8
SAY @352
IF ~~ + t9.10
END

IF ~~ t9.9
SAY @353
IF ~~ + t9.10
END

IF ~~ t9.10
SAY @354
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ EXIT
END

// Talk 10.

IF ~Global("BEArenTalk","GLOBAL",20)~ t10
SAY @355
++ @356 + t10.2
++ @357 + t10.2
++ @358 + t10.1
++ @359 + t.0
END

IF ~~ t10.1
SAY @360
IF ~~ + t10.2
END

IF ~~ t10.2
SAY @361
++ @362 + t10.3
++ @363 + t10.3
++ @364 + t.0
END

IF ~~ t10.3
SAY @365
++ @366 + t10.5
++ @367 + t10.6
++ @368 + t10.7
++ @369 + t10.8
++ @370 + t10.9
END


IF ~~ t10.5
SAY @371
= @372
= @373
= @374
= @375
IF ~~ + t10.9
END

IF ~~ t10.6
SAY @376
= @377
= @378
IF ~~ + t10.9
END

IF ~~ t10.7
SAY @379
IF ~~ + t10.7b
END

IF ~~ t10.7b
SAY @381
= @382
IF ~~ + t10.9
END

IF ~~ t10.8
SAY @383
= @384
= @385
IF ~~ + t10.9
END

IF ~~ t10.9
SAY @386
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ EXIT
IF ~Global("BEArenRomanceActive","GLOBAL",1)~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ + t10.10
END

IF ~~ t10.10
SAY @387
++ @388 + t10.11
++ @389 + t10.11
++ @390 + t.0
END

IF ~~ t10.11
SAY @391
= @392
IF ~~ EXIT
END

// Talk 11. 

IF ~Global("BEArenTalk","GLOBAL",22)~ t11
SAY @393
++ @394 + t11.1
++ @395 + t11.1
++ @396 + t.0
END

IF ~~ t11.1
SAY @397
= @398
++ @399 + t11.2
++ @400 + t11.2
++ @401 + t11.3
++ @402 + t11.4
END

IF ~~ t11.2
SAY @403
IF ~~ + t11.5
END

IF ~~ t11.3
SAY @404
IF ~~ + t11.5
END

IF ~~ t11.4
SAY @405
IF ~~ + t11.5
END

IF ~~ t11.5
SAY @406
= @407
= @408
++ @409 + t11.6
++ @410 + t.0
END

IF ~~ t11.6
SAY @411
= @412
= @413
= @414
++ @415 + t11.7
++ @416 + t11.8
++ @417 + t11.9
END

IF ~~ t11.7
SAY @418
IF ~~ + t11.10
END

IF ~~ t11.8
SAY @419
IF ~~ + t11.10
END

IF ~~ t11.9
SAY @420
IF ~~ + t11.10
END

IF ~~ t11.10
SAY @421
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ EXIT
END

// Talk 12.

IF ~Global("BEArenTalk","GLOBAL",24)~ t12
SAY @422
++ @423 + t12.1
++ @424 + t12.2
++ @425 + t12.3
++ @426 + t12.4
++ @427 + t12.5
++ @428 + t12.6
++ @429 + t12.7
++ @430 + t.0
END

IF ~~ t12.1
SAY @431
IF ~~ + t12.8
END

IF ~~ t12.2
SAY @432
IF ~~ + t12.8
END

IF ~~ t12.3
SAY @433
IF ~~ + t12.8
END

IF ~~ t12.4
SAY @434
IF ~~ + t12.8
END

IF ~~ t12.5
SAY @435
IF ~~ + t12.8
END

IF ~~ t12.6
SAY @436
IF ~~ + t12.8
END

IF ~~ t12.7
SAY @437
IF ~~ + t12.8
END

IF ~~ t12.8
SAY @438
= @439
= @440
++ @441 + t12.8b
++ @442 + t12.8a
END

IF ~~ t12.8a
SAY @443
IF ~~ + t12.8b
END

IF ~~ t12.8b
SAY @444
++ @445 + t12.9
++ @446 + t12.9
++ @447 + t12.9
END

IF ~~ t12.9
SAY @448
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ EXIT
IF ~Global("BEArenRomanceActive","GLOBAL",1)~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ + t12.10
END

IF ~~ t12.10
SAY @449
= @450
IF ~~ EXIT
END

// Talk 13.

IF ~Global("BEArenTalk","GLOBAL",26)~ t13
SAY @451
++ @452 + t13.1
++ @453 + t13.2
++ @454 + t13.3
++ @455 + t.0
END

IF ~~ t13.1
SAY @456
IF ~~ + t13.4
END

IF ~~ t13.2
SAY @457
IF ~~ + t13.4
END

IF ~~ t13.3
SAY @458
IF ~~ + t13.4
END

IF ~~ t13.4
SAY @459
++ @460 + t13.5
++ @461 + t13.7
++ @462 + t13.6
END

IF ~~ t13.5
SAY @463
IF ~~ + t13.7
END

IF ~~ t13.6
SAY @464
IF ~~ + t13.7
END

IF ~~ t13.7
SAY @465
= @466
++ @467 + t13.8
++ @468 + t13.8
++ @469 + t13.8
END

IF ~~ t13.8
SAY @470
= @471
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ EXIT
END

// Talk 14.

IF ~Global("BEArenTalk","GLOBAL",28)~ t14
SAY @472
++ @473 + t14.1
++ @161 + t.0
END

IF ~~ t14.1
SAY @474
= @475
= @476
++ @477 + t14.2
++ @478 + t14.3
++ @479 + t14.3
END

IF ~~ t14.2
SAY @480
IF ~~ + t14.4
END

IF ~~ t14.3
SAY @481
IF ~~ + t14.4
END

IF ~~ t14.4
SAY @482
++ @377 + t14.7
++ @483 + t14.5
++ @484 + t14.6
END

IF ~~ t14.5
SAY @485
IF ~~ + t14.7
END

IF ~~ t14.6
SAY @486
IF ~~ + t14.7
END

IF ~~ t14.7
SAY @487
IF ~~ + t14.8
IF ~Global("BEArenRomanceActive","GLOBAL",1)~ + t14.9
END

IF ~~ t14.8
SAY @488
IF ~~ + t14.10
END

IF ~~ t14.9
SAY @489
IF ~~ + t14.10
END

IF ~~ t14.10
SAY @490
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1) RealSetGlobalTimer("BEArenTimer","GLOBAL",2400)~ EXIT
END

// Talk 15.

IF ~Global("BEArenTalk","GLOBAL",30)~ t15
SAY @491
= @492
++ @493 + t15.1
++ @494 + t15.3
++ @495 + t15.2
++ @496 + t.0
END

IF ~~ t15.1
SAY @497
IF ~~ + t15.3
END

IF ~~ t15.2
SAY @498
IF ~~ + t15.3
END

IF ~~ t15.3
SAY @499
= @500
++ @501 + t15.5
++ @502 + t15.4
++ @503 + t15.5
END

IF ~~ t15.4
SAY @504
IF ~~ + t15.5
END

IF ~~ t15.5
SAY @505
= @506
++ @507 + t15.6
++ @508 + t15.6
++ @509 + t15.6
++ @510 + t15.6
END

IF ~~ t15.6
SAY @511
= @512
IF ~~ DO ~IncrementGlobal("BEArenTalk","GLOBAL",1)~ EXIT 
END


// Extra talks: An hour into Chapter 5.

IF ~Global("BEArenTalkSoul","GLOBAL",1)~ t17
SAY @532
++ @533 + t17.1
++ @534 + t17.1
++ @535 + t17.1
++ @536 + t17.0
END

IF ~~ t17.0
SAY @537
IF ~~ DO ~IncrementGlobal("BEArenTalkSoul","GLOBAL",1)~ EXIT
END

IF ~~ t17.1
SAY @538
= @539
++ @540 + t17.2
++ @541 + t17.2
++ @542 + t17.2
++ @543 + t17.2
END

IF ~~ t17.2
SAY @544
= @545
= @546
++ @547 + t17.3
++ @548 + t17.4
++ @549 + t17.5
END

IF ~~ t17.3
SAY @550
IF ~~ + t17.5
END

IF ~~ t17.4
SAY @551
IF ~~ + t17.5
END

IF ~~ t17.5
SAY @552
= @553
IF ~~ DO ~IncrementGlobal("BEArenTalkSoul","GLOBAL",1)~ EXIT
END

// Lovetalk 1, at rest, after talk 1 happened.

IF ~Global("BEArenLovetalk","GLOBAL",2)~ l1
SAY @554
++ @555 + l1.1
++ @556 + l1.2
++ @557 + l1.3a
++ @558 + l.0
END

IF ~~ l.0
SAY @559
IF ~~ DO ~IncrementGlobal("BEArenLovetalk","GLOBAL",1) SetGlobal("BEArenRomanceActive","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ l1.1
SAY @560
IF ~~ + l1.3
END

IF ~~ l1.2
SAY @561
IF ~~ + l1.3
END

IF ~~ l1.3a
SAY @562
IF ~~ + l1.3
END

IF ~~ l1.3
SAY @563
++ @564 + l1.4
++ @565 + l1.5
END

IF ~~ l1.4
SAY @566
IF ~~ + l1.6
END

IF ~~ l1.5
SAY @567
IF ~~ + l1.6
END

IF ~~ l1.6
SAY @568
++ @569 + l1.6a
++ @570 + l.0
END

IF ~~ l1.6a
SAY @571
++ @572 + l1.7
++ @573 + l1.7
++ @574 + l.0
END

IF ~~ l1.7
SAY @575
= @576
++ @577 + l1.8
++ @578 + l1.8
++ @579 + l.0
END

IF ~~ l1.8
SAY @580
++ @581 + l1.9
++ @582 + l1.10
END

IF ~~ l1.9
SAY @583
= @584
IF ~~ DO ~IncrementGlobal("BEArenLovetalk","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ l1.10
SAY @585
IF ~~ + l1.9
END

// Lovetalk 2, at rest, after talk 15 happens.

IF ~Global("BEArenLovetalk","GLOBAL",4)~ l2
SAY @586
++ @587 + l2.0
++ @588 + l.0
END

IF ~~ l2.0
SAY @589
++ @590 + l2.1
++ @591 + l.0
END

IF ~~ l2.1
SAY @592
= @593
= @594
++ @595 + l2.2
++ @596 + l2.2
++ @597 + l2.2
++ @598 + l2.1a
++ @599 + l.0
END

IF ~~ l2.1a
SAY @600
++ @601 + l2.2
++ @602 + l.0
++ @603 + l.0
END

IF ~~ l2.2
SAY @604
= @605
IF ~~ DO ~IncrementGlobal("BEArenLovetalk","GLOBAL",1) SetGlobal("BEArenRomanceActive","GLOBAL",2) RestParty()~ EXIT
END

// Wakeup talk to lovetalk 2.

IF ~Global("BEArenLovetalk","GLOBAL",6)~ l3
SAY @606
++ @607 + l3.1
++ @608 + l3.1
++ @609 + l3.0
END

IF ~~ l3.0
SAY @610
IF ~~ + l3.1
END

IF ~~ l3.1
SAY @611
++ @612 + l3.2
++ @613 + l3.3
END

IF ~~ l3.2
SAY @614
IF ~~ DO ~IncrementGlobal("BEArenLovetalk","GLOBAL",1) RealSetGlobalTimer("BEArenLoveTimer","GLOBAL",2400) RestParty()~ EXIT // we set the timer for the next lovetalk, lovetalk 4
END

IF ~~ l3.3
SAY @615
IF ~~ DO ~IncrementGlobal("BEArenLovetalk","GLOBAL",1) RealSetGlobalTimer("BEArenLoveTimer","GLOBAL",2400)~ EXIT
END

// Lovetalk 4, an hour after lovetalk 3

IF ~Global("BEArenLovetalk","GLOBAL",8)~ l4
SAY @616
++ @617 + l4.1
++ @618 + l4.1
++ @619 + l4.2
++ @620 + l4.0
END

IF ~~ l4.0
SAY @621
IF ~~ DO ~IncrementGlobal("BEArenLovetalk","GLOBAL",1)~ EXIT
END

IF ~~ l4.1
SAY @622
IF ~~ + l4.2
END

IF ~~ l4.2
SAY @623
= @624
= @625
++ @626 + l4.3
++ @627 + l4.3
++ @628 + l4.3
++ @629 + l4.0
END

IF ~~ l4.3
SAY @630
= @631
++ @632 + l4.4
++ @633 + l4.4
++ @634 + l4.0
END

IF ~~ l4.4
SAY @635
= @636
IF ~~ DO ~IncrementGlobal("BEArenLovetalk","GLOBAL",1)~ EXIT
END

END // END for APPEND


// Areen quest-related

APPEND BEARENJ
// Graveyard District Quest Trigger
//IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ BEArenGraveyardQuest
IF ~Global("BEArenQuest","GLOBAL",1)~ BEArenGraveyardQuest
SAY @1000
++ @1001 + BEArenGraveyardQuest1
++ @1002 + BEArenGraveyardQuest2
++ @1003 + BEArenGraveyardQuest3
END

IF ~~ BEArenGraveyardQuest1
SAY @1004
= @1005
IF ~~ DO ~SetGlobal("BEArenQuest","GLOBAL",2) AddJournalEntry(@10002, QUEST)~ EXIT
END

IF ~~ BEArenGraveyardQuest2
SAY @1006
= @1007
++ @1001 + BEArenGraveyardQuest1
++ @1003 + BEArenGraveyardQuest3
END

IF ~~ BEArenGraveyardQuest3
SAY @1008 /* I understand. We can return when the situation is less pressing. */
  IF ~~ DO ~SetGlobal("BEArenQuest","GLOBAL",2) AddJournalEntry(@10002, QUEST)~ EXIT
END

END // END of the quest APPEND


// Quest related lines
I_C_T BESELEM 0 BEAreenThayze01
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @2001
END

I_C_T BELORDSE 0 BEAreenLordSelemchant01
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @3001
END

I_C_T BELORDSE 1 BEAreenLordSelemchant11
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @3003
END

I_C_T BELORDSE 5 BEAreenLordSelemchant51
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @3004
END

I_C_T BESELCAP 0 BEAreenSelemchantCaptain01
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @5011
END