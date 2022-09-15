#!/bin/bash
clear
#Castle
#This function is used to interact with the magic room
function MagicRM() {
echo
echo
echo
echo "LOCATION: THE MAGIC ROOM"
sleep 3
echo
echo
echo "You walk into the room, and see a mage"
sleep 3
echo "MAGE: so, you broke trhough my sleeping spell."
sleep 3
echo "MAGE: No matter, I will just kill you myself."
sleep 5
combat
sleep 3
echo "no. it can't be"
sleep 2
echo "NOOOOO!!"
sleep 3
echo "the mage is dead."
sleep 3
echo "you leave the magic room"
sleep 3
BedRM
}
#this function gets you to bedroom
function load18() {
BedRM
}
#this function allows you to inteact with the castle bedroom
function BedRM() {
clear
sleep 3
echo
echo
echo
echo "LOCATION: THE BEDROOM"
sleep 3
echo
echo
echo "You are now in the King's Bedroom. what will you do?
west(w)
east(e)
throne(t)"
read answer
case $answer in
w | W )
clear
echo "you head west"
sleep 3
MagicRM
;;
e | E )
clear
echo "you head east"
sleep 3
BossRM
;;
t | T )
clear
echo "you head into the throne room"
sleep 3
ThroneRM
;;
*)
echo "Knights aprouch you."
sleep 5
combat
load18
;;
esac
}
#this function peforms the end of the game.
function end() {
clear
sleep 3
echo
echo
echo
echo "ONE YEAR LATER"
sleep 5
echo
echo "the prince was punished with a huge timeout by the King for acting in treason and the overabuse of power."
sleep 3
echo
echo "$name was deemed by the King as Protector, and Liberator of Lyer"
sleep 3
echo "and so as $name returns home..."
sleep 3
echo "he takes a rest for with the fulfiment of liberating Lyer."
sleep 3
echo "THE END"
sleep 5
exit
}
#this function allows you to do the boss battle
function BossRM() {
clear
echo
echo
echo
echo "LOCATION: PRINCE WILLIAM'S ROOM"
sleep 3
echo
echo
echo "you enter this room to see Prince William Douclair as he looks out a window."
sleep 3
echo "then he notices you."
sleep 3
echo "PWD: so, it is true."
sleep 3
echo "PWD:The bane of my power has arrived, dispite my efforts"
sleep 3
echo "PWD:however, this is not the end for I will stand my ground."
sleep 3
echo "PWD:no matter what."
sleep 3
echo "the the Prince lunges towards you to fight."
combat
clear
echo "PWD: ugh, you were stronger than I thought"
sleep 3
echo "then the door opens"
sleep 4
echo "it was the king"
sleep 3
echo "KING: $name, you finally did it."
sleep 3
echo "KING: you have deafeated the prince of treason"
sleep 3
echo "KING: how may I thank you?"
sleep 3
end
}
#this function has theplayer help the chef
function Chelp() {
echo "CHEF: Well, then splendid! We actually could use a hand."
sleep 3
echo "CHEF: quick, grab a hat, and start cooking!"
sleep 3
echo "You found a group in amoung the chefs and started wipping something up."
sleep 5
user=$(($RANDOM % 10))
task=$(($RANDOM % 10))
if [ $user = $task -o $user -gt $task ]
then
echo "you and your group managed to make a fine feast for a prince"
sleep 3
echo "CHEF: splendid work. thank you for helping."
sleep 3
else
echo "your cooking skils were terrible in this situation. you tried making a cake, it was a blob of dough in comparison to the other fine works of the chefs."
sleep 5
echo "CHEF: ok... I understand you are new here. but I at least am proud of you trying."
sleep 3
fi
load20
}
#this function leads back to Kitchen
function load20() {
KitchenRM
}
#this function is used for the player to interact with the kitchen in the castle.
function KitchenRM() {
clear
echo
echo
echo
echo "LOCATION: The Kitchen"
sleep 3
echo
echo
echo "When you enter, you see a bunch of chefs working."
sleep 3
echo "each chef is carefully assembling a part of the meal for the king, or in this case, the prince."
sleep 3
echo "what do you do?
Cook(c)
back(b)
talk(t)"
read answer
case $answer in
c | C )
clear
echo "are you kidding me?"
sleep 3
echo "you wish to take the time to cook for the very person you wish to make justice to?"
sleep 3
echo "Fine. You found a group in amoung the chefs and started wipping something up."
sleep 5
user=$(($RANDOM % 10))
task=$(($RANDOM % 10))
if [ $user = $task -o $user -gt $task ]
then
echo "you and your group managed to make a fine feast for a prince"
sleep 3
else
echo "your cooking skils were terrible in this situation. you tried making a cake, it was a blob of dough in comparison to the other fine works of the chefs."
sleep 5
fi 
load20
;;
b | B )
echo "you head back to the throne room"
sleep 3
ThroneRM
;;
t | T )
echo "you went to talk with one of the chefs."
sleep 3
echo "CHEF: I am sorry, but we are quite busy here."
sleep 3
echo "CHEF: wait, are you a new recruit? (y/n)"
sleep 3
read answer
if [ $answer = y -o $answer = Y ]
then
Chelp
else
echo "ok, then just go."
sleep 3
fi 
load20
;;
*)
load20
;;
esac
}
#this function serves to put player back into throne room
function load21() {
ThroneRM
}
#This function serves to have the character interact with the throne room
function ThroneRM() {
clear
echo
echo
echo
echo "LOCATION: THE THRONE ROOM"
sleep 3
echo
echo 
echo "as you walk into the throne room, 10 Knights come towards you"
sleep 3
echo "you must fight."
combat
sleep 3
echo "you are in the throne room, what do you do?
fight(f)
west(w)
north(n)
east(e)
Hallway(h)"
read answer
case $answer in
f | F )
echo "you run about fighting more knights that come to your way."
sleep 3
combat
load21
;;
w | W )
echo "You head west."
sleep 3
KitchenRM
;;
n | N )
echo "You head north."
sleep 3
BedRm
;;
e | E )
echo "You head east."
sleep 3
DineRm
;;
h | H )
echo "You head into the hallway."
sleep 3
HallwayRM
;;
*)
echo "suddenly, more knights come crashing towards you."
sleep 3
combat
load21
;;
esac
}
#this function puts player back to Dine
function load22() {
DineRM
}
#this function serves for player to interact with the dining room
function DineRM() {
clear
echo
echo
echo
echo "LOCATION: THE DINING ROOM"
sleep 3
echo "you are in the Dining Room, a place where the prince does his dining."
sleep 3
echo "what do you do?
take a seat(s)
wait(w)
throne room(t)"
read answer
case $answer in
s | S )
echo "you sat in a chair and waited patiently."
sleep 5
echo "later you see the food being placed by chefs on the table"
sleep 3
echo "then, from the corner of your eye, you see Prince William Douclair, accompanied with several guards, walk into the dining room"
sleep 3
echo "Guard: uh, your majesty. there is an introder here. just say the word the intruder shall be delt with."
sleep 5
echo "the prince takes a moment to think."
sleep 5
echo "let the intruder stay for a bit. for now. we feast."
sleep 3
echo "you and the prince sit on opposite ends of the table. both of you dine...together.(wow.)"
sleep 5
echo "PWD: so, you are..."
sleep 3
echo "YOU: $name, sir."
sleep 3
echo "both of you contenue to eat. an awkward silence is made."
sleep 5
echo "the prince finishes his meal."
sleep 2
echo "you also finished your meal."
sleep 3
echo "PWD: ok, let us get this over with...."
sleep 2
echo "Guards, seize $name!!!"
sleep 3
echo "you stood up from the table an fought."
sleep 5
combat
sleep 3
echo "PWD:So The bane of my power has arrived, dispite my efforts"
sleep 3
echo "PWD:however, this is not the end for I will stand my ground."
sleep 3
echo "PWD:no matter what."
sleep 3
echo "the the Prince lunges towards you to fight."
combat
clear
echo "PWD: ugh, you were stronger than I thought"
sleep 3
echo "more knights came in."
sleep 3
echo "but... they did not come to fight."
sleep 3
echo "PWD: *coughs* well, what are you waiting for? *cough* Attack!"
sleep 3
echo "then a figure a appears from behind the knights...."
sleep 3
echo "it was the King"
sleep 3
echo "KING: *laugh* oh William, you have so much to learn."
sleep 3
echo "$name, thank you for liberating Lyer."
sleep 3
echo "how may I repay your effort?"
sleep 3
end
;;
w | W )
echo "you wait patiently"
sleep 5
echo "later you see the food being placed by chefs on the table"
sleep 3
echo "then, from the corner of your eye, you see Prince William Douclair, accompanied with several guards, walk into the dining room"
sleep 3
echo "Guard: uh, your majesty. there is an introder here. just say the word the intruder shall be delt with."
sleep 5
echo "the prince takes a moment to think."
sleep 5
echo "let the intruder stay for a bit. for now. we feast."
sleep 3
echo "you and the prince sit on opposite ends of the table. both of you dine...together.(wow.)"
sleep 5
echo "PWD: so, you are..."
sleep 3
echo "YOU: $name, sir."
sleep 3
echo "both of you contenue to eat. an awkward silence is made."
sleep 5
echo "the prince finishes his meal."
sleep 2
echo "you also finished your meal."
sleep 3
echo "PWD: ok, let us get this over with...."
sleep 2
echo "Guards, seize $name!!!"
sleep 3
echo "you stood up from the table an fought."
sleep 5
combat
sleep 3
echo "PWD:So The bane of my power has arrived, dispite my efforts"
sleep 3
echo "PWD:however, this is not the end for I will stand my ground."
sleep 3
echo "PWD:no matter what."
sleep 3
echo "the the Prince lunges towards you to fight."
combat
clear
echo "PWD: ugh, you were stronger than I thought"
sleep 3
echo "more knights came in."
sleep 3
echo "but... they did not come to fight."
sleep 3
echo "PWD: *coughs* well, what are you waiting for? *cough* Attack!"
sleep 3
echo "then a figure a appears from behind the knights...."
sleep 3
echo "it was the King"
sleep 3
echo "KING: *laugh* oh William, you have so much to learn."
sleep 3
echo "$name, thank you for liberating Lyer."
sleep 3
echo "how may I repay your effort?"
sleep 3
end
;;
t | T )
echo "you went to the throne room"
sleep 3
ThroneRM
;;
*)
echo "suddenly, more knights surround you"
sleep 5
combat
load22
;;
esac
sleep 3
}
#this function sends player 2 armory
function load23() {
ArmoryRM
}
#this function serves for the player to interact with the armory.
function ArmoryRM() {
clear
echo
echo
echo
echo "LOCATION: THE ARMORY"
sleep 3
echo "as you entered the castle armory,"
sleep 3
echo "you see knights preping themselves with weaponry."
sleep 3
echo "then they saw you."
sleep 3
echo "you fight."
sleep 5
combat
echo "you now have the castle armory, what are you going to do?
pick a weapon(w)
fight(f)
hallway(h)"
read answer
case $answer in
w | W )
sleep 3
echo "you picked up a weapon and left the armory."
sleep 3
HallwayRM
;;
f | F )
echo "you chose to fight"
sleep 3
combat
load23
;;
h | H )
echo "you went into the hallway."
sleep 3
HallwayRM
;;
*)
load23
;;
esac
}
#this function takes player to hallway
function load24() {
HallwayRM
}
#this function allows you to interact with the Castle Hallway.
function HallwayRM() {
clear
echo
echo
echo
echo "LOCATION: THE HALLWAY"
sleep 3
echo "you now enter the castle's hallway."
sleep 3
echo "guards do notice you and charge toward you."
sleep 3
echo "you chose to fight."
combat
sleep 3
echo "you are in the hallway. what do you do?
west(w)
Town(t)
north(n)
east(e)
fight(f)"
read answer
case $answer in
e | E )
echo "you head west"
sleep 3
DungeonRM
;;
t | T )
echo "you head to town"
sleep 5
Town
;;
n | N )
echo "you head north"
sleep 3
ThroneRM
;;
w | W )
echo "you head west"
sleep 3
ArmoryRM
;;
f | F )
echo "you chose to fight more guards"
sleep 3
combat
load24
;;
*)
echo "more guards come after you."
sleep 3
combat
load24
;;
esac
}
#this function is used to bring player to dungeon
function load25() {
DungeonRM
}
#this function is used for the player to interact with the dungeon
function DungeonRM() {
clear
echo
echo
echo
echo "LOCATION: THE DUNGEON"
sleep 3
echo "as you walk into the dungeon, the guards notice you and charge towards you."
sleep 3
echo "you fought them"
sleep 3
#combat
echo "you now are in the castle dungeon."
sleep 3
echo "then you saw someone you know in a cell."
sleep 3
echo "the person was the king o 
 Lyar himself."
sleep 3
echo "what do you do?
king(k)
fight(f)
hall(h)"
read answer
case $answer in
k | K )
echo "you talk to the king."
sleep 3
echo "KING: $name, you came back!"
sleep 3
echo "YOU: yes I did. who did this?"
sleep 3
echo "KING: william, my son."
sleep 3
echo "YOU: how could let this happen?"
sleep 3
echo "KING: his infulunece got stronger and overthrew me."
sleep 3
echo "YOU: do not worry, I will have you out soon."
sleep 3
echo "KING: no, you stop William. I will meet you when I can."
sleep 3
load25
;;
f | F )
echo "you fight the guards running in"
sleep 3
combat
load25
;;
h | H )
echo "you went into the hallway."
sleep 3
HallwayRM
;;
*)
echo "more guards come running in"
sleep 3
combat
load25
;;
esac
}

