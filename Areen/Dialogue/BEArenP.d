// Read this dialogue file second, after BEAren.d.

BEGIN BEArenP

// This is the file we use when Branwen leaves the party. She can leave the party in two cases: first, she's VERY unhappy with the player's actions, and second, the player kicked her out.
// I use SAY here, since there is no one else but the player and Branwen.

// Just copy this and use your own filenames and variable names. Don't forget your very own modding prefix!

IF ~Global("BEArenKickedOut","GLOBAL",0) HappinessLT(Myself,-299)~ b1
SAY @0 /* By Auril's frozen breath, I am leaving! May Tempus someday show you the error of your ways. */
IF ~~ DO ~EscapeArea()~ EXIT
END

// The player kicks Branwen out. The list of areas is the same for every NPC in the game. Use iesdp.gibberlings3.net to find out what each area code means.

IF ~Global("BEArenKickedOut","GLOBAL",0)~ b2
SAY @1 /* We have fought well and we have fought bravely. Tempus willing, perhaps I will fight at your side again someday. */
++ @2 /* My mistake. Please, don't leave. */ DO ~JoinParty()~ EXIT
+ ~!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")~ + @3 /* Of course. Wait for me in the Waukeen's Promenade. */ DO ~SetGlobal("BEArenKickedOut","GLOBAL",1) MoveGlobal("AR0700","BEAren",[2552.502])~ EXIT 
+ ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")~ + @4 /* Just wait for me here. */ DO ~SetGlobal("BEArenKickedOut","GLOBAL",1)~ EXIT
END

// If you have kicked Branwen out and told her to wait right here or in the Bridge District, here's the dialogue she is going to have(remember, BEArenKickedOut is at 1).

IF ~Global("BEArenKickedOut","GLOBAL",1)~ b3
SAY @5 /* By Tempus, you have returned! Are we to join again and fight as mighty warriors should? Say it is so! */
++ @6 /* I have. Please, join me. */ + b3.1
++ @7 /* Not at the moment. */ + b3.2
END 

IF ~~ b3.1
SAY @8 /* A triumphant day, indeed! I welcome your company once again! */
IF ~~ DO ~SetGlobal("BEArenKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @9 /* Too bad. */
IF ~~ EXIT
END
