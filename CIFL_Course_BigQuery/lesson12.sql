-- Deduplication, or deduping for short, 
-- is the process of removing identical entries from two or more data sets such as mailing lists.


-- BigQuery is an append-only database, 
-- meaning as new rows are updated, rows are added to the database, rather than being updated in place.

-- This means that you can often end up with duplicate values for a given unique row - for example, 
-- if you’re using Stitch to push Google Analytics (or any API’s) data to BigQuery, you’ll have to dedupe it before using it.

-- Fortunately, this is easy to do using window functions - the usage can seem a bit complex at first but petty easy.

-- From the sample Google Analytics dataset, 
-- let’s say we want to pull out the last hit on a given day for each channelGrouping. 
-- Let’s use a window (aka analytic) function:

first_value(VisitStartTime) over (PARTITION BY channelGrouping ORDER BY visitStartTime desc) lv

-- The key elements here are the function (first_value), 
-- and the PARTITION BY of channelGrouping (which behaves like a GROUP BY).

-- The ORDER BY is required if you want to pull a first_value, last_value, or rank 
-- since we want the latest timestamp, we’re going to pull the first_value of with visitStartTime descending.

-- To ultimately answer our question of what was the last hit of the day for each channelGrouping,
--  we also have to SELECT only values where the visitStartTime is equal to the last value:

SELECT * FROM (

  SELECT  
  date,
  channelGrouping,
  totals.hits,
  visitStartTime,
  first_value(VisitStartTime) over (PARTITION BY channelGrouping ORDER BY visitStartTime desc) lv
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
)
WHERE visitStartTime = lv