#this function serves for the user to interact with the Castle temple
function CTemple() {
clear
sleep 3
echo
echo
echo
echo "LOCATION: CASTLE TEMPLE"
sleep 3
echo "you walk up to the Temple and noticed a bunch of caution tape."
sleep 3
echo "CastlePriest: sorry, but the prince did not like the look of my temple."
sleep 3
echo "CastlePriest: he is planning to demolish it"
sleep 3
echo "YOU: not on my watch."
sleep 3
echo "CastlePriest: thank you"
sleep 3
Market
}
#this function gets you to Backally
function load13() {
Backally
}
#this function serves to allow the user to interact with Back ally in town
function Backally() {
clear
echo
echo
echo
echo "LOCATION: BACKALLY"
sleep 3
echo "As you into the backally of the town, bandits pop out of nowhere"
sleep 3
echo "BANDIT: Come here, We don't bite."
sleep 3
echo "You must fight."
combat
echo "BANDIT: ahhh! darn you. next time we will get you, $name."
sleep 3
echo "the bandits ran away."
sleep 3
echo "you now stand in the back ally, what do you do?
Town(t)
Check a normal house(H1)
Find the lair(H2)
check the voodoo house(H3)
checkout the Ball(H4)
check out the poorman's house(H5)
check out a shopkeeper house(H6)
find a random house(H7)"
read answer
case $answer in
t | T )
echo "you went back to town"
sleep 5
Town
;;
h1 | H1 )
echo "you visit a house"
sleep 5
clear
sleep 3
echo "you knock on the door"
sleep 5
echo "the door opens."
sleep 3
echo "you see a Townsperson"
sleep 3
echo "TOWNSPERSON: sup, $name."
sleep 3
echo "YOU: sup"
sleep 4
echo "TOWNSPERSON: you do relize talking to strangers is weird right?"
sleep 3
echo "YOU: nope."
sleep 3
echo "the door slams shut"
sleep 5
load13
;;
h2 | H2 )
echo "you attempt to find their lair."
sleep 5
echo "you can't find it"
sleep 3
load13
;;
h3 | H3 )
echo "you check out the voodoo house"
sleep 3
clear
sleep 3
echo "you open the door"
sleep 3
echo "MS.VOODOO: Aye, how can I help you?
Potions(p)
dolls(d)
prince(1)"
read answer
case $answer in
p )
echo "MS.VOODOO: we don't sell potions. only dolls"
sleep 3
;;
d )
echo "MS.VOODOO: oh you want a doll. alright pay up."
sleep 3
echo "you bought a doll."
sleep 3
;;
1 )
echo "MS.VOODOO: SO you want the Prince doll. if you have the money, give it here!!!"
sleep 3
echo "unforchuntly, the doll was too expensive"
sleep 3
echo "MS.VOODOO: sorry can not help you there."
sleep 3
;;
*)
echo "MS.VOODOO: sorry can not help you there."
sleep 3
;;
esac
echo "MS.VOODOO: have a good one."
sleep 5
load13
;;
h4 | H4 )
echo "you checked out the Ball."
sleep 3
echo "It does not open until the prince says it is open."
sleep 3
load13
;;
h5 | H5 )
echo "you checked out the poorman's house."
sleep 3
echo "It is just a cardboard box."
sleep 3
load13
;;
h6 | H6 )
echo "you checked out a shopkeeper's house."
sleep 3
echo "the door is locked."
sleep 3
load13
;;
h7 | H7 )
echo "you checked out a random house."
sleep 3
echo "and you got lost."
sleep 3
load13
;;
*) 
echo "BANDIT: we're back! time to have a taste of your medicine."
load13
;;
esac
}
#this function sens you to Town
function load14() {
Town
}
#this function servers you to interact in the town
function Town() {
clear
sleep 3
echo
echo
echo
echo "LOCATION: TOWN"
echo
echo
echo "You have entered into to town. now what?
Fight(f)
North(n)
West(w)
Gate(g)
East(e)"
read answer
case $answer in
f | F )
clear
echo "you started a riot"
sleep 3
combat
load14
;;
n | N )
clear
echo "you head north"
sleep 5
HallwayRM
;;
w | W )
clear
echo "you head west"
sleep 3
Backally
;;
g | G )
clear
echo "you back outside the gate"
sleep 5
Gate
;;
e | E )
clear
echo "you head east"
sleep 5
Market
;;
*)
;;
esac
}
#this function is used to take you back to Market
function load15() {
Market
}
#this function allows you to interact with the Market.
function Market() {
clear
echo
echo
echo
echo "LOCATION: MARKET"
sleep 3
echo "you arrive at the market, and you are surrounded by bandats."
sleep 3
echo "BANDAT: hello, now give me the goods..."
sleep 3
echo "you must fight"
combat
echo "the bandats ran scuttled away"
sleep 3
echo "you are at the Market, what now?
shop(s)
north(n)
Town(t)"
read answer
case $answer in
s | S )
clear
sleep 3
echo "you went shopping."
sleep 5
echo "after shopping you went home, and returned back to the Market."
sleep 5
load15
;;
n | N )
clear
sleep 3
echo "you head north."
sleep 5
CTemple
;;
t | T )
clear
sleep 3
echo "you went to town."
sleep 5
Town
;;
*)
load15
;;
esac
}
#function to bring back to gate
function load16() {
Gate
}
#function for entering
function enter() {
echo "GUARD: you may enter."
sleep 3
echo "What will you do?
enter(e)
road(r)"
read answer
case $answer in
e | E )
echo "you enter"
sleep 3
echo "you head north"
sleep 5
Town
;;
r | R )
echo "you head back on the road"
sleep 5
RoadField
;;
*)
load16
;;
esac
}
#function for not entering
function Nenter() {
echo "GUARD: can't let you through now, come back later."
sleep 3
echo "now what?
Breakin(b)
road(r)"
read answer
case $answer in
b | B )
echo "you attempt to breakin"
combat
sleep 3
echo "you head north"
sleep 5
Town
;;
r | R )
echo "you head back on the road"
sleep 5
RoadField
;;
*)
load16
;;
esac
}
#this function allows you to interact with the gate leading to either road or town.
function Gate() {
clear
echo
echo
echo
echo "LOCATION: GATE"
sleep 3
echo "you walk up to the gate"
result=$(($RANDOM % 2 + 1))
case $result in
1 )
Nenter
;;
2 )

