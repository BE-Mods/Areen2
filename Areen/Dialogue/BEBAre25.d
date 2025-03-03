// Read this after all SoA dialogue. Start reading with BEAren.d
// This is Branwen's banter file for ToB - one conversation with each Bioware NPC(two for Imoen - one if Branwen romances PC, another if she does not).

BEGIN BEBARE25

CHAIN 
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenAerieToB1","GLOBAL",0)~ THEN BAERIE25 BEArenAerieToB1
@0 /* You're p-pensive today, Branwen. */
DO ~SetGlobal("BEArenAerieToB1","GLOBAL",1)~
== BEBARE25 @1 /* Soon our journeys will be over. 'Tis hard not to think about that. */
== BAERIE25 @2 /* B-but you'll be able to go home! And I'll see the circus again! */
== BEBARE25 @3 /* Aye, but will they be happy to see you? Rich, free, forever young and doubtlessly able to defend yourself, while they are but poor workers, helpless before any ruffian? */
== BAERIE25 @4 /* I... I didn't think of that. */
== BEBARE25 @5 /* People envy each other, and with you, they'll have good cause, Aerie. Be careful when you return to the circus, all right? */
== BAERIE25 @6 /* A-all right. And you, too. */
EXIT

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenAnomenToB1","GLOBAL",0)~ THEN BANOME25 BEArenAnomenToB1
@7 /* Lady Branwen, why are you practicing with my shield? */
DO ~SetGlobal("BEArenAnomenToB1","GLOBAL",1)~
== BEBARE25 @8 /* 'Tis pretty. */
== BANOME25 @9 /* Why, you'd give no other reason? Its defense enchantments or?.. */
== BEBARE25 @10 /* Nope. Only that 'tis pretty. */
== BANOME25 @11 /* Well, I must ask that you leave my battle gear alone. I need to keep it ready for our enemies. And, please, stop eyeing my helmet! */
== BEBARE25 @12 /* Aww, but 'tis so pretty! And, by Tempus, your armor is, too! */
== BANOME25 @13 /* My lady Branwen, please! I'll have to go naked if you don't stop lusting after my things. */
== BANOME25 @14 /* Oh. I... */
== BEBARE25 @15 /* And now he's blushing. So young and handsome... 'Twill take a strong will not to steal this one with his armor, too. */
== BEBARE25 IF ~Global("BEArenRomanceActive","GLOBAL",2)~ THEN @16 /* Sorry, <CHARNAME>. Just thinking aloud. */
EXIT

CHAIN 
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenCerndToB1","GLOBAL",0)~ THEN BCERND25 BEArenCerndToB1
@17 /* Have you given any thought to my earlier offer, Branwen? */
DO ~SetGlobal("BEArenCerndToB1","GLOBAL",1)~
== BEBARE25 @18 /* What? Ah, the one you made me in Suldanessellar. No, Cernd. I'm afraid I'm ill suited for becoming a druid. */
== BCERND25 @19 /* Your soul will grow tired of battles one day, Branwen. Your calling is very close to mine. Should you want to become one of us, we'll welcome you into the circle. */
== BEBARE25 @20 /* Cernd, I thank you, but... no. Just no. */
EXIT

CHAIN 
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenEdwinToB1","GLOBAL",0)~ THEN BEDWIN25 BEArenEdwinToB1
@21 /* Woman! You've eaten my share of cheese again! */
DO ~SetGlobal("BEArenEdwinToB1","GLOBAL",1)~
== BEBARE25 @22 /* I have not! */
== BEDWIN25 @23 /* Have, too! And don't you try to deny it, I've seen you licking your fingers! */
== BEBARE25 @24 /* 'Twas not only my finger I was licking... */
== BEDWIN25 @25 /* What? */
== BEBARE25 @26 /* Ah, nothing, Edwin. I'm sorry, but your cheese is gone. Go on and have my cookies, if you like. */
== BEDWIN25 @27 /* Hmm. Cookies? */
== BEBARE25 @28 /* There might be chocolate chips from Maztica inside. */
== BEDWIN25 @29 /* Deal. Hand them over. And don't you try to cheat Edwin Odesseiron ever again! (I'd fireball her, but it'd melt the chocolate.) */
== BEBARE25 @30 /* Sure. I'll just check our stores of cheese for the morrow... */
EXIT

