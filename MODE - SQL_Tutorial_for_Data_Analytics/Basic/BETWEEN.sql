/*
 BETWEEN is a logical operator in SQL that allows you to select only rows that are within a specific range. 
 It has to be paired with the AND operato
 */
 
SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year_rank BETWEEN 5
  AND 10