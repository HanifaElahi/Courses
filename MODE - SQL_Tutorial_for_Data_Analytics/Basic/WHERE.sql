-- Filtering the data using the WHERE clause

SELECT
  *
FROM
  tutorial.us_housing_units
WHERE
  MONTH = 1
  
/*
The clauses always need to be in this order: SELECT, FROM, WHERE.

How does WHERE work?

The SQL WHERE clause works in a plain-English way: 
the above query does the same thing as SELECT * FROM tutorial.us_housing_units, 
except that the results will only include rows where the month column contains the value 1.

In Excel, it's possible to sort data in such a way that one column can be reordered
without reordering any of the other columns—though that could badly scramble your data. 
When using SQL, entire rows of data are preserved together. 
If you write a WHERE clause that filters based on values in one column, 
you'll limit the results in all columns to rows that satisfy the condition. 
The idea is that each row is one data point or observation, 
and all the information contained in that row belongs together.
*/