CHAIN
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenHaerDalisToB1","GLOBAL",0)~ THEN BHAERD25 BEArenHaerDalis1
@31 /* 'Twould seem to this bard that our journey is coming to an end. */
DO ~SetGlobal("BEArenHaerDalisToB1","GLOBAL",1)~
== BEBARE25 @32 /* And you're going to add that entropy has run its course and all that? */
== BHAERD25 @33 /* Nay. I shall simply be sad, as befits a bard who is about to lose his friends and the subject of his inspiration. */
== BEBARE25 @34 /* Why, do you think you'll never see <CHARNAME> again? */
== BHAERD25 @35 /* Entropy, my dear magpie. Entropy envelops and devours all. */
== BEBARE25 @36 /* Ah. That's more like it. */
EXIT

CHAIN 
IF ~InParty("BEAren")
See("BEAren")
!Global("BEArenRomanceActive","GLOBAL",2)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenImoenToB1","GLOBAL",0)~ THEN BIMOEN25 BEArenImoenToB1
@37 /* Hey, Branwen. Want some wine? */
DO ~SetGlobal("BEArenImoenToB1","GLOBAL",1)~
== BEBARE25 @38 /* Sure! I've borrowed a good chunk of cheese, too. So, girl talk again? */
== BIMOEN25 @39 /* As usual. This time, let's discuss <CHARNAME>. */
== BEBARE25 @40 /* 'Tis obvious. Everyone knows <PRO_HESHE> is in love. */
== BIMOEN25 @41 /* Yes, but with whom? */
== BEBARE25 @42 /* You don't know? */
== BIMOEN25 @43 /* Nope. */
== BEBARE25 @44 /* Can't even guess? */
== BIMOEN25 @45 /* Not a thing. */
== BEBARE25 @46 /* (whispers a name in Imoen's ear) */
== BIMOEN25 @47 /* Oooooh! Oh! I should have... oh, but that's just... You're sure? */
== BEBARE25 @48 /* Yep. */
== BIMOEN25 @49 /* Tee-hee! <CHARNAME>! I have something to aaaaask youuuuu! */
EXIT

CHAIN 
IF ~InParty("BEAren")
See("BEAren")
Global("BEArenRomanceActive","GLOBAL",2)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenImoenToB1","GLOBAL",0)~ THEN BIMOEN25 BEArenImoenToB1
@50 /* Hey, Branwen. You and <CHARNAME>, you're all right? */
DO ~SetGlobal("BEArenImoenToB1","GLOBAL",1)~
== BEBARE25 @51 /* 'Twould seem so. Why? */
== BIMOEN25 @52 /* Well, it's just there're so many pretty girls around, hungry for my big brother's attention... */
== BEBARE25 @53 /* Ahem. You don't mean Sarevok, do you? Because he seems to have more fans. */
== BIMOEN25 @54 /* Hey, <CHARNAME> has more fans! */
== BEBARE25 @55 /* Nope. Besides, <CHARNAME> is mine. */
== BIMOEN25 @56 /* Though Sarevok is nice, too. Tall, with these dark, strong shoulders... */
== BEBARE25 @57 /* Imoen! He's evil! And dead! And gross! */
== BIMOEN25 @58 /* Well, not that gross. He's only my half-brother, you know. And he's not that evil. I mean, if only he met the right girl... */
== BEBARE25 @59 /* Argh!! */
== BIMOEN25 @60 /* Tee-hee! Got ya! */
EXIT


CHAIN 
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenJaheiraToB1","GLOBAL",0)~ THEN BJAHEI25 BEArenJaheiraToB1
@61 /* We're both stronger and older. Yet some losses persist. */
DO ~SetGlobal("BEArenJaheiraToB1","GLOBAL",1)~
== BEBARE25 @62 /* Aye. I've been thinking of Khalid only yesterday. He was a good man. */
== BJAHEI25 @63 /* Yes, but I was thinking of Gorion. */
== BEBARE25 @64 /* <CHARNAME>'s mentor? He was your friend, I remember it now. */
== BJAHEI25 @65 /* And a much better father than I thought he would be. <CHARNAME> is living proof to that. */
== BEBARE25 @66 /* Even if some of <CHARNAME>'s choices upset the balance? */
== BJAHEI25 @67 /* We all upset the balance at some point of another. It's who we become that is important. */
== BEBARE25 @68 /* True. And <CHARNAME> turned out just right. */
EXIT

