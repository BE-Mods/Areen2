BEGIN BESELCAP

IF ~NumTimesTalkedTo(0) !Global("BESelemchantAmbush","GLOBAL",2)~ THEN BEGIN BESelemchantCaptain1
   SAY @5000
   ++ @5001 + BESelemchantCaptain2
   ++ @5002 + BESelemchantCaptain3
   ++ @5003 + BESelemchantCaptain4
END

IF ~~ BESelemchantCaptain3
  SAY @5005
  ++ @5001 + BESelemchantCaptain2
  ++ @5003 + BESelemchantCaptain4
END

IF ~~ BESelemchantCaptain2
  SAY @5004
  IF ~~ DO ~SetGlobal("BEArenQuest","GLOBAL",8) AddJournalEntry(@10007, QUEST) EscapeArea()~ EXIT
END

IF ~~ BESelemchantCaptain4
  SAY @5006
  IF ~~ DO ~SetGlobal("BEArenQuest","GLOBAL",8) AddJournalEntry(@10007, QUEST) Enemy()~ EXIT
END


IF ~NumTimesTalkedTo(0) Global("BESelemchantAmbush","GLOBAL",2)~ BESelemchantCaptainAmbush1
  SAY @5007
  ++ @5008 + BESelemchantCaptainAmbush2
  ++ @5009 + BESelemchantCaptainAmbush2
END

IF ~~ BESelemchantCaptainAmbush2
  SAY @5010
  IF ~~ DO ~SetGlobal("BESelemchantAmbush","GLOBAL",3) AddJournalEntry(@10012, QUEST_DONE) Enemy()~ EXIT
END