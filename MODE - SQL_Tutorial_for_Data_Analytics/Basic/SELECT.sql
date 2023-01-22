/* 
SELECT indicates which columns you'd like to view,
 FROM identifies the table that they live in. 
*/


/* 
 QUERY 1 : 
 The query is telling the database to return the year, month, and west columns 
 from the table tutorial.us_housing_units.
 Three column names were separated by a comma in the query. 
 Whenever you select multiple columns, they must be separated by commas, 
 but you should not include a comma after the last column name.
 */

SELECT
  year,
  MONTH,
  west
FROM
  tutorial.us_housing_units 
  
-- If you want to select every column in a table, you can use * instead of the column names:

SELECT
  *
FROM
  tutorial.us_housing_units
  
-- Column names

SELECT
  west AS "West Region"
FROM
  tutorial.us_housing_units
  
/*
Without the double quotes, that query would read 'West' and 'Region' as separate objects 
and would return an error. Note that the results will only return capital letters 
if you put column names in double quotes. 
The following query, for example, will return results with lower-case column names.
*/

SELECT
  west AS West_Region,
  south AS South_Region
FROM
  tutorial.us_housing_units