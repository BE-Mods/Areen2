BEGIN BEAREN25

// Non-romanced, just summoned

IF ~Global("BEArenSummoned","GLOBAL",1) !Global("BEArenRomanceActive","GLOBAL",2)~ b1
SAY @0
++ @1 DO ~SetGlobal("BEArenSummoned","GLOBAL",2)~ + b1.1
++ @2 DO ~SetGlobal("BEArenSummoned","GLOBAL",2)~ + b1.1
END

IF ~~ b1.1
SAY @3
= @4
= @5
++ @6 + b1.2
++ @7 + b1.3
END

IF ~~ b1.2
SAY @8
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b1.3
SAY @9
IF ~~ DO ~MoveToPointNoInterrupt([1717.1717]) Face(0)~ EXIT
END

// Romanced, just summoned

IF ~Global("BEArenSummoned","GLOBAL",1) Global("BEArenRomanceActive","GLOBAL",2)~ b2
SAY @10
++ @11 DO ~SetGlobal("BEArenSummoned","GLOBAL",2)~ + b1.2
++ @12 DO ~SetGlobal("BEArenSummoned","GLOBAL",2)~ + b1.3
END

// If you haven't let join the first time

IF ~Global("BEArenSummoned","GLOBAL",2)~ b3
SAY @13
++ @14 + b3.1
++ @15 + b3.2
END 

IF ~~ b3.1
SAY @16
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @17
IF ~~ EXIT
END