CHAIN 
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenJanToB1","GLOBAL",0)~ THEN BJAN25 BEArenJanToB1
@69 /* Branny, I sense you need a story. */
DO ~SetGlobal("BEArenJanToB1","GLOBAL",1)~
== BEBARE25 @70 /* Make it two. It's not about uncle Scratchy again? */
== BJAN25 @71 /* As a matter of fact, yes, it is. */
== BEBARE25 @72 /* Oh, joy. */
== BJAN25 @73 /* Once uncle Scratchy decided to build a new road straight through the Promenade. He said that only a dozen of stupid peasants ever shopped there, and the city needed new roads. */
== BJAN25 @74 /* Naturally, he expected a cultured debate and maybe some opposition, which is why he hired six trolls for protection. Does wonders for political microclimate, you see. */
== BJAN25 @75 /* What he didn't expect was that my old friend Trax was planning to turn the Promenade into a big shopping center, destroying the little shops and burning the circus, since it was cursed anyway. And only my uncle Scratchy and his trolls stood in his way! */
== BEBARE25 @76 /* What would that Trax do? */
== BJAN25 @77 /* What wouldn't he? He bribed the trolls with a nice castle(trolls love castles and not bogs, everyone knows that), and proceeded to trash uncle Scratchy most thoroughly. I believe my uncle still nurses a broken leg. */
== BEBARE25 @78 /* And the Promenade? */
== BJAN25 @79 /* I've heard Trax has already demanded for 100,000 from the city budget, pointing out that he's started demolishing the old premises. When the Chief Inspector pointed out that it was in fact Irenicus who had blown up half of the Promenade, my friend Trax was very surprised. */
== BEBARE25 @80 /* And the morale of this tale is? */
== BJAN25 @81 /* Why, six trolls is never enough. You should have friends in the high places, too, if you're ever going into business. Even if it's just turnip-peddling. Speaking of which, time for supper! */
== BEBARE25 @82 /* (groan) */
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenKeldornToB1","GLOBAL",0)~ THEN BEBARE25 BEArenKeldornToB1
@83 /* Keldorn, isn't it high time for you to retire? Your daughters must miss you. */
DO ~SetGlobal("BEArenKeldornToB1","GLOBAL",1)~
== BKELDO25 @84 /* Aye, and I'll do it gladly, once our friend's campaign is over. My eldest is becoming the most beautiful young lady, and I fear some rascal may try and use her. */
== BEBARE25 @85 /* Surely he won't be as bold as try and seduce a paladin's daughter? */
== BKELDO25 @86 /* Alas. Truly, I've seen some most disturbing examples even in this party, when young people lie together outside of the sanctity of marriage! */
== BEBARE25 @87 /* No. It can't be! */
== BKELDO25 @88 /* ... You are mocking me again, young Branwen, are you not? */
== BEBARE25 @89 /* Guilty as charged. But, Keldorn, men and women will sleep together, married or not! 'Tis our nature, no? */
== BKELDO25 @90 /* Yet we are not animals to follow our every desire. You wouldn't eat your meat raw and sleep in a tree. You wouldn't want your child to grow up without a father. */
== BEBARE25 @91 /* Because yours did? */
== BKELDO25 @92 /* Aye, she did. But never again. So do I swear. */
EXIT

CHAIN 
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenKorganToB1","GLOBAL",0)~ THEN BKORGA25 BEArenKorganToB1
@93 /* Branwen! Hand me that tankard, come on! */
DO ~SetGlobal("BEArenKorganToB1","GLOBAL",1)~
== BEBARE25 @94 /* Dwarf, you're drunk. */
== BKORGA25 @95 /* So what's it to ye? */
== BEBARE25 @96 /* Your axe may take off the wrong head in the heat of battle. By Tempus, at least wash your face with some cold water! */
== BKORGA25 @97 /* Aye, aye, woman. You worry too much! */
== BEBARE25 @98 /* 'Tis not mine own head I'm worried for. 'Tis yours. */
EXIT

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenMazzyToB1","GLOBAL",0)~ THEN BEBARE25 BEArenMazzyToB1
@99 /* Mazzy? You're going to Neverwinter after this is done, correct? */
DO ~SetGlobal("BEArenMazzyToB1","GLOBAL",1)~
== BMAZZY25 @100 /* Aye, my friend. Would you wish to come with me? */
== BEBARE25 @101 /* If <CHARNAME> wishes it. I'm sworn to <PRO_HISHER> side, but I would love for us all to continue adventuring together. */
== BMAZZY25 @102 /* It is my wish, as well. Wouldn't that be lovely? Fentan knights! */
== BEBARE25 @103 /* What? Not 'Branwen's sailors' or '<CHARNAME>'s minions'? */
== BMAZZY25 @104 /* Haha! I was only joking, my friend. Though, truth be told, I like the name... */
EXIT

