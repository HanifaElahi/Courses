/*
Write a query that returns all rows for top-10 songs 
that featured either Katy Perry or Bon Jovi.
*/

SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year_rank <= 10
  AND (
    "group" ILIKE '%katy perry%'
    OR "group" ILIKE '%bon jovi%'
  )