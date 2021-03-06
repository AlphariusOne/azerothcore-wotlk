-- DB update 2019_01_12_11 -> 2019_01_12_12
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2019_01_12_11';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2019_01_12_11 2019_01_12_12 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1546089286503990312'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO version_db_world (`sql_rev`) VALUES ('1546089286503990312');

-- ----------------------------
-- Update data waypoint_scripts
-- ----------------------------

UPDATE `waypoint_scripts` SET `dataint` = 5960 WHERE `dataint` = 2000005018;
UPDATE `waypoint_scripts` SET `dataint` = 22392 WHERE `dataint` = 2000005019;
UPDATE `waypoint_scripts` SET `dataint` = 22050 WHERE `dataint` = 2000005020;
UPDATE `waypoint_scripts` SET `dataint` = 22051 WHERE `dataint` = 2000005021;
UPDATE `waypoint_scripts` SET `dataint` = 22052 WHERE `dataint` = 2000005022;
UPDATE `waypoint_scripts` SET `dataint` = 10141 WHERE `dataint` = 2000005023;
UPDATE `waypoint_scripts` SET `dataint` = 10146 WHERE `dataint` = 2000005024;
UPDATE `waypoint_scripts` SET `dataint` = 10152 WHERE `dataint` = 2000005025;
UPDATE `waypoint_scripts` SET `dataint` = 10126 WHERE `dataint` = 2000005026;
UPDATE `waypoint_scripts` SET `dataint` = 7194 WHERE `dataint` = 2000005027;
UPDATE `waypoint_scripts` SET `dataint` = 7193 WHERE `dataint` = 2000005028;
UPDATE `waypoint_scripts` SET `dataint` = 7191 WHERE `dataint` = 2000005029;
UPDATE `waypoint_scripts` SET `dataint` = 10139 WHERE `dataint` = 2000005030; -- 4.x text
UPDATE `waypoint_scripts` SET `dataint` = 6406 WHERE `dataint` = 2000005031;
UPDATE `waypoint_scripts` SET `dataint` = 6405 WHERE `dataint` = 2000005032;
UPDATE `waypoint_scripts` SET `dataint` = 10158 WHERE `dataint` = 2000005033;
UPDATE `waypoint_scripts` SET `dataint` = 22544 WHERE `dataint` = 2000005034;
UPDATE `waypoint_scripts` SET `dataint` = 10146 WHERE `dataint` = 2000005035;
UPDATE `waypoint_scripts` SET `dataint` = 12835 WHERE `dataint` = 2000005036;
UPDATE `waypoint_scripts` SET `dataint` = 12832 WHERE `dataint` = 2000005037;
UPDATE `waypoint_scripts` SET `dataint` = 12833 WHERE `dataint` = 2000005038;
UPDATE `waypoint_scripts` SET `dataint` = 14565 WHERE `dataint` = 2000005039;
UPDATE `waypoint_scripts` SET `dataint` = 14567 WHERE `dataint` = 2000005040;
UPDATE `waypoint_scripts` SET `dataint` = 15144 WHERE `dataint` = 2000005041;
UPDATE `waypoint_scripts` SET `dataint` = 15373 WHERE `dataint` = 2000005042;
UPDATE `waypoint_scripts` SET `dataint` = 17569 WHERE `dataint` = 2000005043; -- doesn't exist anywhere, picked a random text from the same npc
UPDATE `waypoint_scripts` SET `dataint` = 17563 WHERE `dataint` = 2000005044; -- doesn't exist anywhere, picked a random text from the same npc
UPDATE `waypoint_scripts` SET `dataint` = 16059 WHERE `dataint` = 2000005045;
UPDATE `waypoint_scripts` SET `dataint` = 10119 WHERE `dataint` = 2000005048;
UPDATE `waypoint_scripts` SET `dataint` = 17035 WHERE `dataint` = 2000005049;
UPDATE `waypoint_scripts` SET `dataint` = 17045 WHERE `dataint` = 2000005050;
UPDATE `waypoint_scripts` SET `dataint` = 17056 WHERE `dataint` = 2000005051;
UPDATE `waypoint_scripts` SET `dataint` = 17486 WHERE `dataint` = 2000005052;
UPDATE `waypoint_scripts` SET `dataint` = 17485 WHERE `dataint` = 2000005053;
UPDATE `waypoint_scripts` SET `dataint` = 17485 WHERE `dataint` = 2000005054;
UPDATE `waypoint_scripts` SET `dataint` = 17485 WHERE `dataint` = 2000005055;
UPDATE `waypoint_scripts` SET `dataint` = 18816 WHERE `dataint` = 2000005056;
UPDATE `waypoint_scripts` SET `dataint` = 709 WHERE `dataint` = 2000005057;
UPDATE `waypoint_scripts` SET `dataint` = 710 WHERE `dataint` = 2000005058;
UPDATE `waypoint_scripts` SET `dataint` = 705 WHERE `dataint` = 2000005059;
UPDATE `waypoint_scripts` SET `dataint` = 693 WHERE `dataint` = 2000005060;
UPDATE `waypoint_scripts` SET `dataint` = 710 WHERE `dataint` = 2000005061;
UPDATE `waypoint_scripts` SET `dataint` = 706 WHERE `dataint` = 2000005062;
UPDATE `waypoint_scripts` SET `dataint` = 709 WHERE `dataint` = 2000005063;
UPDATE `waypoint_scripts` SET `dataint` = 710 WHERE `dataint` = 2000005064;
UPDATE `waypoint_scripts` SET `dataint` = 705 WHERE `dataint` = 2000005065;
UPDATE `waypoint_scripts` SET `dataint` = 693 WHERE `dataint` = 2000005066;
UPDATE `waypoint_scripts` SET `dataint` = 710 WHERE `dataint` = 2000005067;
UPDATE `waypoint_scripts` SET `dataint` = 706 WHERE `dataint` = 2000005068;
UPDATE `waypoint_scripts` SET `dataint` = 709 WHERE `dataint` = 2000005069;
UPDATE `waypoint_scripts` SET `dataint` = 710 WHERE `dataint` = 2000005070;
UPDATE `waypoint_scripts` SET `dataint` = 705 WHERE `dataint` = 2000005071;
UPDATE `waypoint_scripts` SET `dataint` = 693 WHERE `dataint` = 2000005072;
UPDATE `waypoint_scripts` SET `dataint` = 710 WHERE `dataint` = 2000005073;
UPDATE `waypoint_scripts` SET `dataint` = 706 WHERE `dataint` = 2000005074;
UPDATE `waypoint_scripts` SET `dataint` = 709 WHERE `dataint` = 2000005075;
UPDATE `waypoint_scripts` SET `dataint` = 710 WHERE `dataint` = 2000005076;
UPDATE `waypoint_scripts` SET `dataint` = 705 WHERE `dataint` = 2000005077;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005078;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005079;
UPDATE `waypoint_scripts` SET `dataint` = 696 WHERE `dataint` = 2000005080;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005081;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005082;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005083;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005084;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005085;
UPDATE `waypoint_scripts` SET `dataint` = 696 WHERE `dataint` = 2000005086;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005087;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005088;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005089;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005090;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005091;
UPDATE `waypoint_scripts` SET `dataint` = 696 WHERE `dataint` = 2000005092;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005093;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005094;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005095;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005096;
UPDATE `waypoint_scripts` SET `dataint` = 694 WHERE `dataint` = 2000005097;
UPDATE `waypoint_scripts` SET `dataint` = 696 WHERE `dataint` = 2000005098;
UPDATE `waypoint_scripts` SET `dataint` = 1101 WHERE `dataint` = 2000005099;
UPDATE `waypoint_scripts` SET `dataint` = 1103 WHERE `dataint` = 2000005100;
UPDATE `waypoint_scripts` SET `dataint` = 4013 WHERE `dataint` = 2000005101;
UPDATE `waypoint_scripts` SET `dataint` = 1104 WHERE `dataint` = 2000005102;
UPDATE `waypoint_scripts` SET `dataint` = 1110 WHERE `dataint` = 2000005103;
UPDATE `waypoint_scripts` SET `dataint` = 1105 WHERE `dataint` = 2000005104;
UPDATE `waypoint_scripts` SET `dataint` = 1108 WHERE `dataint` = 2000005105;
UPDATE `waypoint_scripts` SET `dataint` = 1106 WHERE `dataint` = 2000005106;
UPDATE `waypoint_scripts` SET `dataint` = 1107 WHERE `dataint` = 2000005107;
UPDATE `waypoint_scripts` SET `dataint` = 1112 WHERE `dataint` = 2000005108;
UPDATE `waypoint_scripts` SET `dataint` = 151 WHERE `dataint` = 2000005109;
UPDATE `waypoint_scripts` SET `dataint` = 151 WHERE `dataint` = 2000005110;
UPDATE `waypoint_scripts` SET `dataint` = 155 WHERE `dataint` = 2000005111;
UPDATE `waypoint_scripts` SET `dataint` = 154 WHERE `dataint` = 2000005112;
UPDATE `waypoint_scripts` SET `dataint` = 152 WHERE `dataint` = 2000005113;
UPDATE `waypoint_scripts` SET `dataint` = 177 WHERE `dataint` = 2000005114;
UPDATE `waypoint_scripts` SET `dataint` = 149 WHERE `dataint` = 2000005115;
UPDATE `waypoint_scripts` SET `dataint` = 173 WHERE `dataint` = 2000005116;
UPDATE `waypoint_scripts` SET `dataint` = 174 WHERE `dataint` = 2000005117;
UPDATE `waypoint_scripts` SET `dataint` = 172 WHERE `dataint` = 2000005118;
UPDATE `waypoint_scripts` SET `dataint` = 173 WHERE `dataint` = 2000005119;
UPDATE `waypoint_scripts` SET `dataint` = 172 WHERE `dataint` = 2000005120;
UPDATE `waypoint_scripts` SET `dataint` = 176 WHERE `dataint` = 2000005121;
UPDATE `waypoint_scripts` SET `dataint` = 178 WHERE `dataint` = 2000005122;
UPDATE `waypoint_scripts` SET `dataint` = 169 WHERE `dataint` = 2000005123;
UPDATE `waypoint_scripts` SET `dataint` = 147 WHERE `dataint` = 2000005124;
UPDATE `waypoint_scripts` SET `dataint` = 157 WHERE `dataint` = 2000005125;
UPDATE `waypoint_scripts` SET `dataint` = 168 WHERE `dataint` = 2000005126;
UPDATE `waypoint_scripts` SET `dataint` = 147 WHERE `dataint` = 2000005127;
UPDATE `waypoint_scripts` SET `dataint` = 157 WHERE `dataint` = 2000005128;
UPDATE `waypoint_scripts` SET `dataint` = 167 WHERE `dataint` = 2000005129;
UPDATE `waypoint_scripts` SET `dataint` = 157 WHERE `dataint` = 2000005130;
UPDATE `waypoint_scripts` SET `dataint` = 147 WHERE `dataint` = 2000005131;
UPDATE `waypoint_scripts` SET `dataint` = 2874 WHERE `dataint` = 2000005132;
UPDATE `waypoint_scripts` SET `dataint` = 10119 WHERE `dataint` = 2000005133;
UPDATE `waypoint_scripts` SET `dataint` = 1129 WHERE `dataint` = 2000005134;
UPDATE `waypoint_scripts` SET `dataint` = 1154 WHERE `dataint` = 2000005135;
UPDATE `waypoint_scripts` SET `dataint` = 1155 WHERE `dataint` = 2000005136;
UPDATE `waypoint_scripts` SET `dataint` = 1140 WHERE `dataint` = 2000005137;
UPDATE `waypoint_scripts` SET `dataint` = 1161 WHERE `dataint` = 2000005138;
UPDATE `waypoint_scripts` SET `dataint` = 1162 WHERE `dataint` = 2000005139;
UPDATE `waypoint_scripts` SET `dataint` = 1163 WHERE `dataint` = 2000005140;
UPDATE `waypoint_scripts` SET `dataint` = 1165 WHERE `dataint` = 2000005141;
UPDATE `waypoint_scripts` SET `dataint` = 1166 WHERE `dataint` = 2000005142;
UPDATE `waypoint_scripts` SET `dataint` = 13580 WHERE `dataint` = 2000005144;
UPDATE `waypoint_scripts` SET `dataint` = 13576 WHERE `dataint` = 2000005145;
UPDATE `waypoint_scripts` SET `dataint` = 15119 WHERE `dataint` = 2000005147;
UPDATE `waypoint_scripts` SET `dataint` = 209 WHERE `dataint` = 2000005148;
UPDATE `waypoint_scripts` SET `dataint` = 224 WHERE `dataint` = 2000005149;
UPDATE `waypoint_scripts` SET `dataint` = 225 WHERE `dataint` = 2000005150;
UPDATE `waypoint_scripts` SET `dataint` = 213 WHERE `dataint` = 2000005151;
UPDATE `waypoint_scripts` SET `dataint` = 225 WHERE `dataint` = 2000005152;
UPDATE `waypoint_scripts` SET `dataint` = 225 WHERE `dataint` = 2000005153;
UPDATE `waypoint_scripts` SET `dataint` = 224 WHERE `dataint` = 2000005154;
UPDATE `waypoint_scripts` SET `dataint` = 214 WHERE `dataint` = 2000005155;
UPDATE `waypoint_scripts` SET `dataint` = 217 WHERE `dataint` = 2000005156;
UPDATE `waypoint_scripts` SET `dataint` = 210 WHERE `dataint` = 2000005157;
UPDATE `waypoint_scripts` SET `dataint` = 205 WHERE `dataint` = 2000005158;
UPDATE `waypoint_scripts` SET `dataint` = 216 WHERE `dataint` = 2000005159;
UPDATE `waypoint_scripts` SET `dataint` = 212 WHERE `dataint` = 2000005160;
UPDATE `waypoint_scripts` SET `dataint` = 208 WHERE `dataint` = 2000005161;
UPDATE `waypoint_scripts` SET `dataint` = 214 WHERE `dataint` = 2000005162;
UPDATE `waypoint_scripts` SET `dataint` = 215 WHERE `dataint` = 2000005163;
UPDATE `waypoint_scripts` SET `dataint` = 206 WHERE `dataint` = 2000005164;
UPDATE `waypoint_scripts` SET `dataint` = 212 WHERE `dataint` = 2000005165;
UPDATE `waypoint_scripts` SET `dataint` = 214 WHERE `dataint` = 2000005166;
UPDATE `waypoint_scripts` SET `dataint` = 1153 WHERE `dataint` = 2000005167;
UPDATE `waypoint_scripts` SET `dataint` = 1130 WHERE `dataint` = 2000005168;
UPDATE `waypoint_scripts` SET `dataint` = 201 WHERE `dataint` = 2000005169;
UPDATE `waypoint_scripts` SET `dataint` = 218 WHERE `dataint` = 2000005170;
UPDATE `waypoint_scripts` SET `dataint` = 222 WHERE `dataint` = 2000005171;
UPDATE `waypoint_scripts` SET `dataint` = 221 WHERE `dataint` = 2000005172;
UPDATE `waypoint_scripts` SET `dataint` = 204 WHERE `dataint` = 2000005173;
UPDATE `waypoint_scripts` SET `dataint` = 222 WHERE `dataint` = 2000005174;
UPDATE `waypoint_scripts` SET `dataint` = 219 WHERE `dataint` = 2000005175;
UPDATE `waypoint_scripts` SET `dataint` = 218 WHERE `dataint` = 2000005176;
UPDATE `waypoint_scripts` SET `dataint` = 221 WHERE `dataint` = 2000005177;
UPDATE `waypoint_scripts` SET `dataint` = 219 WHERE `dataint` = 2000005178;
UPDATE `waypoint_scripts` SET `dataint` = 222 WHERE `dataint` = 2000005179;
UPDATE `waypoint_scripts` SET `dataint` = 587 WHERE `dataint` = 2000005180;
UPDATE `waypoint_scripts` SET `dataint` = 589 WHERE `dataint` = 2000005181;
UPDATE `waypoint_scripts` SET `dataint` = 590 WHERE `dataint` = 2000005182;
UPDATE `waypoint_scripts` SET `dataint` = 588 WHERE `dataint` = 2000005183;
UPDATE `waypoint_scripts` SET `dataint` = 1091 WHERE `dataint` = 2000005184;
UPDATE `waypoint_scripts` SET `dataint` = 24425 WHERE `dataint` = 2000005200;
UPDATE `waypoint_scripts` SET `dataint` = 24425 WHERE `dataint` = 2000005201;
UPDATE `waypoint_scripts` SET `dataint` = 22216 WHERE `dataint` = 2000005202;
UPDATE `waypoint_scripts` SET `dataint` = 22211 WHERE `dataint` = 2000005203;
UPDATE `waypoint_scripts` SET `dataint` = 22206 WHERE `dataint` = 2000005204;
UPDATE `waypoint_scripts` SET `dataint` = 25086 WHERE `dataint` = 2000005205;
UPDATE `waypoint_scripts` SET `dataint` = 25073 WHERE `dataint` = 2000005206;
UPDATE `waypoint_scripts` SET `dataint` = 25074 WHERE `dataint` = 2000005207;
UPDATE `waypoint_scripts` SET `dataint` = 25075 WHERE `dataint` = 2000005208;
UPDATE `waypoint_scripts` SET `dataint` = 25076 WHERE `dataint` = 2000005209;
UPDATE `waypoint_scripts` SET `dataint` = 23842 WHERE `dataint` = 2000005210;
UPDATE `waypoint_scripts` SET `dataint` = 328 WHERE `dataint` = 2000005400;
UPDATE `waypoint_scripts` SET `dataint` = 327 WHERE `dataint` = 2000005401;
UPDATE `waypoint_scripts` SET `dataint` = 5956 WHERE `dataint` = 2000005402;
UPDATE `waypoint_scripts` SET `dataint` = 5957 WHERE `dataint` = 2000005403;
UPDATE `waypoint_scripts` SET `dataint` = 5960 WHERE `dataint` = 2000005404;
UPDATE `waypoint_scripts` SET `dataint` = 5959 WHERE `dataint` = 2000005405;
UPDATE `waypoint_scripts` SET `dataint` = 24439 WHERE `dataint` = 2000005406;
UPDATE `waypoint_scripts` SET `dataint` = 24443 WHERE `dataint` = 2000005407;
UPDATE `waypoint_scripts` SET `dataint` = 36 WHERE `dataint` = 2000005408;

