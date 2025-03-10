BEGIN BEARE25J

// Volo's obligatory interjection in Saradush.

EXTEND_TOP SARVOLO 9 #2
+ ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) !Global("BEArenRomanceActive","GLOBAL",2)~ + @0 + BEArenVoloBio1
+ ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) Global("BEArenRomanceActive","GLOBAL",2)~ + @0 + BEArenVoloBio2
END

CHAIN SARVOLO BEArenVoloBio1
@1
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @2
EXTERN SARVOLO 9

CHAIN SARVOLO BEArenVoloBio2
@3
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @4
EXTERN SARVOLO 9

// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// non-romanced

I_C_T FINSOL01 27 BEArenSolarFriend1
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) !Global("BEArenRomanceActive","GLOBAL",2)~ THEN @5
END

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) Global("BEArenRomanceActive","GLOBAL",2) Global("BEArenSolarPers","GLOBAL",0)~ DO ~SetGlobal("BEArenSolarPers","GLOBAL",1)~ EXTERN BEARE25J BEArenSolarPers
END

CHAIN BEARE25J BEArenSolarPers
@6
END
++ @7 EXTERN BEARE25J BEArenSolarPers1.1
++ @8 EXTERN BEARE25J BEArenSolarPers1.1
++ @9 EXTERN BEARE25J BEArenSolarPers1.1

CHAIN BEARE25J BEArenSolarPers1.1
@10
= @11
= @12
END
COPY_TRANS FINSOL01 27

// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) Global("BEArenRomanceActive","GLOBAL",2) Global("BEArenSolarLeave","GLOBAL",0)~ DO ~SetGlobal("BEArenSolarLeave","GLOBAL",1)~ EXTERN BEARE25J BEArenSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) Global("BEArenRomanceActive","GLOBAL",2) Global("BEArenSolarLeave","GLOBAL",0)~ DO ~SetGlobal("BEArenSolarLeave","GLOBAL",1)~ EXTERN BEARE25J BEArenSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) Global("BEArenRomanceActive","GLOBAL",2) Global("BEArenSolarLeave","GLOBAL",0)~ DO ~SetGlobal("BEArenSolarLeave","GLOBAL",1)~ EXTERN BEARE25J BEArenSolarLeave
END

CHAIN BEARE25J BEArenSolarLeave
@13 /* Then fly, my dear lover. Fly high and fly far. And I shall watch you from below. Our lives are short, but I'll remember you for the rest of mine. */
END
COPY_TRANS FINSOL01 29

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) Global("BEArenRomanceActive","GLOBAL",2) Global("BEArenSolarStay","GLOBAL",0)~ DO ~SetGlobal("BEArenSolarStay","GLOBAL",1)~ EXTERN BEARE25J BEArenSolarStay
END

CHAIN BEARE25J BEArenSolarStay
@14
END
++ @15 EXTERN BEARE25J BEArenSolarStay1.1
++ @16 EXTERN BEARE25J BEArenSolarStay1.1
++ @17 EXTERN BEARE25J BEArenSolarStay1.1

CHAIN BEARE25J BEArenSolarStay1.1
@18
= @19
= @20
COPY_TRANS FINSOL01 32

// Gorion Wraith sequence.

EXTEND_BOTTOM HGWRA01 18
IF ~Global("BEArenRomanceActive","GLOBAL",2) InParty("BEAren") See("BEAren")~ EXTERN HGWRA01 BEArenWraith1
END

CHAIN HGWRA01 BEArenWraith1
@21
== BEARE25J @22
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("BEArenRomanceActive","GLOBAL",2)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("BEArenG")~ EXIT
END

BEGIN BEArenG 

CHAIN 
IF ~Global("BEArenWraithSpirit1","GLOBAL",0)~ THEN BEArenG BEArenWraithSpirit1
@23
DO ~SetGlobal("BEArenWraithSpirit1","GLOBAL",1)~
== BEARE25J @24
== BEArenG @25
== BEARE25J @26
== BEArenG @27
== BEARE25J @28
== BEArenG @29
== BEARE25J @30
END
++ @31 EXTERN HGWRA01 25
++ @32 EXTERN HGWRA01 25
+ ~CheckStatGT(Player1,16,WIS)~ + @33 EXTERN HGWRA01 25
++ @34 EXTERN HGWRA01 25

// Talk after Gorion Wraith

APPEND BEARE25J

