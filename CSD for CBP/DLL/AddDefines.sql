
-- Quest stuff

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_QUEST_REBELLION_TIMER', '20';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_QUEST_FRIENDSHIP_WAR', '35';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_QUEST_FRIENDSHIP_FIND_CITY_STATE', '25';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_QUEST_FRIENDSHIP_INFLUENCE', '0';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_QUEST_FRIENDSHIP_TOURISM', '20';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_QUEST_FRIENDSHIP_ARCHAEOLOGY', '40';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_QUEST_FRIENDSHIP_CIRCUMNAVIGATION', '35';

INSERT INTO Defines (
Name, Value)
SELECT 'QUEST_DISABLED_WAR', '0';

INSERT INTO Defines (
Name, Value)
SELECT 'QUEST_DISABLED_INFLUENCE', '0';

INSERT INTO Defines (
Name, Value)
SELECT 'QUEST_DISABLED_FIND_CITY_STATE', '0';

INSERT INTO Defines (
Name, Value)
SELECT 'QUEST_DISABLED_TOURISM', '0';

INSERT INTO Defines (
Name, Value)
SELECT 'QUEST_DISABLED_ARCHAEOLOGY', '0';

INSERT INTO Defines (
Name, Value)
SELECT 'QUEST_DISABLED_CIRCUMNAVIGATION', '0';

INSERT INTO Defines (
Name, Value)
SELECT 'QUEST_DISABLED_LIBERATION', '0';

INSERT INTO Defines (
Name, Value)
SELECT 'QUEST_DISABLED_HORDE', '0';

INSERT INTO Defines (
Name, Value)
SELECT 'QUEST_DISABLED_REBELLION', '0';

-- Quest Proclivity Values --
INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_CIV_QUEST_WAR_MILITARISTIC_VALUE', '800';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_CIV_QUEST_WAR_HOSTILE_VALUE', '600';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_CIV_QUEST_WAR_CULTURED_VALUE', '500';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_CIV_QUEST_NATIONAL_WONDER_CULTURED_VALUE', '300';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_CIV_QUEST_FIND_CITYSTATE_MARITIME_VALUE', '115';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_CIV_QUEST_FIND_CITYSTATE_MERCANTILE_VALUE', '120';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_CIV_QUEST_ARCHAEOLOGY_MILITARISTIC_VALUE', '250';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_CIV_QUEST_ARCHAEOLOGY_RELIGIOUS_VALUE', '300';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_CIV_QUEST_CIRCUMNAVIGATION_MARITIME_VALUE', '250';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_CIV_QUEST_INFLUENCE_HOSTILE_VALUE', '50';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_CIV_QUEST_TOURISM_FRIENDLY_VALUE', '130';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_CIV_QUEST_WEIGHT_MULTIPLIER_RELIGIOUS_LIBERATION', '500';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_CIV_QUEST_WEIGHT_MULTIPLIER_FRIENDLY_LIBERATION', '400';

INSERT INTO Defines (
Name, Value)
SELECT 'MINOR_CIV_QUEST_WEIGHT_MULTIPLIER_MILITARISTIC_LIBERATION', '600';

INSERT INTO Defines (
Name, Value)
SELECT 'BARBARIAN_HORDE_FREQUENCY', '300';

INSERT INTO Defines (
Name, Value)
SELECT 'QUEST_REBELLION_FREQUENCY', '700';

INSERT INTO Defines (
Name, Value)
SELECT 'INFLUENCE_MINOR_QUEST_BOOST', '20';

-- Assorted AI Values

INSERT INTO Defines (
Name, Value)
SELECT 'INFLUENCE_TARGET_DISTANCE_WEIGHT_VALUE', '3';

INSERT INTO Defines (
Name, Value)
SELECT 'APPROACH_WAR_MINOR_QUEST_WAR', '2';

INSERT INTO Defines (
Name, Value)
SELECT 'AI_MILITARY_RECAPTURING_CITY_STATE', '200';

-- Higher Threshold = Lower diplomacy desire.
INSERT INTO Defines (
Name, Value)
SELECT 'NEED_DIPLOMAT_THRESHOLD_MODIFIER', '125';

-- AI Diplomacy Desire and Distaste Modifiers. LESS COMPETITIVE

-- Higher Desire = Higher diplomacy desire.
INSERT INTO Defines (
Name, Value)
SELECT 'NEED_DIPLOMAT_DESIRE_MODIFIER', '1'
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_DIFFICULTY' AND Value= 1 );

-- Lower distaste = More sensitive to other player's diplomatic actions and/or city-state abuse.
INSERT INTO Defines (
Name, Value)
SELECT 'NEED_DIPLOMAT_DISTASTE_MODIFIER', '7'
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_DIFFICULTY' AND Value= 1 );

-- AI Diplomacy Threshold, Desire and Distaste Modifiers. DEFAULT

