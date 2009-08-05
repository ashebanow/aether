--
-- Dumping data for table 'char_classes'
--
INSERT INTO 'char_classes' VALUES  (1,'Akashic','1d6');
INSERT INTO 'char_classes' VALUES (2,'Champion','1d10');
INSERT INTO 'char_classes' VALUES (3,'Greenbond','1d6');
INSERT INTO 'char_classes' VALUES (4,'Mage Blade','1d8');
INSERT INTO 'char_classes' VALUES (5,'Magister','1d6');
INSERT INTO 'char_classes' VALUES (6,'Oathsworn','1d10');
INSERT INTO 'char_classes' VALUES (7,'Ritual Warrior','1d10');
INSERT INTO 'char_classes' VALUES (8,'Runethane','1d6'),
INSERT INTO 'char_classes' VALUES (9,'Totem Warrior','1d8'),
INSERT INTO 'char_classes' VALUES (10,'Unfettered','1d8'),
INSERT INTO 'char_classes' VALUES (12,'Witch','1d6'),
INSERT INTO 'char_classes' VALUES (13,'Warmain','1d12');

--
-- Dumping data for table 'character_char_classes'
--
INSERT INTO 'character_char_classes' VALUES  (1,1,13,7),
 (2,1,7,1);

--
-- Dumping data for table 'character_props'
--
INSERT INTO 'character_props' VALUES  (1,1,4,8,NULL,0.0),
 (2,1,1,18,NULL,0.0),
 (3,1,2,12,NULL,0.0),
 (4,1,3,14,NULL,0.0),
 (5,1,4,8,NULL,0.0),
 (6,1,5,12,NULL,0.0),
 (7,1,6,8,NULL,0.0);

--
-- Dumping data for table 'characters'
--
INSERT INTO 'characters' VALUES  (1,1,'Joe Swordfighter',1,NULL,NULL,'2006-05-06 10:59:38','2006-06-03 19:54:24','Brown','Blue','Pale','Male',32,68,220,'Eardon');

--
-- Dumping data for table 'feats'
--
INSERT INTO 'feats' VALUES  (1,'Ability Focus','Feat',NULL,NULL),
 (2,'Aid Spellcasting','Feat',NULL,NULL),
 (3,'Armor Proficiency, Exotic','Feat',NULL,NULL),
 (4,'Armor Proficiency, Heavy','Feat',NULL,NULL),
 (5,'Armor Proficiency, Light','Feat',NULL,NULL),
 (6,'Armor Proficiency, Medium','Feat',NULL,NULL),
 (7,'Bite','Feat',NULL,NULL),
 (8,'Bloody Strike','Feat',NULL,NULL),
 (9,'Cleave','Feat',NULL,NULL),
 (10,'Combat Reflexes','Feat',NULL,NULL),
 (11,'Compensate for Size','Feat',NULL,NULL),
 (12,'Complex Spell','Feat',NULL,NULL),
 (13,'Conjure Mastery','Feat',NULL,NULL),
 (14,'Defensive Move','Feat',NULL,NULL),
 (15,'Defensive Stance','Feat',NULL,NULL),
 (16,'Empower Spell-like Ability','Feat',NULL,NULL),
 (17,'Exotic Spell','Feat',NULL,NULL),
 (18,'Expertise','Feat',NULL,NULL),
 (19,'Far Shot','Feat',NULL,NULL),
 (20,'First Strike','Feat',NULL,NULL),
 (21,'Flail Defense','Feat',NULL,NULL),
 (22,'Flyby Attack','Feat',NULL,NULL),
 (23,'Great Fortitude','Feat',NULL,NULL),
 (24,'Improved Bull Rush','Feat',NULL,NULL),
 (25,'Improved Critical','Feat',NULL,NULL);
