/*
Write a query that shows all of the entries for Elvis and M.C. Hammer.

Hint: M.C. Hammer is actually on the list under multiple names, 
so you may need to first write a query to figure out exactly how M.C. Hammer is listed. 
You're likely to face similar problems that require some exploration in many real-life scenarios
*/

SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  "group" IN ('M.C. Hammer', 'Hammer', 'Elvis Presley')