enter
;;
*)
load16
;;
esac
}

#this function get user back at road
function load11() {
RoadField
}
#this funtion interact you to the road to town.
function RoadField() {
clear
sleep 3
echo
echo
echo
echo "LOCATION: ROAD MAIN"
sleep 3
echo "as you walk on the road, 5 highwaymen block the way
you are given no choice but to fight."
sleep 3
clear
combat
clear
sleep 3
echo "you now stand on road main. what do you do?
North(n)
South(s)
East(e)"
read answer
case $answer in
n | N )
sleep 3
echo "you move North"
sleep 5
Gate
;;
s | S )
sleep 3
echo "you move South"
sleep 5
Horseride
;;
e | E )
sleep 3
echo "you move east"
sleep 5
Mine
;;
*)
load11
;;
esac
}
#this function takes user to Horseride
function load10() {
Horseride
}
#this function does the betting
function bet() {
clear
sleep 3
echo "Annoncer: the horses are ready."
sleep 3
echo "Annoncer: 3."
sleep 1
echo "Annoncer: 2."
sleep 1
echo "Annoncer: 1. and the horses are off."
user=$((RANDOM % 10))
Bet=$((RANDOM % 10))
if [ $user =  $Bet ]
then
echo "the winner of the race was $user."
sleep 3
echo "you won a huge reward."
elif [ $user -lt  $Bet ]
then
echo "the winner of the race was $Bet."
sleep 3
echo "you won a nothing."
else
echo "you bet your life, and lost."
sleep 3
echo "GAME OVER."
sleep 5
exit
fi
}
#this function allows the user to interact with Horseride
function Horseride() {
clear
sleep 5
echo
echo
echo
echo "LOCTATION: HORSE-RIDE"
sleep 3
echo "Annoncer: ladies, and and gents. welcome to Horse-Ride. here we are hosting the 60th rally of the century."
sleep 5
echo "What are you going to do?
Gamble on the winner(b)
Go north(n)
Go east(e)"
read answer
case $answer in
b | B )
sleep 3
echo "you went to gamble"
sleep 5
bet
load10
;;
n | N )
clear
sleep 3
echo "you went north."
sleep 5
RoadField
;;
e | E )
clear
sleep 3
echo "you went into Death Forest"
sleep 5
DeathForest
;;
*)
echo "Annoncer: the race will began in 10 minutes!"
load10
;;
esac
}
#this function serves to redircet user back to Deep Forest
function load5() {
DeepForest
}
#this function serves to interact with the Deep Forest
function DeepForest() {
clear
sleep 3
echo "LOCACTION: DEEP FOREST"
echo
echo
sleep 3
echo "5 wolves come out of the trees to attack you"
sleep 3
combat
echo "you are in DEEP Forest, what do you do?
Head back (H)
Fight(F)"
read answer
case $answer in
h | H )
echo "you head back to the village"
sleep 5
Village
;;
f | f )
echo "you decide to fight more."
sleep
load5
;;
*)
load5
;;
esac
}
#this function loads the user back to tree
function load6() {
Tree
}
#this function serves to have the user interact with Tree
function Tree() {
clear
sleep 3
echo "LOCATION: TREE"
sleep 3
echo "What do you do?
Tree(t)
village(v)
North (n)
East(e)"
read answer
case $answer in
t | T )
clear
echo "you climb the huge tree"
sleep 4
echo "TREE: HEY!"
sleep 3
echo "you fell off the tree"
sleep 3
echo "and survived..."
sleep 3
load6
;;
v | V )
echo "you head back to the village"
sleep 5
Village
;;
n | N )
clear
sleep 3
echo "you head north"
sleep 5
FTemple
;;
e | E )
clear
sleep 3
echo "you head East"
sleep 5
Garden
;;
*)
echo "TREE: uhh."
sleep 3
load6
;;
esac
}
#this functionpulls user back to forest temple
function load7() {
FTemple
}
#this function serves for the user to interact in the village temple
function FTemple() {
clear
sleep 3
echo "LOCATION: FOREST TEMPLE"
echo
echo
sleep 3
echo "FORESTPRIEST: hello, $name. What may I help you with?
Who is Bart(B)
Train(t)
who is my enemy(e)
back(s)"
read answer
case $answer in
b | B )
clear
sleep 3
echo "FORESTPRIEST:oh, Bart?
*Laughther*"
sleep 3
echo "FORESTPRIEST: Bart was a person named Scrooge"
sleep 3
echo "FORESTPRIEST: let us just say a solicitor came by and got Scrooge very angry."
sleep 3
echo "and the solicitor,
*Laughter"
sleep 3
echo "turn her into a tree."
sleep 3
echo "and that is how Bart came to be."
sleep 3
load7
;;
t | T )
echo "sure we can train."
sleep 3
echo "we will train at the training grounds"
sleep 3
dummy2
clear
sleep 3
echo "you return to the Forest Temple"
sleep 3
echo "FORESTPRIEST: wow, I love how things went. Can you?"
load7
;;
e | E )
echo "FORESTPRIEST: oh, umm"
sleep 3
echo "FORESTPRIEST: wolves, guards, bandits, goblins, and..."
sleep 3
echo "FORESTPRIEST: Prince Wilianm Douclair"
sleep 3
echo "it is said that the prince was responsible of the scurge. defeating him may help"
sleep 5
load7
;;
s | S )
clear
sleep 3
echo "you head back to the tree"
sleep 5
Tree
;;
*)
echo "FORESTPRIEST: *Clears her throat."
sleep 3
load7
;;
esac
}
#this function takes user to Training
function load9() {
Training
}
#this function has you train with people
function dummy2() {
user=$(($RANDOM % 10))
trainee=$(($RANDOM % 10))
echo "You picked your training partner"
sleep 3
echo "and you train"
sleep 5
if [ $user = $trainee -o $user -gt $trainee ]
then
echo "your training was successful as you defeat your trainee"
sleep 3
else
echo "your training was unsuccessful as your trainee defeats you."
sleep 3
fi
}
#this function gets you to interact with the training grounds
function Training(){
clear
sleep 3
echo
echo 
echo
echo "LOCATION: TRAINING GROUNDS"
sleep 3
echo "you are at the training grounds. what may you do?
train(t)
garden(d)"
read answer
case $answer in
t | T )
clear
sleep 3
echo "and so, you train"
sleep 3
dummy2
load9
;;
d | D )
clear
sleep 3
echo "you head back to garden"
sleep 5
Garden
;;
*)
load9
;;
esac
}
#this function gets you back to the garden
function load8() {
Garden
}
#this functio serves to have the user interact with forest garden
function Garden() {
clear
sleep 3
echo
echo
echo
echo "LOCATION: GARDEN"
sleep 3
echo "you are at the garden what do you do?
garden(g)
Tree(t)
North(n)"
read answer
case $answer in
g | G )
garden=$(($RANDOM % 2))
clear
echo "you did some gardening"
sleep 5
case $garden in
0 )
echo "the gardeners were pleased"
sleep 3
echo "Gardener: oh thank you $name."
sleep 3
echo "YOU: anytime"
sleep 3
;;
1 )
echo "should you be doing better than this?"
sleep 3
;;
esac
load8
;;
t | T )
clear
echo "you head back to the tree"
sleep 5
Tree
;;
n | N )
clear
echo "you head north"
sleep 5
Training
;;
*)
echo "a gardener waves at you."
sleep 3
load8
;;
esac
}
#this function gets you back to Village
function load4() {
Village
}
#this function lets a user visit a normal house in the village
function Vhouse() {
clear
sleep 3
echo "you walk up to the door."
sleep 3
echo "the door opens with a villiger"
sleep 3
echo "Villiger:, hello"
sleep 3
echo "YOU: hi"
sleep 5
echo "Villiger: goodbye"
sleep 3
echo "the door closes shut"
sleep 3
load4
}
#this function lets a user visit the small hut.
function Vhut() {
clear
sleep 3
echo "you walk up to the door"
sleep 3
echo "From the window, you see a crazy man running around the interrior saying weird stuff"
sleep 3
load4
}
#this function gets back to talking to the Village mayor
function load4.1() {
VMayor
}
#this function lets a user visit the mayor of the village
function VMayor() {
clear
sleep 3
echo "you walk up to the door"
sleep 3
echo "MAYOR: ah, well is in it $name. How may I help?
Temple(1)
Tree(2)
Training(3)
Where to go(4)
go back(5)"
read answer
case $answer in
1 )
echo "MAYOR: oh, just go east to Bart, then make a left."
sleep 3
echo "YOU: wait, the tree has a name?"
sleep 3
echo "MAYOR: yes, the tree is Bart. do not tell me why, somethings are left not to be discovered."
sleep 3
echo "YOU: hmmmmm."
sleep 3
echo "MAYOR: I said : DON'T QUESTION IT!"
sleep 3
load4.1
;;
2 )
echo "MAYOR: oh, just go to Bart. straight east."
sleep 3
echo "YOU: OK"
sleep 3
load4.1
;;
3 )
echo "MAYOR: oh, so you are one of those Chads."
sleep 3
echo "MAYOR: Ok, just go past Bart to the garden and make a left."
sleep 3
load4.1
;;
4 )
#where to go
echo "MAYOR: well $name, it is true you are here to liberate us correct?"
sleep 3
echo "YOU: yes."
sleep 3
echo "MAYOR: just go to the Road, it will lead you to town."
sleep 3
echo "MAYOR: from there, head north to the castle, there you must do your duty"
sleep 5
echo "YOU: ok. thanks"
sleep 3
echo "any time."
sleep
load4
;;
5 )
load4
;;
esac
}
#this function lets you visit Scrooge.
function Scrooge() {
clear
sleep 3
echo "you walk up to the door"
sleep 3
echo "a sign appears on the door."
sleep 3
echo "NO Solicitors"
sleep 3
echo "You decide not to bother Scrooge"
sleep 3
load4
}
#this function presents you the creepy house in the village
function Creep() {
clear
sleep 3
echo "you walk up to the door"
sleep 3
#enter the creepy death
echo "The door opens on its own"
sleep 4
echo
echo
echo "then, A giant skelital hand comes out grasping you"
sleep 3
echo "no one could have heard your screams as you are pulled inside the house."
echo
echo
echo
sleep 3
echo "Indeed, you met a terrible fate."
sleep 3
echo "GAME OVER"
sleep 5
exit
}
#this function acts to allow player to interact with Village
function Village() {
clear
sleep 3
echo "LOCATION: VILLAGE"
echo 
echo
echo "walk in a beutiful and friendly village, what do you do?
Go North(n)
Go East(e)
Go to Death Forest(w)
visit a normal house(h1)
visit the small hut(h2)
visit the mayor place(h3)
visit Scrooge's House(h4)
view the creepy house on the corner(h5)"
read answer
case $answer in
n | N )
clear
sleep 3
echo "you decide to go north"
sleep 5
DeepForest
;;
e | E )
clear
sleep 3
echo "you decide to go east."
sleep 5
Tree
;;
w | W )
sleep 3
echo "you go into Death Forest"
sleep 5
DeathForest
;;
h1 | H1 )
sleep 3
echo "you went to visit a normal house."
sleep 5
Vhouse
;;
h2 | H2 )
sleep 3
echo "you went to visit the small hut."
sleep 5
Vhut
;;
h3 | H3 )
sleep 3
echo "you went to visit the Mayor's house."
sleep 5
VMayor
;;
h4 | H4 )
sleep 3
echo "you went to visit Scrooge's house."
sleep 5
Scrooge
;;
h5 | H5 )
sleep 3
echo "you went to visit the creepy house."
sleep 5
Creep
;;
*)
sleep 3
echo "a villager bumps into you, which causes you to lose your chain of thought"
load4
;;
esac
}
#this function gets you back to the Mine Baron.
function load3.1() {
MineBaron
}
#this function settles how the player interacts the Mine
function MineBaron() {
#lets you talk to the MineBaron
echo "YOU: Hello
sleep 3
MINEBARON: What do you want?"
sleep 3
echo " who are you?(who)
what do you want?(want)
What can I do?(do)"
read answer
case $answer in
who | Who )
echo "MINEBARON: Well $name, I am the Mine Baron."
sleep 3
echo "MINEBARON: I am in charge of Lyar's sole mine."
sleep 3
echo "MINEBARON: I make sure materials and ores a distributed nicely."
sleep 3
load3.1
;;
want | Want )
echo "MINEBARON: ores, I need ores."
sleep 3
echo "MINEBARON: and more people."
sleep 3
echo "MINEBARON: I suppose you could help with that right?"
sleep 3
load3.1
;;
do | Do )
echo "MINEBARON: well, you could go mining for me."
sleep 3
load3.1
;;
*)
echo "you made the Mine baron fall asleep."
sleep 3
load3.1
;;
esac
#load3
}
function Mining() {
sleep 3
mine=$(($RANDOM % 4))
case $mine in
0 )
echo "you died mining"
sleep 3
echo "GAME OVER"
sleep 5
exit
;;
1 )
sleep 5
echo "you stoped mining and got no luck in ores"
sleep 3
load3
;;
2 )
sleep 5
echo "you got a small amount of ore"
sleep 3
load3
;;
3 )
sleep 5
echo "you got a large amount of ore"
sleep 3
load3
;;
esac
}
function load3() {
Mine
}
function Mine() {
clear 
sleep 3
echo "LOCATION: MINE"
#prompt
echo "You are in the Mine, What do you do?
Mine ores(m)
talk to Mine Baron(b)
got into Death Forest(s)
West(w)"
read answer
case $answer in
m | M )
echo "You picked up a picaxe and started mining."
Mining
;;
b | B )
clear
sleep 3
echo "you went to talk to the Mine Baron."
sleep 3
MineBaron
;;
s | S )
clear
sleep 3
echo "You decided to go into Death Forest"
sleep 3
echo "MINEBARON: oh, Be careful $name.
those Goblins out there pack a punch."
sleep 5
DeathForest
;;
w | W )
clear
sleep 3
echo "You decided to go West"
sleep 5
RoadField
;;
*)
echo "MINEBARON: HEY! Don't just stand there, you slacker."
sleep 3
load3
;;
esac
}
#this function serves to interact with DeathForest
function DeathForest() {
clear
sleep 3
echo "LOCATION: DEATH FOREST"
echo
echo
# introduce player to combat
echo "5 goblins are running towards you.
you must fight."
sleep 5
combat
echo "you are in Death Forest, what will you do?
HOME(h)
fight(f)
go north(n)
go east(e)
go west(w)"
read answer
#echo $answer
case $answer in
h | H )
clear
sleep 3
echo "you went back home."
sleep 5
houseuser
;;
 f | F ) echo -e "line 42"
  clear
  sleep 3
  echo "you decide to fight more."
  sleep 3
  combat
