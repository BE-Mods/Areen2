// Crossmod for BG2EE

// Dorn

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenDorn1","GLOBAL",0)~ THEN BDORN BEArenDorn1
@0 /* We travel side by side again, I see. My master grows very interested in you. */
DO ~SetGlobal("BEArenDorn1","GLOBAL",1)~
== BEBAREN @1 /* Don't tell me. Same old "Join the dark side, Branwen, we have cookies?" */
== BDORN @2 /* Ha! Do you expect me to bake you cookies, woman? */
== BEBAREN @3 /* Well, you'd look good in an apron. */
== BDORN @4 /* Not in this lifetime. */
== BEBAREN @5 /* Thought you'd chicken out. */
EXIT

CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenDorn2","GLOBAL",0)~ THEN BEBAREN BEArenDorn2
@6 /* I must say, you are a strong warrior, Dorn. 'Tis a true pity you're so entrenched in your dishonorable ways. */
DO ~SetGlobal("BEArenDorn2","GLOBAL",1)~
== BDORN @7 /* Blackguards have plenty of honor, woman. Just not the sort you require. */
== BEBAREN @8 /* Do you keep your word? Protect the ailing and week? Respect a worthy enemy? Give mercy to those who ask for it? */
== BDORN @9 /* You know the answers better than I. Why do you keep asking questions? */
== BEBAREN @10 /* Because I hope to drag you to the light one day, Dorn. A pain in the ass that you are, you are still a mighty warrior. */
== BDORN @11 /* Ha! Keep hoping, woman. */
EXIT

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenDorn3","GLOBAL",0)~ THEN BDORN BEArenDorn3
@12 /* We should have a drink sometime. Reminisce on the old times and new ones. Get into a good brawl, kick a few shins, have a good time. What say you? */
DO ~SetGlobal("BEArenDorn3","GLOBAL",1)~
== BEBAREN @13 /* I'd love to. We should take <CHARNAME>: I think <PRO_HESHE>'s been looking down lately. */
== BDORN @14 /* A bloody fight to the death should do <PRO_HIMHER> good. */
== BEBAREN @15 /* And not <PRO_HIMHER> alone. You, too, look strained. Even evil needs to relax sometimes, hm? */
== BDORN @16 /* You've got me here. */
EXIT

// ToB

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenToBDorn1","GLOBAL",0)~ THEN BDORN25 BEArenToBDorn1
@17 /* Whatever are you doing, woman?  */
DO ~SetGlobal("BEArenToBDorn1","GLOBAL",1)~
== BEBARE25 @18 /* Oh, just braiding your hair. Never mind me. */
== BDORN25 @19 /* Stop it! */
== BEBARE25 @20 /* Nope. Tempus wills your unruly mane into lovely braids, so sit tight and do not bite! */
== BDORN25 @21 /* Grrr... */
== BEBARE25 @22 /* Here. Done now. I could swear, 'tis the sweetest blackguard in the history of the Realms sitting before me. */
== BDORN25 @23 /* One day I shall be your death, woman. */
== BEBARE25 @24 /* Your hair certainly will. */
EXIT

// Hexxat

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenHexxat1","GLOBAL",0)~ THEN BHEXXAT BEArenHexxat1
@25 /* All angry silences? I thought you'd be more... tolerant of me, Branwen. */
DO ~SetGlobal("BEArenHexxat1","GLOBAL",1)~
== BEBAREN @26 /* I destroy every undead I meet, everywhere, and I am proud of it. There is a time for mercy and pity. But you can feel none - and you will get none. */
== BHEXXAT @27 /* Too bad. You could learn so much. */
== BEBAREN @28 /* Tempus save me from such knowledge. */
EXIT

// ToB

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenToBHexxat1","GLOBAL",0)~ THEN BHEXXA25 BEArenToBHexxat1
@29 /* Still nothing to say to me? */
DO ~SetGlobal("BEArenToBHexxat1","GLOBAL",1)~
== BEBARE25 @30 /* No. Stay away, Hexxat. */
== BHEXXA25 @31 /* Your loss. */
EXIT

