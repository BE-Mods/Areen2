EXTEND_TOP FATESP 6 #2
+ ~!Dead("BEAren") !InMyArea("BEAren") Global("BEArenSummoned","GLOBAL",0)~ + @0
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("BEAren25",[1999.1228],0) 
SetGlobal("BEArenSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("BEAren") !InMyArea("BEAren") Global("BEArenSummoned","GLOBAL",0)
/*Gender(Player1,MALE)*/ OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC)~ + @1
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
SetGlobal("BEArenRomanceActive","GLOBAL",2)
CreateCreature("BEAren25",[1999.1228],0) 
SetGlobal("BEArenSummoned","GLOBAL",1)~ GOTO 8
END
