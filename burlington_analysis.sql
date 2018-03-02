use project_one;
SET SQL_SAFE_UPDATES = 0;
----########################################################################

# Question 1: How does the building-type affect the house value?
SELECT 
	b.BuildingType, c.CurrentValue
FROM
	build_type b
JOIN 
current_value c ON b.AccountNumber = c.AccountNumber;
----########################################################################

#----Question 2: How does year-built in affect house value? ----#
DELETE FROM 
	year_build
WHERE 
	`YearBlt`  = 0
ORDER BY 
	`YearBlt` ASC;
SELECT 
	y.YearBlt AS decade, v.CurrentValue
FROM 
	year_build AS y , current_value AS v;
----########################################################################

#----Question 3: What building-type was most popular in each decade? ----#
DELETE FROM 
	type_data
WHERE 
	`YearBlt`  = 0
ORDER BY 
	`YearBlt` ASC;
SELECT 
	(floor(a.YearBlt / 10) * 10) AS decade, a.BuildingType AS cnt
FROM 
	type_data AS a
GROUP BY 
	floor(a.YearBlt / 10);
----########################################################################

#----Question 4: How does the condition(grade) affects the house value? this needs join clause

#----Question 5: What heating-type was most popular in each decade? ----#