IF ~Global("BEArenWraithSpirit1","GLOBAL",2)~ w1
SAY @35
++ @36 + w1.1
++ @37 + w1.1
++ @38 + w1.1
END

IF ~~ w1.1
SAY @39
= @40
= @41
++ @42 + w1.2
++ @43 + w1.3
END

IF ~~ w1.2
SAY @44
IF ~~ DO ~SetGlobal("BEArenWraithSpirit1","GLOBAL",3)~ EXIT
END

IF ~~ w1.3
SAY @45
IF ~~ + w1.2
END

END // For APPEND

// Various non-essential interjection for ToB.

I_C_T AMMERC02 1 BEArenSaemonMet11
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @46
END 

I_C_T BAZDRA01 0 BEArenDrakonis1
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @47
END

I_C_T SARMEL01 56 BEArenSARMEL0156
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @48
END

I_C_T SARMEL01 40 BEArenMelissanYagaTemple1
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @49 /* Or maybe you are. <CHARNAME> has nothing to fear from some fat redhead in a pair of too-small shorts. */
END

I_C_T SARMEL01 63 BEArenMelissanGiantDead1
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @50 /* You returned from Saradush? What happened there? */
END

I_C_T SARKIS01 4 BEArenSARKIS014
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @51 /* Huh? */
END

I_C_T HGNYA01 6 BEArenHGNYA016
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @52 /* Waiting for <CHARNAME>. Just like... well, always. Why am I not surprised? */
END

I_C_T SENGUA03 1 BEArenSENGUA03
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @53 /* At last, honorable combat! I have been waiting ages for this! */
END

I_C_T BALTH 6 BEArenBalth6
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @54 /* He's helping us, but he doesn't very much care for us. Huh. Are these Bhaalspawn his enemies, too? */
END

I_C_T BALTH 17 BEArenBalth17
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @55 /* Uh-huh. Does it mean we have a new enemy? Ahh, scratch that. She's toast. */
END

// Watcher's Keep interjections are tricky. If we're visiting it in SoA, we should have interjections with Branwen's SoA dialogue file, and in ToB - with ToB one. Fortunately, we can do both, we just need to check if Chapter>7 for ToB.

// Watcher's Keep interjections, ToB

I_C_T GORPOL1 1 BEArenMetKnightsOfTheVigil1
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @56 /* It must be bringing great disquiet to your ranks, surely. */
END

I_C_T GORCHR 2 BEArenChromaticDemon2
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @57 /* And, of course, you're just bursting with desire to give us the key. Or not. */
END

I_C_T GORIMP01 4 BEArenImpDeadWizards1
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @58 /* You don't seem very concerned, imp. */
END

I_C_T GORCAMB 9 BEArenCambion9
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @59 /* But you could try and get yourself out, yes? */
END

I_C_T GORDEMO 1 BEArenImprisonedOneMet1
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @60 /* I feel some alien presence here. Do not trust it. I doubt these manacles are here for nothing. */
END

I_C_T GORODR1 35 BEArenOdrenFoolishness1
== BEARE25J IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @61 /* You betrayed us! <CHARNAME>, if you wish to kill these craven cowards now, just say the word. */
END

// Same lines, different dialogue file - BEArenJ, if Chapter<8(SoA). We're compiling all Watcher's Keep interjection in this ToB file, so all of them are together here.

// Watcher's Keep interjections, SoA

I_C_T GORPOL1 1 BEArenMetKnightsOfTheVigil1
== BEArenJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @56 /* It must be bringing great disquiet to your ranks, surely. */
END

I_C_T GORCHR 2 BEArenChromaticDemon2
== BEArenJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @57 /* And, of course, you're just bursting with desire to give us the key. Or not. */
END

I_C_T GORIMP01 4 BEArenImpDeadWizards1
== BEArenJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @58 /* You don't seem very concerned, imp. */
END

I_C_T GORCAMB 9 BEArenCambion9
== BEArenJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @59 /* But you could try and get yourself out, yes? */
END

I_C_T GORDEMO 1 BEArenImprisonedOneMet1
== BEArenJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @60 /* I feel some alien presence here. Do not trust it. I doubt these manacles are here for nothing. */
END

I_C_T GORODR1 35 BEArenOdrenFoolishness1
== BEArenJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @61 /* You betrayed us! <CHARNAME>, if you wish to kill these craven cowards now, just say the word. */
END

APPEND BEARE25J

