BEGIN BESELEM

IF ~NumTimesTalkedTo(0)~ THEN BEGIN BEThayzeFirst1
   SAY @2000
   = @2002
   = @2003
   ++ @2004 + BEThayzeFirst2
END

IF ~~ BEThayzeFirst2
  SAY @2005
  = @2006
  IF ~~ DO ~SetGlobal("BEArenQuest","GLOBAL",3) AddJournalEntry(@10003, QUEST)~ EXIT
END

IF ~PartyHasItem("BEMEDAL")~ THEN BEGIN BEThayzeSecond1
   SAY @2007
   IF ~~ DO ~SetGlobal("BEArenQuest","GLOBAL",9) TakePartyItem("BEMEDAL") DestroyItem("BEMEDAL") DestroySelf()~ EXIT
END

IF ~Global("BEArenQuest","GLOBAL",20)~ THEN BEGIN BEThayzeFight
   SAY @2008
   IF ~~ DO ~DestroySelf() AddJournalEntry(@10009, QUEST) CreateCreature("BANSHE01",[360.302],13)~ EXIT
END