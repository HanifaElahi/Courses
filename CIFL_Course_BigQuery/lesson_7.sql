-- As we first had to run the PARSE_DATE function on our date column, to make it a proper date field rather than a string


SELECT 
PARSE_DATE('%Y%m%d', date) as date_value
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 

-- Once it's done, then we could run  day, day_of_week, and yyyymm functions on that pre-processed date_value column 
--  by merely adding a new SELECT statement around the query we’d already written.

-- In effect, we’re querying the output of a previous query, rather than querying a BigQuery table directly

SELECT
date_value,
EXTRACT(DAY from date_value) as day,
EXTRACT(WEEK from date_value) as day_of_week,
FORMAT_DATE("%Y-%m", date_value) AS yyyymm
FROM
(
  SELECT 
  PARSE_DATE('%Y%m%d', date) as date_value
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
)

-- This way, instead of having to repeat the PARSE_DATE function 3 times 
-- (for each of the day, day_of_week and yyyymm columns), you can write it once, 
-- and then reference it in a later query.

-- Nesting is critical for keeping your queries simple, 
-- but beware - using more than 2 or 3 levels of nesting will make you want to pull your hair out later on.

