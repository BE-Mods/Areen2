BEGIN BESELEM2

IF ~NumTimesTalkedTo(0)~ THEN BEGIN BEThayze
   SAY @6000
   = @6001
   IF ~~ DO ~SetGlobal("BEArenQuest","GLOBAL",11) AddJournalEntry(@10010, QUEST) DestroySelf()~ EXIT
END