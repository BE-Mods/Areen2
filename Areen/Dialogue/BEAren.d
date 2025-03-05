// Read this dialogue file FIRST.

// As for Branwen's scripts, I recommend to start with BEArenS.baf.

BEGIN BEAREN

CHAIN IF ~Global("BEArenMet","GLOBAL",0)~ THEN BEAren b1 
@0 /* <CHARNAME>! By Tempus, 'tis good to see you again! I feared you had perished! */
DO ~SetGlobal("BEArenMet","GLOBAL",1)~ 
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @2 /* Little Branwen is back! Look, Boo, isn't it a proper reunion? Minsc and Boo and Branwen and friends! */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @4 /* Well met, Branwen. It is good to see you once more. */
== BEAren @5 /* I've learnt about mystery murders in this district and I've come to investigate. I am glad indeed that I've met you here! 'Twould be an honor to travel with you again. */
END 
++ @6 /* It would be my pleasure, Branwen. */ EXTERN BEAren b1.1 
++ @7 /* Not at this time. */  EXTERN BEAren b1.2

// CHAIN requires EXTERN DIALOGUENAME, because the game needs to know which dialogue file to go to. It could be EXTERN VICONIJ, and then Viconia would speak.

CHAIN BEAren b1.1
@8 /* I am glad to be part of your war party. I will not make you regret your decision! */
END
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @9 /* I should probably tell you that I am going to rescue Imoen from the Cowled Wizards. */ EXTERN BEAren b1.3
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @10 /* I am going to find Irenicus, the mage who kidnapped and tortured me. */ EXTERN BEAren b1.4
++ @11 /* All right, let's go. */ EXTERN BEAren b1.join

CHAIN BEAren b1.2
@12 /* It's an insult to my honor to refuse my services, but the choice is yours. */
EXIT

CHAIN BEAren b1.3
@13 /* You have saved me, and for that I owe you my life. I am indebted to you, and, by Tempus, I leave no debt unpaid! Let us save Imoen together. */
END
IF ~~ EXTERN BEAren b1.join 

CHAIN BEAren b1.4
@14 /* Then I shall join you and bring the favor of the Lord of Battles upon us. Let the wizard tremble in his lair! */
END
IF ~~ EXTERN BEAren b1.join 

CHAIN BEAren b1.join
@15 /* Come, tell me of your new adventures as we walk. */
DO ~JoinParty()~ // When Branwen joins, she will use her BEArenJ dialogue - J for "joined"
EXIT

// If you're going to end the CHAIN, use EXIT. If you have replies or you want to move to another state, it's END. 

// APPEND is a command we always use, if we want to switch from CHAIN to SAY. We'll have to use END in the end, because APPEND is like a begin.

APPEND BEAren

// This dialogue will trigger every time you talk to Branwen, if you didn't take her in your party. Remember BEArenMet? It's at 1 now. We're not going to set it to 2 here: we'll need this dialogue if you click on Branwen again.

IF ~Global("BEArenMet","GLOBAL",1)~ b2 
SAY @16 /* Perhaps you have changed your mind, and now need my skills? */
++ @17 /* I have indeed. Welcome aboard. */ + b1.1
++ @18 /* Not at the moment. */ + b1.2
END 

// Note that b2 is another unique dialogue name. Also note that we've written b1.1 and b1.2 already - look above. Seems like cheating, doesn't it? But it's very convenient.

// CHAIN and SAY are different. There's no SAY in CHAIN. CHAIN uses END before replies, SAY - after replies. 
// SAY differs from CHAIN in other ways, too: instead of EXIT, it's IF ~~ EXIT and then END.
// And, yes, you're going to mix SAY and CHAIN at some point, and, yes, syntax errors are frustrating.

END // This is an end to APPEND
