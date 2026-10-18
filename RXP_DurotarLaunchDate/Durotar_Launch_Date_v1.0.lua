local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
<< Orc Mage
#name 1-5 Valley of Trials (Launch Date v1.0)
#version 1.0
#group Durotar Launch Date v1.0
#subgroup Orc Mage
#next 5-11 Durotar (Launch Date v1.0)

step
    .goto 1411/1,-4251.46,-607.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Accept Your Place In The World
    .target Kaltunk
step
    .goto 1411/1,-4198.05,-605.59,12,0
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Turn in Your Place In The World
    .accept 788 >>Accept Cutting Teeth
    .accept 97279 >>Accept Wayward Weapons
    .target Gornek
step
    #loop
    .goto 1411/1,-4319.50,-751.00,0
    .goto 1411/1,-4319.50,-751.00,40,0
    .goto 1411/1,-4280.00,-735.00,40,0
    .goto 1411/1,-4350.00,-720.00,40,0
    .goto 1411/1,-4360.00,-775.00,40,0
    .goto 1411/1,-4300.00,-790.00,40,0
    .goto 1411/1,-4250.00,-765.00,40,0
    >>Kill |cRXP_ENEMY_Mottled Boars|r. Loot |cRXP_PICK_Abandoned Training Weapons|r. Keep the |cRXP_LOOT_Boar Meat|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
    .complete 97279,1 --Abandoned Training Weapon (6)
step
    .goto 1411/1,-4102.40,-588.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kzan Thornslash|r in the back of the Den
    .turnin 97279 >>Turn in Wayward Weapons
    .vendor >>Vendor trash
    .target Kzan Thornslash
step
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 788 >>Turn in Cutting Teeth
    .accept 789 >>Accept Sting of the Scorpid
    .accept 98576 >>Accept Glyphic Parchment
    .target Gornek
step
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .turnin 98576 >>Turn in Glyphic Parchment
    .train 1459 >>Train |T135932:0|t[Arcane Intellect]
    .target Mai'ah
step
    #completewith LeaveValley
    .cast 1459 >>Cast |T135932:0|t[Arcane Intellect] on yourself
step
    .goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Accept Vile Familiars
    .target Zureetha Fargaze
step
    .goto 1411/1,-4221.85,-561.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water]
    .accept 4402 >>Accept Galgar's Cactus Apple Surprise
    .collect 159,10,4402,1 --Refreshing Spring Water (10)
    .target Galgar
step
    #completewith Familiars
    >>Loot |cRXP_LOOT_Cactus Apples|r from the cacti you pass
    .complete 4402,1 --Cactus Apple (10)
step
    .goto 1411/1,-4108.70,-397.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r
    .accept 790 >>Accept Sarkoth
    .target Hana'zua
step
    .goto 1411/1,-4109.22,-546.37
    >>Kill |cRXP_ENEMY_Sarkoth|r. Loot his |cRXP_LOOT_Mangled Claw|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto 1411/1,-4108.70,-397.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r
    .turnin 790 >>Turn in Sarkoth
    .accept 804 >>Accept Sarkoth
    .target Hana'zua
step
    #completewith Familiars
    #loop
    .goto 1411/1,-4413.70,-454.50,0
    .goto 1411/1,-4413.70,-454.50,40,0
    .goto 1411/1,-4351.00,-285.10,40,0
    .goto 1411/1,-4153.00,-299.40,40,0
    .goto 1411/1,-4246.50,-179.20,40,0
    >>Kill |cRXP_ENEMY_Scorpid Workers|r on the way to the cave
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #label Familiars
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    >>Kill |cRXP_ENEMY_Vile Familiars|r outside the cave
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #loop
    .goto 1411/1,-4324.43,-480.10,0
    .goto 1411/1,-4259.92,-411.01,25,0
    .goto 1411/1,-4333.94,-360.95,25,0
    .goto 1411/1,-4335.53,-294.68,25,0
    .goto 1411/1,-4391.05,-328.52,25,0
    .goto 1411/1,-4462.43,-405.37,25,0
    .goto 1411/1,-4398.98,-411.71,25,0
    .goto 1411/1,-4324.43,-480.10,25,0
    >>Finish the |cRXP_LOOT_Cactus Apples|r and |cRXP_ENEMY_Scorpid Workers|r on the way back
    .complete 4402,1 --Cactus Apple (10)
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    .goto 1411/1,-4221.85,-561.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Turn in Galgar's Cactus Apple Surprise
    .vendor >>Vendor trash
    .target Galgar
step
    .skill herbalism,1 >>Use the reward from Galgar to learn |T136065:0|t[Herbalism]
step
    #sticky
    #completewith CampHerb
    >>|cRXP_WARN_Pick herbs on your path. Get 20 herbalism before Orgrimmar|r
    .skill herbalism,20
step
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 804 >>Turn in Sarkoth
    .turnin 789 >>Turn in Sting of the Scorpid
    .target Gornek
step
    .goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>Turn in Vile Familiars
    .target Zureetha Fargaze
step
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >>Train |T135846:0|t[Frostbolt]
    .target Mai'ah
    .xp <4,1
step
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >>Train |T135812:0|t[Fireball Rank 2]
    .target Mai'ah
    .xp <6,1
step
    #label LeaveValley
    .goto 1411/1,-4452.38,-631.32,25,0
    .goto 1411/1,-4554.43,-628.50,20,0
    .goto 1411/1,-4600.96,-603.82,25 >>Leave the Valley of Trials