INSERT INTO 'feats' VALUES  (26,'Improved Disarm','Feat',NULL,NULL),
 (27,'Improved Initiative','Feat',NULL,NULL),
 (28,'Improved Sunder','Feat',NULL,NULL),
 (29,'Improved Trip','Feat',NULL,NULL),
 (30,'Iron Will','Feat',NULL,NULL),
 (31,'Lightning Reflexes','Feat',NULL,NULL),
 (32,'Low Blow','Feat',NULL,NULL),
 (33,'Mobility','Feat',NULL,NULL),
 (34,'Modify Combat Style','Feat',NULL,NULL),
 (35,'Modify Spell','Feat',NULL,NULL),
 (36,'Mounted Archery','Feat',NULL,NULL),
 (37,'Mounted Combat','Feat',NULL,NULL),
 (38,'Paralyzing Blow','Feat',NULL,NULL),
 (39,'Point Blank Shot','Feat',NULL,NULL),
 (40,'Power Attack','Feat',NULL,NULL),
 (41,'Power Charge','Feat',NULL,NULL),
 (42,'Precise Shot','Feat',NULL,NULL),
 (43,'Quick Draw','Feat',NULL,NULL),
 (44,'Quicken Spell-like Ability','Feat',NULL,NULL),
 (45,'Rapid Strike','Feat',NULL,NULL),
 (46,'Ride-by Attack','Feat',NULL,NULL),
 (47,'Shield Proficiency','Feat',NULL,NULL),
 (48,'Shield Specialization','Feat',NULL,NULL),
 (49,'Shot on the Run','Feat',NULL,NULL),
 (50,'Skill Focus','Feat',NULL,NULL);
INSERT INTO 'feats' VALUES  (51,'Speed Burst','Feat',NULL,NULL),
 (52,'Stomp','Feat',NULL,NULL),
 (53,'Stunning Blow','Feat',NULL,NULL),
 (54,'Sturdy','Feat',NULL,NULL),
 (55,'Tough Hide','Feat',NULL,NULL),
 (56,'Track','Feat',NULL,NULL),
 (57,'Trample','Feat',NULL,NULL),
 (58,'Two-Weapon Defense','Feat',NULL,NULL),
 (59,'Two-Weapon Fighting','Feat',NULL,NULL),
 (60,'Two-Weapon Fighting, Massive','Feat',NULL,NULL),
 (61,'Unarmed Strike, Defensive','Feat',NULL,NULL),
 (62,'Unarmed Strike, Mighty','Feat',NULL,NULL),
 (63,'Weapon Finesse','Feat',NULL,NULL),
 (64,'Weapon Focus','Feat',NULL,NULL),
 (65,'Weapon Proficiency, Exotic','Feat',NULL,NULL),
 (66,'Weapon Proficiency, Simple','Feat',NULL,NULL),
 (67,'Attune to Magic Item','CeremonialFeat',NULL,NULL),
 (68,'Battle Mage','CeremonialFeat',NULL,NULL),
 (69,'Blessed Mage','CeremonialFeat',NULL,NULL),
 (70,'Blood as Power','CeremonialFeat',NULL,NULL),
 (71,'Bonded Item','CeremonialFeat',NULL,NULL),
 (72,'Brandish Magical Might','CeremonialFeat',NULL,NULL),
 (73,'Chi-Julud','CeremonialFeat',NULL,NULL);
