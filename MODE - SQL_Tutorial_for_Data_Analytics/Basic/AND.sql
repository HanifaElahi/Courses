-- AND is a logical operator in SQL that allows you to select only rows that satisfy two conditions

/*
SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year = 2012
  AND year_rank <= 10
*/


SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year = 2012
  AND year_rank <= 10
  AND "group" ILIKE '%feat%'