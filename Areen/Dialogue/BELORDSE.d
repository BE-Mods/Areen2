BEGIN BELORDSE

IF ~NumTimesTalkedTo(0)~ THEN BEGIN BELordSelemchant1
   SAY @3000
   = @3002
   = @3004
   ++ @3005 + BELordSelemchant0
   ++ @3006 + BELordSelemchant2
END

IF ~~ BELordSelemchant0
  SAY @3008
  IF ~~ DO ~SetGlobal("BEArenQuest","GLOBAL",4) AddJournalEntry(@10004, QUEST)~ EXIT
END

IF ~~ BELordSelemchant2
  SAY @3007
  = @3008
  IF ~~ DO ~SetGlobal("BEArenQuest","GLOBAL",4) AddJournalEntry(@10004, QUEST)~ EXIT
END

IF ~PartyHasItem("BEMEDAL")~ THEN BEGIN BELordSelemchantEnd1
   SAY @3009
   IF ~~ DO ~SetGlobal("BEArenQuest","GLOBAL",9) AddJournalEntry(@10008, QUEST) EscapeArea()~ EXIT
END

IF ~Global("BEArenQuest","GLOBAL",12)~ THEN BEGIN BELordSelemchantBad
   SAY @3010
   IF ~~ DO ~SetGlobal("BESelemchantAmbush","GLOBAL",1) AddJournalEntry(@10011, QUEST) EscapeArea()~ EXIT
END