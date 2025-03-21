BEGIN BEBRYSNE

IF ~NumTimesTalkedTo(0)~ THEN BEGIN BEBrysne1
   SAY @4000
   ++ @4001 + BEBrysne2
   ++ @4002 + BEBrysne2
END

IF ~~ BEBrysne2
  SAY @4003
  ++ @4004 + BEBrysne3
END

IF ~~ BEBrysne3
  SAY @4005
  = @4006
  IF ~~ DO ~SetGlobal("BEArenQuest","GLOBAL",5) AddJournalEntry(@10005, QUEST)~ EXIT
END


IF ~Global("BEArenQuest","GLOBAL",5) PartyHasItem("AMUL14")~ THEN BEGIN BEBrysne4
   SAY @4007
   IF ~~ DO ~SetGlobal("BEArenQuest","GLOBAL",6) AddJournalEntry(@10006, QUEST)~ EXIT
END