INSERT INTO 'feats' VALUES  (74,'Corrupt Mage','CeremonialFeat',NULL,NULL),
 (75,'Creator Mage','CeremonialFeat',NULL,NULL),
 (76,'Crippling Strike','CeremonialFeat',NULL,NULL),
 (77,'Defensive Roll','CeremonialFeat',NULL,NULL),
 (78,'Dragon Mage','CeremonialFeat',NULL,NULL),
 (79,'Eldritch Training','CeremonialFeat',NULL,NULL),
 (80,'Elemental Mage','CeremonialFeat',NULL,NULL),
 (81,'Energy Mage','CeremonialFeat',NULL,NULL),
 (82,'Fey Mage','CeremonialFeat',NULL,NULL),
 (83,'Fleet of Foot','CeremonialFeat',NULL,NULL),
 (84,'Focused Healing','CeremonialFeat',NULL,NULL),
 (85,'Giantish Mage','CeremonialFeat',NULL,NULL),
 (86,'Hands as Weapons','CeremonialFeat',NULL,NULL),
 (87,'Hunter Mage','CeremonialFeat',NULL,NULL),
 (88,'Infuse Weapon','CeremonialFeat',NULL,NULL),
 (89,'Intuitive Sense','CeremonialFeat',NULL,NULL),
 (90,'Iron Flesh','CeremonialFeat',NULL,NULL),
 (91,'Litorian Mage','CeremonialFeat',NULL,NULL),
 (92,'Mighty Hurl','CeremonialFeat',NULL,NULL),
 (93,'Mirror Sight','CeremonialFeat',NULL,NULL),
 (94,'Opportunist','CeremonialFeat',NULL,NULL);
INSERT INTO 'feats' VALUES  (95,'Peaceful Mage','CeremonialFeat',NULL,NULL),
 (96,'Power of the Name','CeremonialFeat',NULL,NULL),
 (97,'Priest','CeremonialFeat',NULL,NULL),
 (98,'Psion','CeremonialFeat',NULL,NULL),
 (99,'Quicken Spell','CeremonialFeat',NULL,NULL),
 (100,'Rapid Reload','CeremonialFeat',NULL,NULL),
 (101,'Resistant Spell','CeremonialFeat',NULL,NULL),
 (102,'Ritual Combat','CeremonialFeat',NULL,NULL),
 (103,'Runecaster','CeremonialFeat',NULL,NULL),
 (104,'Sanctum','CeremonialFeat',NULL,NULL),
 (105,'Sense the Unseen','CeremonialFeat',NULL,NULL),
 (106,'Sibeccai Mage','CeremonialFeat',NULL,NULL),
 (107,'Skill Application','CeremonialFeat',NULL,NULL),
 (108,'Skill Mastery','CeremonialFeat',NULL,NULL),
 (109,'Slippery Mind','CeremonialFeat',NULL,NULL),
 (110,'Tatooed Spell','CeremonialFeat',NULL,NULL),
 (111,'Title','CeremonialFeat',NULL,NULL),
 (112,'Unraveling Mage','CeremonialFeat',NULL,NULL),
 (113,'Weapon Specialization','CeremonialFeat',NULL,NULL),
 (114,'Whirlwind Attack','CeremonialFeat',NULL,NULL),
 (115,'Wild Mage','CeremonialFeat',NULL,NULL);
INSERT INTO 'feats' VALUES  (116,'Craft Charged Item','ItemCreationFeat',NULL,NULL),
 (117,'Craft Constant Item','ItemCreationFeat',NULL,NULL),
 (118,'Craft Magic Arms and Armor','ItemCreationFeat',NULL,NULL),
 (119,'Craft Single-Use Item','ItemCreationFeat',NULL,NULL),
 (120,'Craft Spell-Completion Item','ItemCreationFeat',NULL,NULL),
 (121,'Affinity with Skill','TalentFeat',NULL,NULL),
 (122,'Ambidexterity','TalentFeat',NULL,NULL),
 (123,'Born Hero','TalentFeat',NULL,NULL),
 (124,'Born Leader','TalentFeat',NULL,NULL),
 (125,'Defensive','TalentFeat',NULL,NULL),
 (126,'Eidetic Memory','TalentFeat',NULL,NULL),
 (127,'Elemental Resistance','TalentFeat',NULL,NULL),
 (128,'Energy Resistance','TalentFeat',NULL,NULL),
 (129,'Fast Healer','TalentFeat',NULL,NULL),
 (130,'Light Sleeper','TalentFeat',NULL,NULL),
 (131,'Natural Archer','TalentFeat',NULL,NULL),
 (132,'Natural Swordsman','TalentFeat',NULL,NULL),
 (133,'Night Owl','TalentFeat',NULL,NULL),
 (134,'Resistance to Disease','TalentFeat',NULL,NULL),
 (135,'Resistance to Magic','TalentFeat',NULL,NULL);
