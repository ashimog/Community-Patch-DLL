-- Luxury happiness divisor. % of game completed and number of owned cities affects this (later era = lower potential bonus).
-- Equation looks at tech %, # of cities, and uses value below as baseline. (125 = 12.5 citizens)

	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_POPULATION_DIVISOR', '0'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LUXURY_HAPPINESS' AND Value= 0 );
	
	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_POPULATION_DIVISOR', '350'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LUXURY_HAPPINESS' AND Value= 1 );

-- Maximum bonus from luxuries.

	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_LUXURY_MAXIMUM', '0'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LUXURY_HAPPINESS' AND Value= 0 );

	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_LUXURY_MAXIMUM', '5'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LUXURY_HAPPINESS' AND Value= 1 );

-- Minimum bonus from luxuries.

	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_LUXURY_BASE', '0'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LUXURY_HAPPINESS' AND Value= 0 );

	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_LUXURY_BASE', '1'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LUXURY_HAPPINESS' AND Value= 1 );

-- REALLY IMPORTANT VALUE
-- % Increase of luxury pop needed as you research technologies. Set upper/lower limits on the % increase here.

	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_ERA_BASE_INCREASE', '0'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LUXURY_HAPPINESS' AND Value= 1 );
	
	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_ERA_MAX_INCREASE', '100'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LUXURY_HAPPINESS' AND Value= 1 );