// Neera

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenNeera1","GLOBAL",0)~ THEN BEBAREN BEArenNeera1
@32 /* 'Twas most discourteous of you, Neera. Pink hammer? Seriously? What would Tempus think? */
DO ~SetGlobal("BEArenNeera1","GLOBAL",1)~
== BNEERA @33 /* Er... I didn't dye your hammer pink, Branwen. */
== BEBAREN @34 /* Hmph. You must think me a fool. In this company, only you and Imoen are so attached to the color. */
== BNEERA @35 /* Nope. 'Twas <CHARNAME>, believe it or not. Our leader did it on a dare. I underestimated <PRO_HIMHER>, by the way. */
== BEBAREN @36 /* Truly? */
== BNEERA @37 /* Yep. */
== BEBAREN @38 /* Then... I apologize, Neera. I shouldn't have judged you so rashly. I... well, I still have a piece of cake from breakfast. I'd be honored to share it with you. */
== BNEERA @39 /* Cake! Chocolate cake! Cake! But... no. Um... wait. Wait. */
== BEBAREN @40 /* What is it? */
== BNEERA @41 /* Branwen, I'm sorry. I got to tell you the truth. It WAS me, after all. With your hammer. */
== BEBAREN @42 /* You do know you're not getting any cake for that, do you? */
== BNEERA @43 /* Yeah. Yeah, you bet I know. But the truth is more important. */
== BEBAREN @44 /* And I respect you for that. Ha! Pink hammer or no, there's enough cake for both of us! Come, let's share a taste as we walk. */
EXIT

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenNeera2","GLOBAL",0)~ THEN BNEERA BEArenNeera2
@45 /* So. You and Tempus have a very special relationship. */
DO ~SetGlobal("BEArenNeera2","GLOBAL",1)~
== BEBAREN @46 /* He does not turn me into rabbits daily, if 'tis what you mean. */
== BNEERA @47 /* No, no. I just... wonder. You pray and he answers? How does it work? */
== BEBAREN @48 /* I feel Him. In the sunlight. In the water. In here, with you and me. In the force that guides my every spell. 'Tis that simple. */
== BNEERA @49 /* Huh. Much like I feel my magic, then. It's an amazing feeling, you know. */
== BEBAREN @50 /* Aside from the rabbit thing. */
== BNEERA @51 /* Well, nobody's perfect. */
EXIT

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenNeera3","GLOBAL",0)~ THEN BEBAREN BEArenNeera3
@52 /* You're drinking that strange thing of yours again. */
DO ~SetGlobal("BEArenNeera3","GLOBAL",1)~
== BNEERA @53 /* Tea. It's called tea. Do you want to try it? */
== BEBAREN @54 /* Mayhap just a taste. */
== BNEERA @55 /* Here. It's cherry. */
== BEBAREN @56 /* Mmm. Mmmm! */
== BNEERA @57 /* Heh. That good? */
== BEBAREN @58 /* Like sleeping with a strapping lad, only better. Where are you getting this... tea? */
== BNEERA @59 /* Oh, here and there. You never know when you get lucky. */
== BEBAREN @60 /* Neera, you're not stealing, are you? We are honorable warriors! */
== BNEERA @61 /* Sure we are. Well, you are. I just like tea. */
EXIT

// ToB 

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenNeeraToB1","GLOBAL",0)~ THEN BEBARE25 BEArenNeeraToB1
@62 /* Damn the icicles of Auril. I'm bored. */
DO ~SetGlobal("BEArenNeeraToB1","GLOBAL",1)~
== BNEERA25 @63 /* That didn't take long. */
== BEBARE25 @64 /* Well, I am! No enemies in sight, and <CHARNAME>'s conversing with this Solar of who-knows-what plane, and I have little and less patience for all this! */
== BNEERA25 @65 /* Aren't men and women of the faith supposed to respect old prophecies and cryptic messengers? */
== BEBARE25 @66 /* Not when it's my friend's life on the line! Tell you what, Neera. You summon your wild whirls, I'll bring my hammer, and next time that Solar appears and tries to put us to sleep, let's teach her a lesson. You don't mess with us. */
== BNEERA25 @67 /* Haha! I like the way you think. Shall we let <CHARNAME> in on our sinister plot? */
== BEBARE25 @68 /* Nah, <PRO_HESHE> is listening anyway. */
== BNEERA25 @69 /* Then it's a plan. Unless we just fall asleep again when Solar appears. */
== BEBARE25 @70 /* There's that. */
EXIT