INSERT INTO 'feats' VALUES  (136,'Resistance to Poison','TalentFeat',NULL,NULL),
 (137,'Sensitive','TalentFeat',NULL,NULL),
 (138,'Signature Spell','TalentFeat',NULL,NULL),
 (139,'Spell Affinity','TalentFeat',NULL,NULL),
 (140,'Spell Artist','TalentFeat',NULL,NULL),
 (141,'Unique Spell','TalentFeat',NULL,NULL),
 (142,'The Voice','TalentFeat',NULL,NULL),
 (143,'Way with Animals','TalentFeat',NULL,NULL),
 (144,'Wealthy','TalentFeat',NULL,NULL);

--
-- Dumping data for table 'props'
--
INSERT INTO 'props' VALUES  (1,'Strength','STR','I'),
 (2,'Dexterity','DEX','I'),
 (3,'Constitution','CON','I'),
 (4,'Intelligence','INT','I'),
 (5,'Wisdom','WIS','I'),
 (6,'Charisma','CHA','I'),
 (8,'Base Attack Bonus','BAB','I'),
 (9,'Character Level','Lvl','I'),
 (10,'Hero Points','Hero Pts','I'),
 (11,'Reflex Save Base','Ref Save Base','I'),
 (12,'Reflex Save Misc','Ref Save Misc','I'),
 (13,'Fortitude Save Base','Fort Save Base','I'),
 (14,'Fortitude Save Misc','Fort Save Misc','I'),
 (15,'Will Save Base','Will Save Base','I'),
 (16,'Will Save Misc','Will Save Misc','I'),
 (17,'Hit Points','HP','I'),
 (18,'Height','Ht','I'),
 (19,'Weight','Wt','I'),
 (20,'Size','Size','I'),
 (21,'Speed','Speed','I'),
 (22,'Fly Speed','Fly','I'),
 (23,'Weapon Attack','Weap Attack','I'),
 (24,'Weapon Damage','Weap Dmg','I'),
 (25,'Weapon Range Increment','Weap Rng Incr','I'),
 (26,'Flying Maneuverability','Flight Manuev','I'),
 (27,'Swim Speed','Swim Spd','I'),
 (28,'Climb Speed','Climb Spd','I'),
 (29,'Caster Level','Cast Lvl','I'),
 (30,'Caster Key Ability','Cast Key Abil','I');
INSERT INTO 'props' VALUES  (31,'Max Spell Level -- Complex','Max Spell Lvl','I'),
 (32,'Wound Points','Wounds','I'),
 (33,'Subdual Damage','Subdual','I'),
 (34,'Spell Resistance','SR','I');

--
-- Dumping data for table 'races'
--
INSERT INTO 'races' VALUES  (2,'Dracha'),
 (3,'Faen'),
 (4,'Giant'),
 (1,'Human'),
 (5,'Litorian'),
 (6,'Mojh'),
 (7,'Runechild'),
 (8,'Sibeccai'),
 (9,'Verrik');

