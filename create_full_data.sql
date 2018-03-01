use project_one;
SET SQL_SAFE_UPDATES = 0;

DROP TABLE IF EXISTS full_data;
CREATE TABLE full_data (c_id Integer PRIMARY KEY AUTO_INCREMENT) 
as select 
	`BuildingType`, 
	`Grade`,
  	`LandUse`,
	`CurrentBuildingValue`,
  	`PropertyCenterPoint`,
 	 `HeatType`,
 	 `YearBlt`
from burlington;

delete from full_data
where `YearBlt`  = 0;
select * from full_data;
