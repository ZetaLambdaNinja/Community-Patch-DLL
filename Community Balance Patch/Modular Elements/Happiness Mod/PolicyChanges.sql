--Monarchy

UPDATE Policies
SET CapitalUnhappinessMod = '0'
WHERE Type = 'POLICY_MONARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Policies
SET PovertyHappinessModCapital = '-25'
WHERE Type = 'POLICY_MONARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Policies
SET IlliteracyHappinessModCapital = '-25'
WHERE Type = 'POLICY_MONARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Monarchy[ENDCOLOR][NEWLINE]+1 [ICON_GOLD] Gold and [ICON_HAPPINESS_4] Unhappiness from Poverty and Illiteracy reduced by 25% in the [ICON_CAPITAL] Capital.'
WHERE Tag = 'TXT_KEY_POLICY_MONARCHY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

-- POLICY_MERITOCRACY

UPDATE Policies
SET PovertyHappinessMod = '-15'
WHERE Type = 'POLICY_MERITOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Policies
SET UnhappinessMod = '0'
WHERE Type = 'POLICY_MERITOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Meritocracy[ENDCOLOR][NEWLINE]+1 [ICON_HAPPINESS_1] Happiness for each City you own [ICON_CONNECTED] connected to the [ICON_CAPITAL] Capital and -15% [ICON_HAPPINESS_4] Unhappiness from Poverty in all Cities.'
WHERE Tag = 'TXT_KEY_POLICY_MERITOCRACY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

-- POLICY_ARISTOCRACY

UPDATE Policies
SET IlliteracyHappinessMod = '-10'
WHERE Type = 'POLICY_ARISTOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Policies
SET HappinessPerXPopulation = '0'
WHERE Type = 'POLICY_ARISTOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Aristocracy[ENDCOLOR][NEWLINE]+15% [ICON_PRODUCTION] Production when building Wonders and -10% [ICON_HAPPINESS_4] Unhappiness from Illiteracy in all Cities.'
WHERE Tag = 'TXT_KEY_POLICY_ARISTOCRACY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );


-- POLICY_MILITARY_CASTE

UPDATE Policies
SET DefenseHappinessMod = '-15'
WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Policies
SET HappinessPerGarrisonedUnit = '0'
WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Military Caste[ENDCOLOR][NEWLINE]Each City with a garrison increases empire [ICON_CULTURE] Culture by 2. -15% [ICON_HAPPINESS_4] Unhappiness from Vulnerability in all Cities.'
WHERE Tag = 'TXT_KEY_POLICY_ARISTOCRACY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );


-- POLICY_PROTECTIONISM
UPDATE Policies
SET PovertyHappinessMod = '-15'
WHERE Type = 'POLICY_PROTECTIONISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Policies
SET PovertyHappinessModCapital = '-20'
WHERE Type = 'POLICY_PROTECTIONISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Policies
SET ExtraHappinessPerLuxury = '0'
WHERE Type = 'POLICY_PROTECTIONISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Protectionism[ENDCOLOR][NEWLINE]-15% [ICON_HAPPINESS_4] Unhappiness from Poverty in all Cities and an additional -20% in [ICON_CAPITAL] Capital.'
WHERE Tag = 'TXT_KEY_POLICY_ARISTOCRACY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

-- POLICY_FREE_RELIGION
UPDATE Policies
SET MinorityHappinessMod = '-50'
WHERE Type = 'POLICY_PROTECTIONISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Policies
SET MinorityHappinessModCapital = '-50'
WHERE Type = 'POLICY_PROTECTIONISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Religious Tolerance[ENDCOLOR][NEWLINE]Cities with a majority religion also get the Pantheon belief bonus of the second most popular religion. -50% [ICON_HAPPINESS_4] Unhappiness from Religious Strife in all Cities and an additional -50% in [ICON_CAPITAL] Capital.'
WHERE Tag = 'TXT_KEY_POLICY_FREE_RELIGION_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );