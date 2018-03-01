use project_one;

#----Question 1: How does the building type affect the house value? ----#


#----Question 2: How does year built in effect house value? ----#


#----Question 3: What building type was most popular in each decade? ----#


#----Question 4: How does the condition (grade) will affect the house value? ----#
SELECT 
	rs.Grade, rs.YearBlt
FROM
	`full_data` rs
ORDER BY 
	 `CurrentBuildingValue` DESC
# see report file for more explanation -- the condition of the house affects the house value. It also depends on the year the house was build on. 

#----Question 5: What heating type was most popular in each decade? ----#