// ToB talks - these trigger if Branwen is your friend and if Branwen is romanced. If she is romanced, music plays.

// ToB Talk 1.

IF ~Global("BEArenTalkToB","GLOBAL",2)~ b1
SAY @62 /* Here we are, playing games with demigods. Have you ever wanted this, <CHARNAME>? */
++ @63 /* Of course. It means my victory - and my ascension. */ + b1.1
++ @64 /* I don't know. Maybe after this, I'll be free. */ + b1.2
++ @65 /* No. Never. I feel like a chess piece. */ + b1.3
++ @66 /* It was inevitable. Alaundo predicted these events, you know. */ + b1.3
++ @67 /* Let's talk later. */ + b.0
END

IF ~~ b.0
SAY @68 /* As you wish. */
IF ~~ DO ~IncrementGlobal("BEArenTalkToB","GLOBAL",1)
RealSetGlobalTimer("BEArenTimerToB","GLOBAL",3600)~ EXIT
END

IF ~~ b1.1
SAY @69 /* You may want power or whatnot, but I wouldn't count on it. It seems like that Solar's in power, not you. */
IF ~~ + b1.3
END

IF ~~ b1.2
SAY @70 /* Or dead. That happens a lot during wars, too. */
IF ~~ + b1.3
END

IF ~~ b1.3
SAY @71 /* It leaves bitter taste in my mouth. Played like dolls, moved at this Solar's whim... bah. */
= @72 /* I prayed to Tempus, but received only blind warmth in return. Whatever his reasons, my Lord of Battles isn't answering. */
= @73 /* Argh, I'd dig my nails deep into Solar's perfect face, if I could. That bitch! Let her fight her own wars and leave us alone. If you wanted to fight your siblings, you'd have done it years ago. */
++ @74 /* I didn't know about them years ago, Branwen. */ + b1.4
++ @75 /* Solar's actually helping me. She gave me a pocket plane and sent me to Saradush. */ + b1.5
++ @76 /* I don't like her, either. Too arrogant for my taste. */ + b1.6
++ @77 /* Maybe she's not that unkillable... */ + b1.7
END

IF ~~ b1.4
SAY @78 /* True... and yet this blue meanie annoys me to no end. */ 
IF ~~ + b1.8
END

IF ~~ b1.5
SAY @79 /* To advance her goals. Or not? She's not human, and she may have her own interest in you... or your failure. */ 
IF ~~ + b1.8
END

IF ~~ b1.6
SAY @80 /* And too blue. Though I like her wings. A pretty pair. */ 
IF ~~ + b1.8
END

IF ~~ b1.7
SAY @81 /* Ha! I like the way you think. */
IF ~~ + b1.8
END

IF ~~ b1.8
SAY @82 /* Now look at me. Complaining like a fishwife, and for what? */
= @83 /* 'Tis meaningless. We have beaten Irenicus, we've saved an entire city of elves, and we are here, friends and comrades to the bitter end. *That's* what matters. */
++ @84 /* Too true. */ + b1.9
+ ~Global("BEArenRomanceActive","GLOBAL",2)~ + @85 /* Much more than comrades, Branwen. */ + b1.9
++ @86 /* No, you're right. That Solar bears watching. */ + b1.10
END

IF ~~ b1.9
SAY @87 /* 'Tis a pleasure to be with you. Walking, laughing... even complaining. I just wanted to say that. */
= @88 /* Now, let the grand adventure begin! */
IF ~~ DO ~IncrementGlobal("BEArenTalkToB","GLOBAL",1)
RealSetGlobalTimer("BEArenTimerToB","GLOBAL",3600)~ EXIT
END

IF ~~ b1.10
SAY @89 /* A good divine spanking is what she deserves. But enough of her. */
IF ~~ + b1.9
END

// ToB Talk 2.

IF ~Global("BEArenTalkToB","GLOBAL",4)~ b2
SAY @90 /* I'd like us to buy a boat. A ship, maybe. Or should we rent it instead? */
++ @91 /* What are you talking about? */ + b2.1
++ @92 /* A ship voyage? I'm interested. */ + b2.1
++ @93 /* Not now, Branwen. */ + b.0
END

IF ~~ b2.1
SAY @94 /* Ah, 'tis an old dream of mine, to travel round the world. But I more thought of escaping this place. */
= @95 /* After this is done... we will win. We must. But a general of a winning army is oft unwelcome in war-torn lands. */
++ @96 /* So, you wish to offer me a ship to get us out of here? */ + b2.4
++ @97 /* What if you're wrong? I was welcome in Suldanessellar, why won't I be unwelcome in Tethyr? */ + b2.2
++ @98 /* We might also lose. */ + b2.3
END

