/*
 OR is a logical operator in SQL that allows you to select rows that satisfy either of two conditions. 
 It works the same way as AND, which selects the rows that satisfy both of two conditions.
 */
 
SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year_rank = 5
  OR artist = 'Gotye'
 
  /*
   each row will satisfy one of the two conditions. You can combine AND with OR using parenthesis.
   The following query will return rows that satisfy both of the following conditions
   */

SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year = 2013
  AND (
    "group" ILIKE '%macklemore%'
    OR "group" ILIKE '%timberlake%'
  )