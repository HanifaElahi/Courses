/*
 IN is a logical operator in SQL that allows you to specify 
 a list of values that you'd like to include in the results
 */
 
SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year_rank IN (1, 2, 3)
  
  /*
   As with comparison operators, you can use non-numerical values, 
   but they need to go inside single quotes. 
   Regardless of the data type, the values in the list must be separated by commas.\
   */
   
SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  artist IN ('Taylor Swift', 'Usher', 'Ludacris')