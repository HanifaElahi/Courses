/*
 Practice Problem 1 : 
 Write a query that returns all rows for which Ludacris was a member of the group.
 */
 
SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  "group" ilike '%ludacris%'
 
  /*
   Practice Problem 2 :
   Write a query that returns all rows for which the first artist listed in the group 
   has a name that begins with "DJ".
   */
   
SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  "group" LIKE 'DJ%'