-- Higher Desire = Higher diplomacy desire.
INSERT INTO Defines (
Name, Value)
SELECT 'NEED_DIPLOMAT_DESIRE_MODIFIER', '2'
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_DIFFICULTY' AND Value= 2 );

-- Lower distaste = More sensitive to other player's diplomatic actions and/or city-state abuse.
INSERT INTO Defines (
Name, Value)
SELECT 'NEED_DIPLOMAT_DISTASTE_MODIFIER', '6'
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_DIFFICULTY' AND Value= 2 );

-- AI Diplomacy Threshold, Desire and Distaste Modifiers. MORE COMPETITIVE

-- Higher Desire = Higher diplomacy desire.
INSERT INTO Defines (
Name, Value)
SELECT 'NEED_DIPLOMAT_DESIRE_MODIFIER', '3'
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_DIFFICULTY' AND Value= 3 );

-- Lower distaste = More sensitive to other player's diplomatic actions and/or city-state abuse.
INSERT INTO Defines (
Name, Value)
SELECT 'NEED_DIPLOMAT_DISTASTE_MODIFIER', '5'
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_DIFFICULTY' AND Value= 3 );

-- AI Diplomacy Threshold, Desire and Distaste Modifiers. EXTREMELY COMPETITIVE

-- Higher Desire = Higher diplomacy desire.
INSERT INTO Defines (
Name, Value)
SELECT 'NEED_DIPLOMAT_DESIRE_MODIFIER', '4'
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_DIFFICULTY' AND Value= 4 );

-- Lower distaste = More sensitive to other player's diplomatic actions and/or city-state abuse.
INSERT INTO Defines (
Name, Value)
SELECT 'NEED_DIPLOMAT_DISTASTE_MODIFIER', '4'
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_DIFFICULTY' AND Value= 4 );

-- Embassy

INSERT INTO Defines (
Name, Value)
SELECT 'EMBASSY_IMPROVEMENT', '1';

-- Max Arts/Sciences % Boost - 1/3 of this is minimum % boost.

INSERT INTO Defines (
Name, Value)
SELECT 'LEAGUE_AID_MAX', '30';

--World War and Warmonger

INSERT INTO Defines (
Name, Value)
SELECT 'WARMONGER_THREAT_PER_TURN_DECAY_INCREASED', '-16';

INSERT INTO Defines (
Name, Value)
SELECT 'WARMONGER_THREAT_PER_TURN_DECAY_DECREASED', '-4';

INSERT INTO Defines (
Name, Value)
SELECT 'WARMONGER_THREAT_ATTACKED_WEIGHT_WORLD_WAR', '110';

INSERT INTO Defines (
Name, Value)
SELECT 'WARMONGER_THREAT_ATTACKED_WEIGHT_WORLD_PEACE', '450';

INSERT INTO Defines (
Name, Value)
SELECT 'WARMONGER_THREAT_DECREASED_WORLD_WAR', '5';

-- Homeland

INSERT INTO Defines (
Name, Value)
SELECT 'AI_HOMELAND_MOVE_PRIORITY_DIPLOMAT', '100';

INSERT INTO Defines (
Name, Value)
SELECT 'AI_HOMELAND_MOVE_PRIORITY_MESSENGER', '100';

-- Gold Gift Disabled
INSERT INTO Defines (
Name, Value)
SELECT 'CSD_GOLD_GIFT_DISABLED', '1'
WHERE EXISTS (SELECT * FROM CSD WHERE Type='GIFT_OPTION' AND Value= 2 );

-- Gold Gift Enabled
INSERT INTO Defines (
Name, Value)
SELECT 'CSD_GOLD_GIFT_DISABLED', '0'
WHERE EXISTS (SELECT * FROM CSD WHERE Type='GIFT_OPTION' AND Value= 1 );

-- Building Growth Yield
INSERT INTO Defines (
Name, Value)
SELECT 'CSD_DIPLO_BUILDING_YIELD', '1'
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_DIPLO_BUILDING_YIELD' AND Value = 1 );

-- Building Growth Yield
INSERT INTO Defines (
Name, Value)
SELECT 'CSD_DIPLO_BUILDING_YIELD', '2'
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_DIPLO_BUILDING_YIELD' AND Value = 2 );

-- Building Growth Yield
INSERT INTO Defines (
Name, Value)
SELECT 'CSD_DIPLO_BUILDING_YIELD', '3'
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_DIPLO_BUILDING_YIELD' AND Value = 3 );


--WC Stuff

INSERT INTO Defines (
Name, Value)
SELECT 'LEAGUE_PROPOSERS_PER_SESSION', '3';

INSERT INTO Defines (
Name, Value)
SELECT 'LEAGUE_NUM_LEADERS_FOR_EXTRA_VOTES', '1';

INSERT INTO Defines (
Name, Value)
SELECT 'LEAGUE_PROJECT_PROGRESS_PERCENT_WARNING', '25';

