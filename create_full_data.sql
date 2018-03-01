use project_one;
SET SQL_SAFE_UPDATES = 0;

#full data
DROP TABLE IF EXISTS full_data;
CREATE TABLE full_data (c_id Integer PRIMARY KEY AUTO_INCREMENT) 
AS SELECT 
	`BuildingType`, 
	`Grade`,
  	`LandUse`,
	`CurrentBuildingValue`,
  	`PropertyCenterPoint`,
 	`HeatType`,
 	`YearBlt`
FROM burlington;

#contact data
DROP TABLE IF EXISTS contact;
CREATE TABLE contact (aid INTEGER PRIMARY KEY AUTO_INCREMENT)
AS SELECT
	`SpanNumber`,
	`StreetNumber`,
	`StreetName`,
	`CuO1LastName`
FROM burlington;

DELETE FROM full_data
WHERE `YearBlt`  = 0;

SELECT * FROM full_data;
SELECT * FROM contact;
