/*
 The ORDER BY clause allows you to reorder your results based on the data in one or more columns.
 */
 
SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
ORDER BY
  artist


SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year = 2013
ORDER BY
  year_rank
  
  
  /*
   If you'd like your results in the opposite order (referred to as descending order),
   you need to add the DESC operator
   */
   
   
SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year = 2013
ORDER BY
  year_rank DESC
  
  
  /*
   Ordering data by multiple columns
   You can also order by mutiple columns. 
   This is particularly useful if your data falls into categories and you'd like to organize rows by date, for example, but keep all of the results within a given category together.
   */
   
   
SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year_rank <= 3
ORDER BY
  year DESC,
  year_rank
  

SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year_rank <= 3
ORDER BY
  year_rank,
  year DESC
  
  
  /*
   Finally, you can make your life a little easier by substituting numbers for column names in the ORDER BY clause. 
   The numbers will correspond to the order in which you list columns in the SELECT clause.
   */
  
   
SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year_rank <= 3
ORDER BY
  2,
  1 DESC
  
  
  /*
   Using comments
   You can "comment out" pieces of code by adding combinations of characters. 
   In other words, you can specify parts of your query that will not actually be treated like SQL code. It can be helpful to include comments that explain your thinking so that you can easily remember what you intended to do if you ever want to revisit your work. Commenting can also be useful 
   if you want to test variations on your query while keeping all of your code intact.
   You can use-- (two dashes) to comment out everything to the right of them on a given line:
   */
   
   
SELECT
  * --This comment won't affect the way the code runs
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year = 2013
  
  
  /*
   You can also leave comments across multiple lines using /* to begin the comment and  to close it:
   */
  /* Here's a comment so long and descriptive that
   it could only fit on multiple lines. Fortunately,
   it, too, will not affect how this code runs. */


SELECT
  *
FROM
  tutorial.billboard_top_100_year_end
WHERE
  year = 2013