-- ----------------------------
-- Update data command
-- ----------------------------

INSERT INTO `command`(`name`, `security`, `help`) VALUES ('reload achievement_reward_locale', 3, 'Syntax: .reload achievement_reward_locale\nReload achievement_reward_locale table.');
UPDATE command SET name = 'reload creature_template_locale', help = 'Syntax: .reload creature_template_locale\nReload creature_template_locale table.'  WHERE name = 'reload locales_creature';
UPDATE command SET name = 'reload creature_text_locale', help = 'Syntax: .reload creature_text_locale\nReload creature_text_locale Table.'  WHERE name = 'reload locales_creature_text';
UPDATE command SET name = 'reload gameobject_template_locale', help = 'Syntax: .reload gameobject_template_locale\nReload gameobject_template_locale table.'  WHERE name = 'reload locales_gameobject';
UPDATE command SET name = 'reload gossip_menu_option_locale', help = 'Syntax: .reload gossip_menu_option_locale\nReload gossip_menu_option_locale table.'  WHERE name = 'reload locales_gossip_menu_option';
UPDATE command SET name = 'reload item_template_locale', help = 'Syntax: .reload item_template_locale\nReload item_template_locale table.'  WHERE name = 'reload locales_item';
UPDATE command SET name = 'reload item_set_name_locale', help = 'Syntax: .reload item_set_name_locale\nReload item_set_name_locale table.'  WHERE name = 'reload locales_item_set_name';
UPDATE command SET name = 'reload npc_text_locale', help = 'Syntax: .reload npc_text_locale\nReload npc_text_locale table.'  WHERE name = 'reload locales_npc_text';
UPDATE command SET name = 'reload page_text_locale', help = 'Syntax: .reload page_text_locale\nReload page_tex_locale table.'  WHERE name = 'reload locales_page_text';
UPDATE command SET name = 'reload points_of_interest_locale', help = 'Syntax: .reload points_of_interest_locale\nReload points_of_interest_locale table.'  WHERE name = 'reload locales_points_of_interest';
UPDATE command SET name = 'reload quest_template_locale', help = 'Syntax: .reload quest_template_locale\nReload quest_template_locale table.'  WHERE name = 'reload locales_quest';

--
-- END UPDATING QUERIES
--
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