load2
;;

n | N ) -e echo "line 50"
  clear; 
  sleep 3; 
  echo "you decided to go north.";
  sleep 5
Mine
;;
e | E )
clear
sleep 3
echo "you decided to go east"
sleep 5
Village
;;
w | W )
clear
sleep 3
echo "you decided to go west"
sleep 5
Horseride
;;
*) 
echo "*Goblin: $name, we are coming for you!!!";
sleep 3;
load2
;;
esac
}
#this function serves to conduct combat
function combat() {
user=$(($RANDOM % 10))
Foe=$(($RANDOM % 10 - 1))
if [ $user = $Foe -o $user -gt $Foe ]
then
sleep 5
echo "  You Won."
sleep 5
clear
else
sleep 5
echo "  You Died"
sleep 3
echo "  GAME OVER"
sleep 5
exit
fi
}
#this function serves to redirect the user back into DeathForest
function load2() {
DeathForest
}
#this function starts the game
function Prolonge() {
#ask for user's name.
echo "Who are you?"
read name
#Prolonge
clear
sleep 3
echo "once there was peace in the land of Lyar"
sleep 3
echo
echo
echo
echo "then the skrimage occured"
sleep 3
echo
echo
echo
echo "you, $name, are task to one objective"
sleep 3
echo
echo
echo
echo "Liberate Lyar"
sleep 5
}
Prolonge

#this function serves to let the user interact in the user's home.
function dummy() {
user=$(($RANDOM % 10))
dum=$(($RANDOM % 10))
echo "$user"
echo "$dum"
sleep 5
if [ $user = $dum -o $user -gt $dum ]
then
echo "your training was completed as you beatup the dummy down into the ground."
else
echo "you walk back with the face of defeat."
fi
sleep 5
load
}
function bed() {
clear
sleep 3
echo "You chose to sleep"
sleep 5
echo "nothing happens"
}
function houseuser() {
clear
sleep 3
echo "LOCATION: HOME"
echo
echo
echo "you are in your house, what will you do?
Sleep(s)
Leave(l)
train(t)"
read answer
#echo $answer
case $answer in
s | S ) 
bed; sleep 3; load;;
l | L ) 
clear; sleep 3; echo "You leave the comfort of your home, and into the wilds."; sleep 5; DeathForest;;
t | T ) 
clear; sleep 3; echo "you decided to train with the dummy in your house"; dummy;;
#*) echo "*clearing throat"; sleep 3; load;;
esac
 }
houseuser
#this function serves to redirect the user back to the houseuser function.
function load() {
houseuser
}
load
