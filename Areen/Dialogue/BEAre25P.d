// Read this after all SoA dialogue. Start reading with BEAren.d
// This is a dialogue file for Branwen's kickout in ToB.

BEGIN BEARE25P

// This code(area codes especially) has been borrowed from the game and altered somewhat.

IF ~Global("BEArenToBKickedOut","GLOBAL",0)~ b1
SAY @0 /* We have fought well and we have fought bravely. Tempus willing, perhaps I will fight at your side again someday. */
++ @1 /* My mistake. Please, don't leave. */ DO ~JoinParty()~ EXIT
+ ~AreaCheck("AR4500")~ + @2 /* Just wait for me here. */ DO ~SetGlobal("BEArenToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1717.1717]) Face(0)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @2 /* Just wait for me here. */ DO ~SetGlobal("BEArenToBKickedOut","GLOBAL",1)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @3 /* I am sending you to the pocket plane. Wait for me there. */ DO ~SetGlobal("BEArenToBKickedOut","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1725.1725],0)~ EXIT // Naturally, I recommend you to choose another set of coordinates for your NPC. This is where they'll wait for PC in the Pocket Plane.
END

// Branwen is not in party, waiting for you.

IF ~Global("BEArenToBKickedOut","GLOBAL",1)~ b2
SAY @4 /* By Tempus, you have returned! Are we to join again and fight as mighty warriors should? Say it is so! */
++ @5 /* I have. Please, join me. */ + b2.1
++ @6 /* Not at the moment. */ + b2.2
END 

IF ~~ b2.1
SAY @7 /* A triumphant day, indeed! I welcome your company once again! */
IF ~~ DO ~SetGlobal("BEArenToBKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b2.2
SAY @8 /* Too bad. */
IF ~~ EXIT
END

