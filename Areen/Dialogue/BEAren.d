BEGIN BEAREN

CHAIN IF ~Global("BEArenMet","GLOBAL",0)~ THEN BEAren b1
@1
DO ~SetGlobal("BEArenMet","GLOBAL",1)~
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @2
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3
== BEAren @4
END 
++ @5 EXTERN BEAren b1.1
++ @6 EXTERN BEAren b1.2

CHAIN BEAren b1.1
@7
END
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @8 EXTERN BEAren b1.3
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @9 EXTERN BEAren b1.4
++ @10 EXTERN BEAren b1.join

CHAIN BEAren b1.2
@11
EXIT

CHAIN BEAren b1.3
@12
END
IF ~~ EXTERN BEAren b1.join 

CHAIN BEAren b1.4
@13
END
IF ~~ EXTERN BEAren b1.join 

CHAIN BEAren b1.join
@14
DO ~JoinParty()~
EXIT


APPEND BEAREN

IF ~Global("BEArenMet","GLOBAL",1)~ b2
SAY @15
++ @16 + b1.1
++ @17 + b1.2
END 

END // This is an end to APPEND