step
    .goto 1411/1,-4715.17,-599.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ukor|r on the road
    .accept 2161 >>Accept A Peon's Burden
    .target Ukor

]])

RXPGuides.RegisterGuide([[
#forever
<< Orc Mage
#name 5-11 Durotar (Launch Date v1.0)
#version 1.0
#group Durotar Launch Date v1.0
#subgroup Orc Mage
#next RestedXP Forever Guide (H)\12-17 The Barrens

step
    #sticky
    #completewith Tailoring
    >>|cRXP_WARN_Keep every|r |T132889:0|t[Linen Cloth]|cRXP_WARN_. You need 40 by Orgrimmar for Tailoring|r
    .collect 2589,40 --Linen Cloth (40)
-- Sen'jin: pickups, shore and Kolkar in one trip
step
    .xp 5 >>|cRXP_WARN_A Solvent Spirit and Thwarting Kolkar Aggression need level 5. Kill mobs on the road until you are 5|r
step
    #completewith next
    .goto 1411/1,-4948.35,-769.15,40 >>Run to Sen'jin Village
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r and |cRXP_FRIENDLY_Gadrin|r
    .accept 96821 >>Accept Legging It
    .target +Vel'rin Fang
    .goto 1411/1,-4920.86,-797.70
    .accept 818 >>Accept A Solvent Spirit
    .target +Master Vornal
    .goto 1411/1,-4920.33,-814.27
    .accept 823 >>Accept Report to Orgnil
    .target +Master Gadrin
    .goto 1411/1,-4920.33,-825.55
step
    .goto 1411/1,-4838.00,-777.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar Prowltusk|r. He patrols
    .accept 786 >>Accept Thwarting Kolkar Aggression
    .target Lar Prowltusk
step
    .goto 1411/1,-4939.36,-838.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Thuwa|r
    .train 5504 >>Train |T134459:0|t[Conjure Water]
    .target Un'Thuwa
step
    .goto 1411/1,-4939.36,-838.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Thuwa|r
    .train 116 >>Train |T135846:0|t[Frostbolt] |cRXP_WARN_(catch-up if you skipped it in the Valley)|r
    .target Un'Thuwa
    .xp <4,1
step
    #completewith KolkarPlans
    >>Kill |cRXP_ENEMY_Crawlers|r and |cRXP_ENEMY_Makrura|r you pass. |cRXP_WARN_A Solvent Spirit is optional. Do not stay on the beach to finish it|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label KolkarPlans
    #loop
    .goto 1411/1,-5057.80,-866.79,0
    .goto 1411/1,-5057.80,-866.79,40,0
    .goto 1411/1,-5014.97,-937.99,40,0
    .goto 1411/1,-4908.69,-998.27,40,0
    .goto 1411/1,-4829.91,-1091.33,40,0
    .goto 1411/1,-4722.57,-1117.42,40,0
    .goto 1411/1,-4653.84,-983.47,30,0
    .goto 1411/1,-4596.20,-1057.14,12,0
    .goto 1411/1,-4482.52,-917.90,12,0
    .goto 1411/1,-4406.91,-974.30,12,0
    >>Kill everything down the beach and through Kolkar Crag. Burn the 3 |cRXP_PICK_Attack Plans|r: one inside the tent, two on the ground further in
    >>|cRXP_WARN_Grind to 2100/2800 xp. The turn-in (700 xp) then dings you to 6|r
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .xp 5+2100 >>Grind to 2100+/2800xp
step
    #completewith KolkarTurnins
    >>|cRXP_WARN_Optional:|r if |cRXP_FRIENDLY_Pal'juh|r is next to the Orgrimmar plan, accept Lost in the Shadows and escort him to the camp entrance. Skip him if he is not there
    .accept 99123 >>Accept Lost in the Shadows
    .target Pal'juh
    .complete 99123,1 --Escort Pal'juh out of Kolkar Crag (1)
step
    #softcore
    #completewith KolkarTurnins
    .goto 1411/1,-4482.52,-917.90
    .deathskip >>Die in the Kolkar camp and respawn in Sen'jin. |cRXP_WARN_If you are escorting Pal'juh, finish the escort first|r
    .macro Release,134400 >>/run local m=C_Map.GetBestMapForUnit("player") local p=m and C_DeathInfo.GetDeathReleasePosition(m) print(p and format("Release: %.1f, %.1f",p.x*100,p.y*100) or "No release point")
    .isOnQuest 786
step
    #label KolkarTurnins
    .goto 1411/1,-4838.00,-777.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar Prowltusk|r. He patrols
    .turnin 786 >>Turn in Thwarting Kolkar Aggression
    .target Lar Prowltusk
step
    .goto 1411/1,-4920.33,-814.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Vornal|r
    .turnin 818 >>Turn in A Solvent Spirit
    .target Master Vornal
    .isQuestComplete 818
step
    .goto 1411/1,-4920.33,-814.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Vornal|r
    .turnin 99123 >>Turn in Lost in the Shadows
    .target Master Vornal
    .isQuestComplete 99123
step
    .goto 1411/1,-4939.36,-838.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Thuwa|r now that you are 6
    .train 143 >>Train |T135812:0|t[Fireball Rank 2]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Un'Thuwa
    .xp <6,1

-- North to Razor Hill
step
    .goto 1411/1,-4715.17,-599.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ukor|r
    .turnin 96876 >>Turn in Ukor's Lost Pack
    .target Ukor
    .isQuestComplete 96876
step
    #loop
    .goto 1411/1,-4710.40,-209.40,0
    .goto 1411/1,-4710.40,-209.40,40,0
    .goto 1411/1,-4565.70,-192.30,40,0
    >>Kill |cRXP_ENEMY_Ridgeshade Creepers|r and |cRXP_ENEMY_Ridgeshade Lurkers|r on the ridge
    >>|cRXP_WARN_(Optional) Kill|r |cRXP_ENEMY_Ukorsbane|r |cRXP_WARN_(elite) for a quest starting item if you can group/get help|r
    .complete 96821,1 --Ridgeshade Creeper (6)
    .mob +Ridgeshade Creeper
    .complete 96821,2 --Ridgeshade Lurker (6)
    .mob +Ridgeshade Lurker

-- Razor Hill
step
    .goto 1411/1,-4713.00,140.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brakk|r
    .turnin 96652 >>Turn in The Adventurer
    .target Brakk
    .isOnQuest 96652
step
    .goto 1411/1,-4713.00,140.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brakk|r
    .accept 96604 >>Accept The Great Outdoors
    .target Brakk
step
    .goto 1411/1,-4715.20,140.10
    >>Type /sit at the campfire and wait for the Boosted Rest buff
    .complete 96604,1 --Use the /sit emote near the campfire
    .macro Sit,134400 >>/sit
    .timer 59,Campfire
    .complete 96604,2 --Gain the Boosted Rest buff
step
    .goto 1411/1,-4713.00,140.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brakk|r
    .turnin 96604 >>Turn in The Great Outdoors
    .accept 96655 >>Accept Camping 101: Cooking
    .accept 97905 >>Accept Camping 101: Herbalism
    .target Brakk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r and |cRXP_FRIENDLY_Orgnil|r
    .turnin 96821 >>Turn in Legging It
    .accept 784 >>Accept Vanquish the Betrayers
    .target +Gar'thok
    .goto 1411/1,-4709.36,274.96
    .turnin 823 >>Turn in Report to Orgnil
    .accept 806 >>Accept Dark Storms
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
step
    .goto 1411/1,-4709.36,274.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r
    .accept 837 >>Accept Encroachment
    .target Gar'thok
    .xp <6,1
step
    .goto 1411/1,-4810.10,307.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turroc|r
    .accept 96822 >>Accept For Honor
    .target Turroc
step
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Grosk|r
    .turnin 2161 >>Turn in A Peon's Burden
    .home >>Set your Hearthstone to Razor Hill
    .bindlocation 362
    .target Innkeeper Grosk
step
    .goto 1411/1,-4665.40,311.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Torka|r
    .accept 96825 >>Accept This Fruit Could Bite Back
    .train 2550 >>Train |T133971:0|t[Apprentice Cooking]
    .turnin 96655 >>Turn in Camping 101: Cooking
    .accept 815 >>Accept Break a Few Eggs
    .target Cook Torka
step
    .goto 1411/1,-4665.40,311.90
    +Cook all your |T133971:0|t[Roasted Boar Meat] at a fire. Keep Well Fed up while killing
step
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl Scornbrow|r at the top of the watchtower
    .accept 791 >>Accept Carry Your Weight
    .target Furl Scornbrow

-- Tiragarde Keep. Leave if crowded; the turn-ins hide themselves
step
    #completewith TiragardeKills
    .goto 1411/1,-4979.20,-232.80,40 >>Travel to Tiragarde Keep
step
    #label TiragardeKills
    #loop
    .goto 1411/1,-5081.60,-246.74,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto 1411/1,-5034.54,-148.75,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.74,30,0
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Marines|r. Loot |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
step
    #completewith Benedict
    .goto 1411/1,-5092.10,-182.70,25,0
    >>Loot the |cRXP_PICK_Raider's Bow|r (broken table), |cRXP_PICK_Battleaxe|r (outside the barracks) and |cRXP_PICK_Shield|r (tower)
    .complete 96822,1 --Raider's Bow (1)
    .complete 96822,2 --Raider's Battleaxe (1)
    .complete 96822,3 --Raider's Shield (1)
step
    #completewith Benedict
    .goto 1411/1,-5124.95,-243.92,8,0
    .goto 1411/1,-5115.96,-251.68,8,0
    .goto 1411/1,-5111.21,-232.29,8,0
    .goto 1411/1,-5097.46,-232.29,8 >>Go to the second floor of the keep
step
    #label Benedict
    .goto 1411/1,-5121.78,-245.68
    >>Kill |cRXP_ENEMY_Lieutenant Benedict|r. Skip him if camped
    .complete 784,3 --Lieutenant Benedict (1)
    .mob Lieutenant Benedict
step
    .goto 1411/1,-5086.87,-225.00
    >>Loot |cRXP_LOOT_Benedict's Key|r. Open the |cRXP_PICK_chest|r on the third floor and use the |T133470:0|t[Aged Envelope]
    .collect 4881,1,830 --Aged Envelope (1)
    .accept 830 >>Accept The Admiral's Orders
    .use 4881
step
    #softcore
    #completewith TiragardeTurnins
    .goto 1411/1,-4992.24,-77.54,120,0
    .deathskip >>Die at the northern tower outside the keep and respawn in Razor Hill
    .macro Release,134400 >>/run local m=C_Map.GetBestMapForUnit("player") local p=m and C_DeathInfo.GetDeathReleasePosition(m) print(p and format("Release: %.1f, %.1f",p.x*100,p.y*100) or "No release point")
step
    #label TiragardeTurnins
    .goto 1411/1,-4709.36,274.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r
    .turnin 784 >>Turn in Vanquish the Betrayers
    .accept 825 >>Accept From The Wreckage....
    .target Gar'thok
    .isQuestComplete 784
step
    .goto 1411/1,-4709.36,274.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r
    .turnin 830 >>Turn in The Admiral's Orders
    .accept 831 >>Accept The Admiral's Orders
    .target Gar'thok
    .isOnQuest 830
step
    .goto 1411/1,-4709.36,274.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r
    .accept 837 >>Accept Encroachment
    .target Gar'thok
    .xp <6,1
step
    .goto 1411/1,-4810.10,307.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turroc|r
    .turnin 96822 >>Turn in For Honor
    .target Turroc
    .isQuestComplete 96822
step
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl Scornbrow|r
    .turnin 791 >>Turn in Carry Your Weight
    .target Furl Scornbrow
    .isQuestComplete 791

-- From the Wreckage and A Solvent Spirit, then drown to Sen'jin at 8
step
    #completewith GnomishTools
    >>Kill |cRXP_ENEMY_Crawlers|r and |cRXP_ENEMY_Makrura|r on the shore to finish A Solvent Spirit
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
    .isOnQuest 818
step
    #label GnomishTools
    #loop
    .goto 1411/1,-5238.63,-146.63,0
    .goto 1411/1,-5238.63,-146.63,20,0
    .goto 1411/1,-5253.97,-177.65,20,0
    .goto 1411/1,-5263.49,-301.03,20,0
    .goto 1411/1,-5245.51,-330.64,20,0
    .goto 1411/1,-5267.72,-326.41,20,0
    .goto 1411/1,-5306.31,-239.69,20,0
    .goto 1411/1,-5253.97,-177.65,20,0
    >>Loot the |cRXP_PICK_Gnomish Toolboxes|r in and around the wrecked boats off the keep
    .complete 825,1 --Gnomish Tool (3)
    .isOnQuest 825
step
    #loop
    .goto 1411/1,-5081.60,-246.74,0
    .goto 1411/1,-5238.63,-146.63,40,0
    .goto 1411/1,-5263.49,-301.03,40,0
    .goto 1411/1,-5081.60,-246.74,40,0
    .goto 1411/1,-5010.74,-254.50,40,0
    .goto 1411/1,-4995.41,-186.46,40,0
    >>Finish A Solvent Spirit on the shore. Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Marines|r too
    >>|cRXP_WARN_Get to 3875/4500 xp at level 7. Turning in A Solvent Spirit (625 xp) in Sen'jin dings you to 8|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .xp 7+3875 >>Grind to 3875+/4500xp
    .isOnQuest 818
step
    #loop
    .goto 1411/1,-5081.60,-246.74,0
    .goto 1411/1,-5081.60,-246.74,30,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto 1411/1,-5034.54,-148.75,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Marines|r until you are level 8
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .xp 8 >>Grind to level 8
    .isQuestTurnedIn 818

-- Sen'jin: train and pick up the Echo Isles quests
step
    #softcore
    #completewith SenjinPickups
    .goto 1411/1,-5300.00,-380.00,60,0
    .deathskip >>Swim out south of the keep and stay underwater until you drown. Respawn in Sen'jin
    .macro Release,134400 >>/run local m=C_Map.GetBestMapForUnit("player") local p=m and C_DeathInfo.GetDeathReleasePosition(m) print(p and format("Release: %.1f, %.1f",p.x*100,p.y*100) or "No release point")
step
    .goto 1411/1,-4920.33,-814.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Vornal|r
    .turnin 818 >>Turn in A Solvent Spirit
    .target Master Vornal
    .isQuestComplete 818
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vornal|r and |cRXP_FRIENDLY_Gadrin|r
    >>|cRXP_WARN_Skip Practical Prey|r
    .accept 97225 >>Accept Forgotten Loa Idols
    .target +Master Vornal
    .goto 1411/1,-4920.33,-814.27
    .accept 808 >>Accept Minshina's Skull
    .accept 826 >>Accept Zalazane
    .target +Master Gadrin
    .goto 1411/1,-4920.33,-825.55
step
    .goto 1411/1,-4885.20,-852.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xar'Ti|r
    .accept 97223 >>Accept Bloodtalon Matriarch
    .target Xar'Ti
step
    .goto 1411/1,-4939.36,-838.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Thuwa|r
    .train 205 >>Train |T135846:0|t[Frostbolt Rank 2]
    .target Un'Thuwa
    .xp <8,1

-- Echo Isles
step
    #completewith Matriarch
    .goto 1411/1,-5510.41,-634.14,100 >>Swim to the first island
step
    #completewith TaillasherEggs
    >>Loot the |cRXP_PICK_Taillasher Eggs|r on the ground. A |cRXP_ENEMY_Bloodtalon Taillasher|r usually guards them
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
    .isOnQuest 815
step
    #label Matriarch
    .goto 1411/1,-5599.50,-716.70
    >>Kill the |cRXP_ENEMY_Bloodtalon Matriarch|r in the middle of the island. Loot her |cRXP_LOOT_Eggs|r
    .complete 97223,1 --Bloodtalon Matriarch Eggs (1)
    .mob Bloodtalon Matriarch
step
    #completewith Zalazane
    .goto 1411/1,-5501.95,-1167.12,150 >>Swim to the main island
step
    #completewith TrollKills
    >>Kill |cRXP_ENEMY_Hexed Trolls|r and |cRXP_ENEMY_Voodoo Trolls|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith LoaIdols
    >>Loot the |cRXP_PICK_Loa Idols|r on the ground, mostly by the stone walls
    .complete 97225,1 --Forgotten Loa Idols (8)
step
    #label Zalazane
    .goto 1411/1,-5526.27,-1286.62
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot his |cRXP_LOOT_Head|r. Loot one of the |cRXP_LOOT_Skulls|r on the ground next to him
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
    .complete 808,1 --Minshina's Skull (1)
step
    #label TrollKills
    #loop
    .goto 1411/1,-5517.29,-1320.46,0
    .goto 1411/1,-5517.29,-1320.46,40,0
    .goto 1411/1,-5479.74,-1284.50,40,0
    .goto 1411/1,-5449.08,-1248.55,40,0
    .goto 1411/1,-5446.96,-1154.08,40,0
    .goto 1411/1,-5445.90,-1112.13,40,0
    .goto 1411/1,-5525.22,-1103.67,40,0
    .goto 1411/1,-5580.21,-1097.32,40,0
    .goto 1411/1,-5584.44,-1163.95,40,0
    .goto 1411/1,-5582.85,-1250.31,40,0
    .goto 1411/1,-5517.29,-1293.67,40,0
    >>Kill |cRXP_ENEMY_Hexed Trolls|r and |cRXP_ENEMY_Voodoo Trolls|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #label LoaIdols
    #loop
    .goto 1411/1,-5393.90,-1215.30,0
    .goto 1411/1,-5393.90,-1215.30,30,0
    .goto 1411/1,-5373.30,-1153.00,30,0
    .goto 1411/1,-5427.40,-1114.90,30,0
    .goto 1411/1,-5501.50,-1123.60,30,0
    .goto 1411/1,-5587.60,-1212.00,30,0
    .goto 1411/1,-5479.00,-1212.00,30,0
    >>Loot the |cRXP_PICK_Loa Idols|r on the ground, mostly by the stone walls
    .complete 97225,1 --Forgotten Loa Idols (8)
step
    #label TaillasherEggs
    #loop
    .goto 1411/1,-5413.65,-1288.73,0
    .goto 1411/1,-5413.65,-1288.73,50,0
    .goto 1411/1,-5383.51,-1184.04,50,0
    .goto 1411/1,-5382.45,-1039.87,50,0
    .goto 1411/1,-5149.80,-1013.08,50,0
    .goto 1411/1,-5128.65,-1135.39,50,0
    .goto 1411/1,-5179.41,-1321.51,50,0
    .goto 1411/1,-5213.25,-1412.46,50,0
    .goto 1411/1,-5084.24,-1382.14,50,0
    >>Loot the |cRXP_PICK_Taillasher Eggs|r on the ground. A |cRXP_ENEMY_Bloodtalon Taillasher|r usually guards them
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
    .isOnQuest 815
step
    #softcore
    #completewith EchoTurnins
    .goto 1411/1,-5002.81,-774.08,50,0
    .deathskip >>Die and respawn in Sen'jin
    .macro Release,134400 >>/run local m=C_Map.GetBestMapForUnit("player") local p=m and C_DeathInfo.GetDeathReleasePosition(m) print(p and format("Release: %.1f, %.1f",p.x*100,p.y*100) or "No release point")
step
    #label EchoTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gadrin|r and |cRXP_FRIENDLY_Vornal|r
    .turnin 808 >>Turn in Minshina's Skull
    .turnin 826 >>Turn in Zalazane
    .target +Master Gadrin
    .goto 1411/1,-4920.33,-825.55
    .turnin 97225 >>Turn in Forgotten Loa Idols
    .target +Master Vornal
    .goto 1411/1,-4920.33,-814.27
step
    .goto 1411/1,-4885.20,-852.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xar'Ti|r
    .turnin 97223 >>Turn in Bloodtalon Matriarch
    .target Xar'Ti

-- Back north to Razor Hill
step
    .goto 1411/1,-4665.40,311.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Torka|r
    .turnin 815 >>Turn in Break a Few Eggs
    .target Cook Torka
    .isQuestComplete 815
step
    .goto 1411/1,-4709.36,274.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r
    .turnin 825 >>Turn in From The Wreckage....
    .target Gar'thok
    .isQuestComplete 825
step
    .goto 1411/1,-4724.69,287.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgnil Soulscar|r
    .accept 99048 >>Accept A Missing Hand
    .target Orgnil Soulscar
    .xp <9,1

-- Campfire buff, then the Razormane camps
step
    .goto 1411/1,-4715.20,140.10
    >>Type /sit at |cRXP_FRIENDLY_Brakk|r's campfire and wait for the Boosted Rest buff
    .macro Sit,134400 >>/sit
    .timer 59,Campfire
    +Get the Boosted Rest buff
step
    #completewith QuilboarSouth
    >>Loot |cRXP_PICK_Prickly Pear Fruit|r on the ground around the southern quilboar camp
    .complete 96825,1 --Prickly Pear Fruit (8)
step
    #label QuilboarSouth
    #loop
    .goto 1411/1,-4565.01,82.49,0
    .goto 1411/1,-4617.35,18.34,30,0
    .goto 1411/1,-4578.75,76.15,30,0
    .goto 1411/1,-4543.33,81.08,30,0
    .goto 1411/1,-4478.29,59.23,30,0
    .goto 1411/1,-4442.34,112.46,30,0
    >>Kill |cRXP_ENEMY_Razormane Quilboars|r and |cRXP_ENEMY_Scouts|r. Finish the |cRXP_PICK_Prickly Pears|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
    .complete 96825,1 --Prickly Pear Fruit (8)
step
    #loop
    .goto 1411/1,-4312.79,407.50,0
    .goto 1411/1,-4312.79,407.50,50,0
    .goto 1411/1,-4314.91,487.52,50,0
    .goto 1411/1,-4251.99,492.80,50,0
    .goto 1411/1,-4167.39,500.91,50,0
    .goto 1411/1,-4180.08,382.12,50,0
    >>Kill |cRXP_ENEMY_Razormane Dustrunners|r and |cRXP_ENEMY_Battleguards|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard

-- Razor Hill turn-ins
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r and |cRXP_FRIENDLY_Cook Torka|r
    .turnin 837 >>Turn in Encroachment
    .target +Gar'thok
    .goto 1411/1,-4709.36,274.96
    .turnin 96825 >>Turn in This Fruit Could Bite Back
    .target +Cook Torka
    .goto 1411/1,-4665.47,311.62


-- Threat from Below
step
    .goto 1411/1,-4724.69,287.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgnil Soulscar|r
    .accept 99048 >>Accept A Missing Hand
    .target Orgnil Soulscar
step
    .goto 1411/1,-5061.70,201.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Heglan Shadeeye|r north of Tiragarde Keep
    .turnin 99048 >>Turn in A Missing Hand
    .accept 99049 >>Accept Threat from Below
    .target Heglan Shadeeye
step
    .goto 1411/1,-5073.90,244.70
    >>Loot the |cRXP_PICK_Abandoned Dagger|r on the ground
    .complete 99049,1 --Orcish Dagger (1)
step
    .goto 1411/1,-5140.80,229.10
    >>Loot the |cRXP_PICK_Weapon Piece|r on the ground
    .complete 99049,3 --Broken Bone Trident (1)
step
    .goto 1411/1,-5138.00,314.10
    >>Loot the |cRXP_PICK_Strange Debris|r on the ground
    .complete 99049,2 --Banner Scrap (1)
step
    .goto 1411/1,-4724.69,287.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgnil Soulscar|r
    .turnin 99049 >>Turn in Threat from Below
    .accept 99051 >>Accept Threat from Below
    .target Orgnil Soulscar

-- North Durotar: Drygulch
step
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r at Drygulch
    .accept 834 >>Accept Winds in the Desert
    .target Rezlak
step
    #loop
    .goto 1411/1,-4590.39,1036.36,0
    .goto 1411/1,-4590.39,950.70,40,0
    .goto 1411/1,-4651.19,893.24,40,0
    .goto 1411/1,-4642.20,696.20,40,0
    .goto 1411/1,-4505.79,597.14,40,0
    .goto 1411/1,-4457.67,720.17,40,0
    >>Loot the |cRXP_PICK_Stolen Supply Sacks|r
    .complete 834,1 --Sack of Supplies (5)
step
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Turn in Winds in the Desert
    .target Rezlak

-- XP check: the Orgrimmar turn-ins should ding 10. Extra quests only if you are short
step
    #completewith Ding10
    .goto 1411/1,-4414.31,999.70
    >>|cRXP_WARN_Short on XP? Accept Securing the Lines from|r |cRXP_FRIENDLY_Rezlak|r. |cRXP_WARN_Skip it otherwise|r
    .accept 835 >>Accept Securing the Lines
    .target Rezlak
step
    #completewith Ding10
    .goto 1411/1,-4816.69,972.91,0
    .goto 1411/1,-4818.81,848.48,40,0
    .goto 1411/1,-4755.36,952.82,40,0
    .goto 1411/1,-4704.07,964.10,40,0
    .goto 1411/1,-4818.28,975.38,40,0
    .goto 1411/1,-4718.87,1076.19,40,0
    .goto 1411/1,-4672.87,1131.89,40,0
    >>Kill |cRXP_ENEMY_Dustwind Savages|r and |cRXP_ENEMY_Storm Witches|r in Drygulch Ravine
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
    .isOnQuest 835
step
    #completewith Ding10
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Turn in Securing the Lines
    .target Rezlak
    .isQuestComplete 835
step
    #label Ding10
    #loop
    .goto 1411/1,-4816.69,972.91,0
    .goto 1411/1,-4818.81,848.48,40,0
    .goto 1411/1,-4755.36,952.82,40,0
    .goto 1411/1,-4704.07,964.10,40,0
    .goto 1411/1,-4818.28,975.38,40,0
    .goto 1411/1,-4718.87,1076.19,40,0
    .goto 1411/1,-4672.87,1131.89,40,0
    >>Grind |cRXP_ENEMY_Dustwind Savages|r and |cRXP_ENEMY_Storm Witches|r in Drygulch Ravine until you have 5875/6500 xp at level 9
    >>|cRXP_WARN_Turning in The Admiral's Orders (625 xp) in Orgrimmar then dings you to 10|r
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .xp 9+5875 >>Grind to 5875+/6500xp
step
    #loop
    .goto 1411/1,-4816.69,972.91,0
    .goto 1411/1,-4818.81,848.48,40,0
    .goto 1411/1,-4755.36,952.82,40,0
    .goto 1411/1,-4704.07,964.10,40,0
    .goto 1411/1,-4718.87,1076.19,40,0
    >>You do not have The Admiral's Orders. Grind to level 10 before Orgrimmar
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .xp 10 >>Grind to level 10
    .isNotOnQuest 831

-- Dark Storms: optional, group only. Turned in to Orgnil later
step
    #completewith Fizzle
    .goto 1411/1,-4327.07,932.02,40,0
    .goto 1411/1,-4198.05,911.22,30,0
    .goto 1411/1,-4165.27,903.11,20 >>Jump down into Thunder Ridge
    .isOnQuest 806
step
    #label Fizzle
    .goto 1411/1,-4190.12,868.22
    >>Kill |cRXP_ENEMY_Fizzle Darkstorm|r (level 12) and loot his |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Optional, likely need a group, hits hard and has a minion|r
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .isOnQuest 806

-- Orgrimmar
step
    #completewith next
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >>Enter Orgrimmar
step
    .goto 1454/1,-4460.00,1598.60
    .goto 1454/1,-4460.60,1584.30,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thatog|r upstairs
    .accept 97246 >>Accept Meal Appeal
    .target Thatog
step
    .goto 1454/1,-4313.46,1676.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .fp Orgrimmar >>Get the Orgrimmar flight path
    .target Doras
step
    #label AH
    .goto 1454/1,-4464.60,1687.30
    >>|cRXP_BUY_Purchase|r |T135139:0|t[Lesser Magic Wand] in Orgrimmar
    .target Auctioneer Thathung
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step
    .goto 1454/1,-4482.60,1775.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borstan|r
    .turnin 97246 >>Turn in Meal Appeal
    .accept 97249 >>Accept Favorite Food
    .target Borstan
    .isOnQuest 97246
step
    #label CampHerb
    .goto 1454/1,-4460.70,1904.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandi|r in the Drag
    >>|cRXP_WARN_If she will not take it yet, keep picking herbs and turn it in on your next Orgrimmar visit|r
    .turnin 97905 >>Turn in Camping 101: Herbalism
    .target Jandi
    .isOnQuest 97905
step
    .goto 1454/1,-4466.80,1954.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'geld|r outside Yelmak's Alchemy and Potions
    .accept 97242 >>Accept Yelmak's Medley
    .target Kor'geld
step
    .goto 1454/1,-4560.00,1908.50,15,0
    .goto 1454/1,-4587.00,1918.30,15,0
    .goto 1454/1,-4608.00,1897.40,15,0
    .goto 1454/1,-4632.30,1911.60,15 >>Go to the water in the Valley of Honor
    .isOnQuest 97242
step
    #loop
    .goto 1454/1,-4653.90,1950.30,0
    .goto 1454/1,-4653.90,1950.30,20,0
    .goto 1454/1,-4677.70,1971.60,20,0
    .goto 1454/1,-4667.40,1997.00,20,0
    .goto 1454/1,-4609.80,2013.50,20,0
    .goto 1454/1,-4630.60,1968.10,20,0
    >>Loot |cRXP_PICK_Handfuls of Cattails|r and |cRXP_PICK_Speargrass Cuttings|r in the water
    >>|cRXP_WARN_These are quest items, not herbs. Do not spend time on anything else here|r
    .complete 97242,1 --Handful of Cattails (2)
    .complete 97242,2 --Speargrass Cuttings (4)
    .isOnQuest 97242
step
    .goto 1454/1,-4466.90,1954.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'geld|r
    .turnin 97242 >>Turn in Yelmak's Medley
    .target Kor'geld
    .isQuestComplete 97242
step
    #label Tailoring
    .goto 1454/1,-4573.31,1806.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magar|r in the Drag
    .train 3908 >>Train |T136249:0|t[Tailoring]
    .target Magar
step
    >>Craft 20 |T132890:0|t[Bolt of Linen Cloth] (2 cloth each). Keep all of them
    .collect 2996,20 --Bolt of Linen Cloth (20)
step
    .goto 1454/1,-4573.31,1806.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magar|r
    .train 3755 >>Train |T133652:0|t[Linen Bag]
    .target Magar
step
    .goto 1454/1,-4564.20,1795.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borya|r next to Magar
    >>|cRXP_BUY_Buy 15|r |T132891:0|t[Coarse Thread] |cRXP_BUY_and 1|r |T132275:0|t[Bleach]
    .collect 2320,15 --Coarse Thread (15)
    .collect 2324,1 --Bleach (1)
    .target Borya
step
    >>Craft 4 |T133652:0|t[Linen Bags] (3 bolts, 3 thread each). That gets Tailoring to 25
    .collect 4238,4 --Linen Bag (4)
step
    .goto 1454/1,-4573.31,1806.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magar|r
    .train 7624 >>Train |T132665:0|t[White Linen Robe]
    .train 3840 >>Train |T132939:0|t[Heavy Linen Gloves]
    .train 3914 >>Train |T134586:0|t[Brown Linen Pants]
    .target Magar
step
    >>Craft a |T132665:0|t[White Linen Robe] (3 bolts, 1 thread, 1 bleach), |T132939:0|t[Heavy Linen Gloves] (2 bolts, 1 thread) and |T134586:0|t[Brown Linen Pants] (2 bolts, 1 thread)
    .collect 6241,1 --White Linen Robe (1)
    .collect 4307,1 --Heavy Linen Gloves (1)
    .collect 4343,1 --Brown Linen Pants (1)
step
    .goto 1454/1,-4477.90,1964.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yelmak|r
    >>|cRXP_WARN_Yelmak walks over to Kor'geld and back after the Medley turn-in. The Tailoring crafts above gave him time to return. If he is still walking, wait for him to come back before you can accept the quest|r
    .accept 97275 >>Accept Whuut's the Rush
    .target Yelmak
    .isQuestTurnedIn 97242
step
    .goto 1454/1,-4463.00,1966.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whuut|r
    .turnin 97275 >>Turn in Whuut's the Rush
    .target Whuut
    .isOnQuest 97275
step
    #optional
    .goto 1454/1,-4205.80,2007.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thra|r behind Grommash Hold
    .accept 97326 >>Accept Rocks to Rests
    .target Thra
step
    #optional
    .isOnQuest 97326
    .goto 1454/1,-4293.60,1949.90
    >>Loot the orange |cRXP_PICK_Rocks|r on the ground
    >>|cRXP_WARN_On launch day these will be camped. Grab any that are up, then abandon the quest if the area is empty of rocks and full of players. Do not wait on a spawn|r
    .complete 97326,1 --Smooth Boulder (8)
step
    #optional
    .isQuestComplete 97326
    .goto 1454/1,-4205.90,2007.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thra|r
    .turnin 97326 >>Turn in Rocks to Rests
    .target Thra
step
    .goto 1454/1,-4193.40,2001.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Migi|r near Thra
    .turnin 97249 >>Turn in Favorite Food
    .target Migi
    .isOnQuest 97249
step
    .goto 1454/1,-4133.36,1939.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r in Grommash Hold
    .turnin 831 >>Turn in The Admiral's Orders
    .target Nazgrel
    .isOnQuest 831
step
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r next to Nazgrel
    .accept 5726 >>Accept Hidden Enemies
    .target Thrall
step
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pephredo|r in the Valley of Spirits
    .train 122 >>Train |T135848:0|t[Frost Nova]
    .train 5505 >>Train |T132793:0|t[Conjure Water Rank 2]
    .target Pephredo
    .xp <10,1
-- Hidden Enemies and Spinefins, then hearth
step
    #completewith SkullRock
    .goto 1411/1,-4876.97,1452.31,60 >>Leave Orgrimmar and go to Skull Rock, just east of the gate
step
    #label SkullRock
    #loop
    .goto 1411/1,-4805.59,1495.67,0
    .goto 1411/1,-4855.82,1498.84,15,0
    .goto 1411/1,-4833.08,1494.96,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    .goto 1411/1,-4784.44,1535.85,15,0
    .goto 1411/1,-4750.60,1531.62,15,0
    .goto 1411/1,-4734.21,1505.54,15,0
    .goto 1411/1,-4693.49,1519.64,15,0
    .goto 1411/1,-4679.75,1501.31,15,0
    .goto 1411/1,-4684.50,1466.06,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    >>Kill |cRXP_ENEMY_Burning Blade Fanatics|r and |cRXP_ENEMY_Apprentices|r in Skull Rock. Loot a |cRXP_LOOT_Lieutenant's Insignia|r
    >>|cRXP_WARN_Keep it. Turn Hidden Enemies in to Thrall when the Barrens send you back to Orgrimmar|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step
    #loop
    .goto 1411/1,-5050.50,999.80,0
    .goto 1411/1,-5050.50,999.80,40,0
    .goto 1411/1,-5103.40,999.80,40,0
    .goto 1411/1,-5092.80,922.10,40,0
    .goto 1411/1,-5061.00,840.90,40,0
    .goto 1411/1,-5039.90,766.80,40,0
    .goto 1411/1,-5008.00,851.50,40,0
    >>Go south down the coast. Kill |cRXP_ENEMY_Spitelash Scouts|r and |cRXP_ENEMY_Attendants|r. Loot |cRXP_LOOT_Naga Spinefins|r
    .complete 99051,1 --Naga Spinefin (9)
    .mob +Spitelash Scout
    .mob +Spitelash Attendant
    .isOnQuest 99051
step
    #loop
    .goto 1411/1,-5050.50,999.80,0
    .goto 1411/1,-5050.50,999.80,40,0
    .goto 1411/1,-5103.40,999.80,40,0
    .goto 1411/1,-5061.00,840.90,40,0
    .goto 1411/1,-5008.00,851.50,40,0
    >>Keep killing nagas until you have 6725/7600 xp at level 10
    >>|cRXP_WARN_The Threat from Below turn-in in Razor Hill then puts you near 11 for the Barrens|r
    .mob Spitelash Scout
    .mob Spitelash Attendant
    .xp 10+6725 >>Grind to 6725+/7600xp
step
    #completewith ThreatTurnin2
    .hs >>Hearth to Razor Hill
    .use 6948

-- Razor Hill, then Far Watch
step
    #label ThreatTurnin2
    .goto 1411/1,-4724.69,287.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgnil Soulscar|r
    >>|cRXP_WARN_The next Threat from Below (Aggor, elite) is optional. Take it only with a group|r
    .turnin 99051 >>Turn in Threat from Below
    .target Orgnil Soulscar
    .isQuestComplete 99051
step
    .goto 1411/1,-4724.69,287.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgnil Soulscar|r if you killed Fizzle
    .turnin 806 >>Turn in Dark Storms
    .target Orgnil Soulscar
    .isQuestComplete 806
step
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takrin Pathseeker|r
    .accept 840 >>Accept Conscript of the Horde
    .target Takrin Pathseeker
    .xp <10,1
step
    .goto 1413/1,-3686.10,303.14,40 >>Travel to Far Watch Post in the Barrens
    .zoneskip The Barrens
step
    #label ConscriptTurnin
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal Battlescar|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar

]])