CHAIN 
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenMinscToB1","GLOBAL",0)~ THEN BMINSC25 BEArenMinscToB1
@105 /* Friend Branwen, shall Minsc and Boo and you sing again? */
DO ~SetGlobal("BEArenMinscToB1","GLOBAL",1)~
== BEBARE25 @106 /* Perhaps another time, Minsc. */
== BMINSC25 @107 /* Then Minsc will sing for you and Boo will sing along! From beyond the wooded island
to the river wide and free... */
== BEBARE25 @108 /* Minsc, no! Not now, please. My head hurts. */
== BMINSC25 @109 /* It must be because you are in dire need of some butt-kicking goodness! Boo, let's find little Branwen something juicy to kill. */
== BMINSC25 @110 /* What are you saying, Boo? */
== BMINSC25 @111 /* Boo says a giant might be nice. What do you think, Branwen? */
== BEBARE25 @112 /* Half a dozen of them, more like. My headache is killing me. */
== BMINSC25 @113 /* Then forward, for the medicine! */
== BEBARE25 @114 /* Ah, Minsc. Never change. */
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
Global("BEArenNaliaToB1","GLOBAL",0)~ THEN BEBARE25 BEArenNaliaToB1
@115 /* You're different now, Nalia. */
DO ~SetGlobal("BEArenNaliaToB1","GLOBAL",1)~
== BNALIA25 @116 /* I am. I have much to think about. My castle, my people, my lands... */
== BEBARE25 @117 /* Athkatla, too, I gather? */
== BNALIA25 @118 /* And the whole of Amn. It's time everything changed. */
== BEBARE25 @119 /* If I can help, just say a word. */
== BNALIA25 @120 /* Actually, I've been thinking about a hospital for the poor. You could help me find the men and women for it. And stay for a while, yourself, if you prefer. */
== BEBARE25 @121 /* I'll gladly help. I'm proud of you, Nalia. */
== BNALIA25 @122 /* Thank you. But now I have to turn my mind to other things. Excuse me. */
== BEBARE25 @123 /* (sigh) 'Twas more fun when trolls attacked her castle. */ 
EXIT

CHAIN 
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("BEAren",CD_STATE_NOTVALID)
Global("BEArenSarevokToB2","GLOBAL",0)~ THEN BSAREV25 BEArenSarevokToB2
@124 /* Another girl from my past. Who would've thought you'd survive, brash priestess? */
DO ~SetGlobal("BEArenSarevokToB2","GLOBAL",1)~
== BEBARE25 @125 /* They call me brash, and they are not wrong. But I'm also the winner. */
== BSAREV25 @126 /* Aye, at my sibling's side. */
== BEBARE25 @127 /* You doubt that I can become a winner in my own right? */
== BSAREV25 @128 /* Not if you prove it. */
== BEBARE25 @129 /* Come along and watch me. */
== BSAREV25 @25 /* What? */
== BEBARE25 @130 /* You've heard me. You, <CHARNAME>, our companions. Just watch me in battle and make your decisions. If you think I can stand on my own, don't aid me. I'll prove myself. */
== BSAREV25 @131 /* Alone against a horde, with the rest of us just watching? You'll be slaughtered. */
== BEBARE25 @132 /* No. */
== BSAREV25  @133 /* Now I understand why they call you Branwen the Brash. */
== BEBARE25 @134 /* Just wait 'till you hear what they call you, brother. */
EXIT

CHAIN 
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("BEAren",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("BEArenValygarToB2","GLOBAL",0)~ THEN BVALYG25 BEArenValygarToB2
@135 /* Branwen, what are you doing with this cloak? */
DO ~SetGlobal("BEArenValygarToB2","GLOBAL",1)~
== BEBARE25 @136 /* I'm going to make myself a new skirt. */
== BVALYG25 @137 /* This short? */
== BEBARE25 @138 /* Aye! You think it won't suit me? */
== BVALYG25 @139 /* No, I think... it will be very becoming. Just not very practical. */
== BEBARE25 @140 /* Flatterer. All right, let's consider you've wormed your way out of that one. */
== BVALYG25 @141 /* I'm ever at your service, milady. */
EXIT

CHAIN 
IF ~InParty("BEAren")
See("BEAren")
!StateCheck("BEAren",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("BEArenViconiaToB1","GLOBAL",0)~ THEN BVICON25 BEArenViconiaToB1
@142 /* Whenever I approach you, abbil, we talk about perfume, clothes and drinking. Doesn't it bore you? */
DO ~SetGlobal("BEArenViconiaToB1","GLOBAL",1)~
== BEBARE25 @143 /* Aye! I've been waiting for that moment eagerly, in fact. Shall we finally talk about what's truly important? */
== BVICON25 @144 /* Their size, their weight, their hard smoothness in our hands? */
== BEBARE25 @145 /* Their prices? */
== BVICON25 @146 /* The way battle dents and batters them? */
== BEBARE25 @147 /* Aye, I love comparing war hammers and maces! Let's go over there, so no one would interrupt us! Oh, it's going to be such fun! */
== BVICON25 @148 /* Hmm. Surface-dwellers can be quite practical. */
EXIT