--
-- Dumping data for table 'skills'
--
INSERT INTO 'skills' VALUES  (1,'Alchemy',4,1,NULL),
 (2,'Appraise',4,0,NULL),
 (3,'Balance',2,0,'misc_bonus += 2 if (character.skills[\"Tumble\"].ranks >= 5);'),
 (4,'Bluff',6,0,NULL),
 (5,'Climb',1,0,NULL),
 (6,'Concentration',3,0,NULL),
 (7,'Craft',4,0,NULL),
 (8,'Decipher Script',4,1,NULL),
 (9,'Diplomacy',6,0,'misc_bonus += 2 if (character.skills[\"Bluff\"].ranks >= 5); misc_bonus += 2 if (character.skills[\"Sense Motive\"].ranks >= 5);'),
 (10,'Disable Device',4,1,NULL),
 (11,'Disguise',6,0,'misc_bonus += 2 if (character.skills[\"Bluff\"].ranks >= 5);'),
 (12,'Escape Artist',2,0,NULL),
 (13,'Forgery',4,0,NULL),
 (14,'Gather Information',6,0,NULL),
 (15,'Handle Animal',6,1,NULL),
 (16,'Heal',5,0,'misc_bonus += 2 if (character.skills[\"Knowledge (Nature)\"].ranks >= 5);'),
 (17,'Innuendo',5,1,NULL),
 (18,'Intimidate',6,0,'misc_bonus += 2 if (character.skills[\"Bluff\"].ranks >= 5);'),
 (19,'Jump',1,0,'misc_bonus += 2 if (character.skills[\"Tumble\"].ranks >= 5);'),
 (20,'Knowledge (Architecture)',4,1,NULL),
 (21,'Knowledge (Ceremony)',4,1,NULL);
INSERT INTO 'skills' VALUES  (22,'Knowledge (Cosmology)',4,1,NULL),
 (23,'Knowledge (Dangerous Beasts)',4,1,NULL),
 (24,'Knowledge (Dracha)',4,1,NULL),
 (25,'Knowledge (Dragons)',4,1,NULL),
 (26,'Knowledge (Engineering)',4,1,NULL),
 (27,'Knowledge (Faen)',4,1,NULL),
 (28,'Knowledge (Geography)',4,1,NULL),
 (29,'Knowledge (Giants)',4,1,NULL),
 (30,'Knowledge (History)',4,1,NULL),
 (31,'Knowledge (Humans)',4,1,NULL),
 (32,'Knowledge (Litorians)',4,1,NULL),
 (33,'Knowledge (Magic)',4,1,NULL),
 (34,'Knowledge (Mojh)',4,1,NULL),
 (35,'Knowledge (Nature)',4,1,NULL),
 (36,'Knowledge (Nobility/Courtesy)',4,1,NULL),
 (37,'Knowledge (Religion)',4,1,NULL),
 (38,'Knowledge (Runes)',4,1,NULL),
 (39,'Knowledge (Sailing/Navigation)',4,1,NULL),
 (40,'Knowledge (Science)',4,1,NULL),
 (41,'Knowledge (Sibeccai)',4,1,NULL),
 (42,'Knowledge (Verrik)',4,1,NULL),
 (43,'Listen',5,0,NULL),
 (44,'Open Lock',2,1,NULL),
 (45,'Perform',6,0,NULL),
 (46,'Ride',2,0,'misc_bonus += 2 if (character.skills[\"Handle Animal\"].ranks >= 5);'),
 (47,'Search',4,0,NULL);
INSERT INTO 'skills' VALUES  (48,'Sense Motive',5,0,NULL),
 (49,'Sleight of Hand',2,1,'misc_bonus += 2 if (character.skills[\"Bluff\"].ranks >= 5);'),
 (50,'Sneak',2,0,NULL),
 (51,'Speak Language',1,1,NULL),
 (52,'Spellcraft',4,1,NULL),
 (53,'Spot',5,0,NULL),
 (54,'Survival',5,0,NULL),
 (55,'Swim',1,0,NULL),
 (56,'Tumble',2,1,'misc_bonus += 2 if (character.skills[\"Jump\"].ranks >= 5);'),
 (57,'Use Magic Device',6,1,NULL),
 (58,'Use Rope',2,0,NULL);

--
-- Dumping data for table'users'
--
INSERT INTO 'users' VALUES  (1,'ashebanow','ashebanow@cattivi.com','28f4a10844e5ed31c71a1f57a28ad89fcd10eb1e','bc4a6c8d8eb26aca3cce44ff7d48f599da703e30','2006-06-03 12:01:47','2006-06-03 19:51:10','Andrew Shebanow');
