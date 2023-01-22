/*
 Practice Problem
 Write a query that surfaces all rows for top-10 hits for which Ludacris is part of the Group.
 */
 
SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year_rank <= 10
  AND "group" ILIKE '%ludacris%'