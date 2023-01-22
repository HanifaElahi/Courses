/*

PRACTICE PROBLEM 1 : 

Write a query to select all of the columns in the tutorial.us_housing_units table without using *.

*/

SELECT
  year,
  MONTH,
  month_name,
  midwest,
  northeast,
  south,
  west
FROM
  tutorial.us_housing_units
  
/*

PRACTICE PROBLEM 1 : 

Write a query to select all of the columns in the tutorial.us_housing_units table without using *.

*/

SELECT
  year AS Year,
  MONTH AS Month,
  month_name AS "Month Name",
  midwest AS "Midwest",
  northeast AS "Northeast",
  south AS "South",
  west AS "West"
FROM
  tutorial.us_housing_units