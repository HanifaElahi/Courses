
-- NOT is a logical operator in SQL that you can put before any conditional statement to select rows for which that statement is false.

SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year = 2013
  AND year_rank NOT BETWEEN 2
  AND 3 
  
-- NOT is commonly used with LIKE

SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year = 2013
  AND "group" NOT ILIKE '%macklemore%'
  
  /*
   NOT is also frequently used to identify non-null rows, 
   but the syntax is somewhat special—you need to include IS beforehand
   */
   
SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year = 2013
  AND artist IS NOT NULL