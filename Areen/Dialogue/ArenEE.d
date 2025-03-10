// Crossmod for BG2EE

// Dorn

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenDorn1","GLOBAL",0)~ THEN BDORN BEArenDorn1
@0
DO ~SetGlobal("BEArenDorn1","GLOBAL",1)~
== BEBAREN @1
== BDORN @2
== BEBAREN @3
== BDORN @4
== BEBAREN @5
EXIT

CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenDorn2","GLOBAL",0)~ THEN BEBAREN BEArenDorn2
@6
DO ~SetGlobal("BEArenDorn2","GLOBAL",1)~
== BDORN @7
== BEBAREN @8
== BDORN @9
== BEBAREN @10
== BDORN @11
EXIT

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenDorn3","GLOBAL",0)~ THEN BDORN BEArenDorn3
@12
DO ~SetGlobal("BEArenDorn3","GLOBAL",1)~
== BEBAREN @13
== BDORN @14
== BEBAREN @15
== BDORN @16
EXIT

// ToB

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenToBDorn1","GLOBAL",0)~ THEN BDORN25 BEArenToBDorn1
@17
DO ~SetGlobal("BEArenToBDorn1","GLOBAL",1)~
== BEBARE25 @18
== BDORN25 @19
== BEBARE25 @20
== BDORN25 @21
== BEBARE25 @22
== BDORN25 @23
== BEBARE25 @24
EXIT

// Hexxat

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenHexxat1","GLOBAL",0)~ THEN BHEXXAT BEArenHexxat1
@25
DO ~SetGlobal("BEArenHexxat1","GLOBAL",1)~
== BEBAREN @26
== BHEXXAT @27
== BEBAREN @28
EXIT

// ToB

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenToBHexxat1","GLOBAL",0)~ THEN BHEXXA25 BEArenToBHexxat1
@29
DO ~SetGlobal("BEArenToBHexxat1","GLOBAL",1)~
== BEBARE25 @30
== BHEXXA25 @31
EXIT

// Neera

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenNeera1","GLOBAL",0)~ THEN BEBAREN BEArenNeera1
@32
DO ~SetGlobal("BEArenNeera1","GLOBAL",1)~
== BNEERA @33
== BEBAREN @34
== BNEERA @35
== BEBAREN @36
== BNEERA @37
== BEBAREN @38
== BNEERA @39
== BEBAREN @40
== BNEERA @41
== BEBAREN @42
== BNEERA @43
== BEBAREN @44
EXIT

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenNeera2","GLOBAL",0)~ THEN BNEERA BEArenNeera2
@45
DO ~SetGlobal("BEArenNeera2","GLOBAL",1)~
== BEBAREN @46
== BNEERA @47
== BEBAREN @48
== BNEERA @49
== BEBAREN @50
== BNEERA @51
EXIT

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenNeera3","GLOBAL",0)~ THEN BEBAREN BEArenNeera3
@52
DO ~SetGlobal("BEArenNeera3","GLOBAL",1)~
== BNEERA @53
== BEBAREN @54
== BNEERA @55
== BEBAREN @56
== BNEERA @57
== BEBAREN @58
== BNEERA @59
== BEBAREN @60
== BNEERA @61
EXIT

// ToB 

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenNeeraToB1","GLOBAL",0)~ THEN BEBARE25 BEArenNeeraToB1
@62
DO ~SetGlobal("BEArenNeeraToB1","GLOBAL",1)~
== BNEERA25 @63
== BEBARE25 @64
== BNEERA25 @65
== BEBARE25 @66
== BNEERA25 @67
== BEBARE25 @68
== BNEERA25 @69
== BEBARE25 @70
EXIT

// Rasaad

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenRasaad1","GLOBAL",0)~ THEN BEBAREN BEArenRasaad1
@71
DO ~SetGlobal("BEArenRasaad1","GLOBAL",1)~
== BRASAAD @72
== BEBAREN @73
== BRASAAD @74
== BEBAREN @75
== BRASAAD @76
== BEBAREN @77
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenRasaad2","GLOBAL",0)~ THEN BEBAREN BEArenRasaad2
@78
DO ~SetGlobal("BEArenRasaad2","GLOBAL",1)~
== BRASAAD @79
== BEBAREN @80
== BRASAAD @81
== BEBAREN @82
== BRASAAD @83
== BEBAREN @84
EXIT

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenRasaad3","GLOBAL",0)~ THEN BRASAAD BEArenRasaad3
@85
DO ~SetGlobal("BEArenRasaad3","GLOBAL",1)~
== BEBAREN @86
== BRASAAD @87
== BEBAREN @88
== BRASAAD @89
== BEBAREN @90
== BRASAAD @91
== BEBAREN @92
EXIT

// ToB

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenToBRasaad1","GLOBAL",0)~ THEN BEBARE25 BEArenToBRasaad1
@93
DO ~SetGlobal("BEArenToBRasaad1","GLOBAL",1)~
== BRASAA25 @94
== BEBARE25 @95
== BRASAA25 @96
== BEBARE25 @97
== BRASAA25 @98
== BEBARE25 @99
== BRASAA25 @100
EXIT