IF ~~ b2.2
SAY @99 /* Wasn't queen Ellesime eager to get rid of you and yours, hmm? By Tempus, I could swear she was. */
IF ~~ + b2.4
END

IF ~~ b2.3
SAY @100 /* In our enemies' dreams. They might wish themselves invincible, my dear <CHARNAME>, but nothing compares to you. */
IF ~~ + b2.4
END

IF ~~ b2.4
SAY @114 /* Without a doubt. And the future's not far away at all. */
IF ~~ DO ~IncrementGlobal("BEArenTalkToB","GLOBAL",1)
RealSetGlobalTimer("BEArenTimerToB","GLOBAL",3600)~ EXIT
END



// ToB, Saradush, at waking up - Branwen's romanced lovetalk(all romances have them)

IF ~Global("BEArenSaradush","GLOBAL",1)~ b6
SAY @183 /* 'Tis late, but I'm lying awake nevertheless. Saradush... they're all dead, aren't they? */
++ @184 /* Aye. */ + b6.2
++ @185 /* So many dead... I can't sleep, either. */ + b6.2
++ @186 /* This is war. People die, and sometimes entire cities are sacked. */ + b6.1
++ @187 /* I don't want to think about it. Let's rest some more. */ + b6.0
END

IF ~~ b6.0
SAY @188 /* Sleep well, my love. */
IF ~~ DO ~SetGlobal("BEArenSaradush","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ b6.1
SAY @189 /* Aye, 'tis expected in war. But was it war? Slaughter, more like. */
IF ~~ + b6.2
END

IF ~~ b6.2
SAY @190 /* I wish to turn back time and warn these people. Take them to that pocket plane of yours, one by one, or smuggle them beyond the city walls. */
= @191 /* Or destroy Yaga-Shura's army and let the lone giant have at the walls. Invulnerable or no, he'd be buried under a pile of stinking rubble soon enough. */
= @192 /* 'Tis impossible, I know. I'm only dreaming. But to know that all those people I talked and laughted with, or bought bread from... are dead... */
= @193 /* No, I should not keep you up. Rest, <CHARNAME>. You need it. */
++ @194 /* Thank you, Branwen. Good night. */ + b6.0
++ @195 /* I am willing to listen, if you want to talk. */ + b6.3
END

IF ~~ b6.3
SAY @196 /* Talking to you is oft a pleasure, true... but not tonight. These people are dead; can words bring them back? No. */
= @197 /* But I am shamefully, unduly relieved that you are alive and unharmed. I was worried that crone lied to us, and that Yaga-Shura would be as strong as ever. By Tempus, I was so happy when I learnt I was wrong! */
= @198 /* Listen to me. A warrior I might be, but I worry like any woman. And you... almost a god, but you bleed like any man. Who are we, <CHARNAME>? */
++ @199 /* Lovers. Sleep, Branwen. There's a long day tomorrow. */ + b6.0
++ @200 /* Just <CHARNAME> and Branwen. */ + b6.4
++ @201 /* A future god and his loyal priestess. */ + b6.4
++ @202 /* I don't know. */ + b6.5
END

IF ~~ b6.4
SAY @203 /* Are we? */
IF ~~ + b6.5
END

IF ~~ b6.5
SAY @204 /* But 'tis past time we both were asleep. I'll pray for people of Saradush next morn, when tears fall less freely. */
= @205 /* Do you wish to sleep some more? Or is it time to awaken already? */
++ @206 /* Let's sleep some more. */ + b6.0
++ @207 /* No, it is time to go. */ + b6.6
END

IF ~~ b6.6
SAY @208 /* As you wish, then. */
IF ~~ DO ~SetGlobal("BEArenSaradush","GLOBAL",2)~ EXIT
END


// ToB, final challenge, killing the Ravager, romance only

IF ~Global("BEArenChallenge5","GLOBAL",1)~ b9
SAY @245 /* (Branwen kisses you hotly without warning.) */
= @246 /* Whatever happens... whatever comes... I will always love you. */
= @247 /* 'Tis not a goodbye, my love. Just a reminder. */
IF ~~ DO ~SetGlobal("BEArenChallenge5","GLOBAL",2)~ EXIT
END


END // End to APPEND