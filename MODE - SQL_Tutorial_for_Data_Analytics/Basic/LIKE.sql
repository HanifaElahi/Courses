/*
 LIKE is a logical operator in SQL that allows you to match on similar values 
 rather than exact ones.
 */
 
/*
 In this example, the results from the Billboard Music Charts dataset will include rows 
 for which "group" starts with "Snoop" and is followed by any number and selection of characters.
 */
 
SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  "group" LIKE 'Snoop%'
  
-- Wildcards and ILIKE

  /*
   The % used above represents any character or set of characters. 
   In this case, % is referred to as a "wildcard." 
   In the type of SQL that Mode uses, LIKE is case-sensitive, 
   meaning that the above query will only capture matches that start with a capital "S" and 
   lower-case "noop." 
   To ignore case when you're matching values, you can use the ILIKE command
   */

SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  "group" ILIKE 'snoop%'
  
-- You can also use _ (a single underscore) to substitute for an individual character

SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  artist ILIKE 'dr_ke'