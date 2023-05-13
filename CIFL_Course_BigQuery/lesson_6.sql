-- If working with marketing data, looking at changes over time will be critical for you.

-- SQL has built-in date functions to make that easy. 
-- Let’s try grouping sessions by day of the month, week of the year, and month + year.

-- The key functions are: 
-- 1. EXTRACT(DATE PART from column) - DATE PART can be DAY, WEEK, MONTH, YEAR, and more
-- 2. FORMAT_DATE(“date syntax”, column) - date syntax can be %Y-%m for year and month 

SELECT
date,
EXTRACT(DAY from date) as day_of_month,
EXTRACT(WEEK from date) as week_of_year,
FORMAT_DATE("%Y-%m", date) AS yyyymm

-- Note that due to a nuance in the sample GA dataset (the date being formatted as a string instead of a date), 
-- you’ll actually have to first use the PARSE_DATE function to get the date column into a true date format before running
-- the EXTRACT and FORMAT_DATE functions

SELECT
date,
EXTRACT(DAY from date) as day_of_month,
EXTRACT(WEEK from date) as week_of_year,
FORMAT_DATE("%Y-%m", date) AS yyyymm,
totals.visits
FROM (

  SELECT  
  PARSE_DATE('%Y%m%d', date) as date,
  channelGrouping,
  totals.visits
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
  WHERE channelGrouping in ('Organic Search', 'Direct')
  ORDER BY totals.visits desc
  LIMIT 1000

)