// Rasaad

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenRasaad1","GLOBAL",0)~ THEN BEBAREN BEArenRasaad1
@71 /* A brooding monk and a northern priestess are together again, marching by a Bhaalspawn's side. 'Tis like a second tome of a saga, mmm, Rasaad? */
DO ~SetGlobal("BEArenRasaad1","GLOBAL",1)~
== BRASAAD @72 /* I do not feel like a hero of a saga. */
== BEBAREN @73 /* Nobody does, until the saga's over. Then they get all nostalgic... by Tempus' shield, I am going all nostalgic now! Remember Nashkel? And the striped tents, and the river? */
== BRASAAD @74 /* I remember the kobolds. */
== BEBAREN @75 /* Ugh! Don't remind me. (sigh) And I remember the statue I once was. Rain pouring over unfeeling eyes... and darkness. And yet I am nostalgic. Strange, isn't it? Remembering only the good? */
== BRASAAD @76 /* It's a great gift, Branwen. I wish I had it. */
== BEBAREN @77 /* You will. In ten, in twenty years you'll remember our exchange of words and smile. I promise you. */
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenRasaad2","GLOBAL",0)~ THEN BEBAREN BEArenRasaad2
@78 /* Have you ever dreamt of holding a hammer, Rasaad? Or a pair of swords? A halberd? */
DO ~SetGlobal("BEArenRasaad2","GLOBAL",1)~
== BRASAAD @79 /* Sometimes, when I was a boy. Every boy has such dreams, doesn't he? */
== BEBAREN @80 /* 'Tis true. I had such dreams as a girl, as well. And mine came true. */
== BRASAAD @81 /* Mine, too, in a way. My masters used to say I was a warrior born. */
== BEBAREN @82 /* An unarmed warrior... but a deadly one. I like it. */
== BRASAAD @83 /* Are you... flirting with me, Branwen? */
== BEBAREN @84 /* Haha! I flirt with everyone, my dear friend, haven't you noticed? But 'twould be false to say I was not admiring your prowess. You are a fearsome sight on the battlefield. */
EXIT

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenRasaad3","GLOBAL",0)~ THEN BRASAAD BEArenRasaad3
@85 /* Branwen, you look especially happy today. */
DO ~SetGlobal("BEArenRasaad3","GLOBAL",1)~
== BEBAREN @86 /* 'Tis so. And do you know why? */
== BRASAAD @87 /* Am I supposed to ask? */
== BEBAREN @88 /* You are! Because I read a wonderful, perilous book about dragons! */
== BRASAAD @89 /* An interesting read, I take it? */
== BEBAREN @90 /* Very! Imagine, there are numerous dragons in Tethyr, and the author even hinted he's heard of a dragon Bhaalspawn, once! I want to kill it so much! */
== BRASAAD @91 /* Sometimes you scare me, Branwen. */
== BEBAREN @92 /* Nah, 'tis just enthusiasm. Come on! If we start pestering <CHARNAME> now, we may well get to Tethyr by the end of the year! */
EXIT

// ToB

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenToBRasaad1","GLOBAL",0)~ THEN BEBARE25 BEArenToBRasaad1
@93 /* Rasaad! Catch! */
DO ~SetGlobal("BEArenToBRasaad1","GLOBAL",1)~
== BRASAA25 @94 /* What's that? A cake? Covered with strange white frosting... what is it? */
== BEBARE25 @95 /* Coconut, silly! You've never seen it? And with your family coming from the southern lands, too, for shame! */
== BRASAA25 @96 /* I'd rather not speak of my family now, Branwen. */
== BEBARE25 @97 /* I know. Which is why you're getting the cake, instead. */
== BRASAA25 @98 /* But why? */
== BEBARE25 @99 /* Because one more hour of staring at your moody face, and I'll scream. So eat your cake. Now. That's an order! */
== BRASAA25 @100 /* Aye, aye, mistress Branwen. */
EXIT
