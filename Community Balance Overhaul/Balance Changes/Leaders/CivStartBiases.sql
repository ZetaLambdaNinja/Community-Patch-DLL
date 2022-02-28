-- Clear tables
DELETE FROM Civilization_Start_Along_Ocean;
DELETE FROM Civilization_Start_Along_River;
DELETE FROM Civilization_Start_Region_Priority;
DELETE FROM Civilization_Start_Region_Avoid;

-- Start biases
INSERT INTO Civilization_Start_Along_Ocean
	(CivilizationType, StartAlongOcean)
VALUES
	('CIVILIZATION_ENGLAND', '1'),
	('CIVILIZATION_POLYNESIA', '1'),
	('CIVILIZATION_DENMARK', '1'),
	('CIVILIZATION_CARTHAGE', '1'),
	('CIVILIZATION_SPAIN', '1'),
	('CIVILIZATION_PORTUGAL', '1'),
	('CIVILIZATION_VENICE', '1'),
	('CIVILIZATION_NETHERLANDS', '1');

INSERT INTO Civilization_Start_Along_River
	(CivilizationType, StartAlongRiver)
VALUES
	('CIVILIZATION_INDIA', '1'),
	('CIVILIZATION_SONGHAI', '1');

INSERT INTO Civilization_Start_Region_Priority
	(CivilizationType, RegionType)
VALUES
	('CIVILIZATION_ARABIA', 'REGION_DESERT'),
	('CIVILIZATION_AZTEC', 'REGION_JUNGLE'),
	('CIVILIZATION_AZTEC', 'REGION_FOREST'),
	('CIVILIZATION_IROQUOIS', 'REGION_JUNGLE'),
	('CIVILIZATION_IROQUOIS', 'REGION_FOREST'),
	('CIVILIZATION_MONGOL', 'REGION_GRASS'),
	('CIVILIZATION_BRAZIL', 'REGION_JUNGLE'),
	('CIVILIZATION_BRAZIL', 'REGION_FOREST'),
	('CIVILIZATION_MOROCCO', 'REGION_DESERT'),
	('CIVILIZATION_POLAND', 'REGION_GRASS'),
	('CIVILIZATION_POLAND', 'REGION_PLAINS'),
	('CIVILIZATION_MAYA', 'REGION_JUNGLE'),
	('CIVILIZATION_MAYA', 'REGION_FOREST'),
	('CIVILIZATION_EGYPT', 'REGION_DESERT'),
	('CIVILIZATION_SIAM', 'REGION_JUNGLE'),
	('CIVILIZATION_SIAM', 'REGION_FOREST'),
	('CIVILIZATION_CELTS', 'REGION_HILLS');

INSERT INTO Civilization_Start_Region_Avoid
	(CivilizationType, RegionType)
VALUES
	('CIVILIZATION_HUNS', 'REGION_HILLS'),
	('CIVILIZATION_SHOSHONE', 'REGION_HILLS'),
	('CIVILIZATION_ROME', 'REGION_JUNGLE');

INSERT INTO Civilization_Start_Prefer_Mountain
	(CivilizationType, StartPreferMountain)
VALUES
	('CIVILIZATION_INCA', 1);