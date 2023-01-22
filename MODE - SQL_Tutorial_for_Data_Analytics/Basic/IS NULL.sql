/*
 IS NULL is a logical operator in SQL that allows you to exclude rows with missing data from your results.
 */
 
SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  artist IS NULL