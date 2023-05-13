-- It’s pretty common when working with marketing datasets to want to calculate a % of total column 
-- (ie the % of total revenue coming from a given channel for the period), 
-- or the difference from the average (to filter for anomalies).

-- BigQuery allows you to use window (or analytic) functions to perform this type of math 
-- where you calculate some math on your query in aggregate, but write the results to each row in the dataset.

-- Using our sample Google Analytics dataset, let’s calculate each channel’s percentage of total pageviews.

-- First, we’ll query out total pageviews by channel:

SELECT
channelGrouping,
sum(totals.pageViews) as pageviews
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
GROUP BY channelGrouping

-- Then, we can wrap a window function around this query 
-- to calculate the overall channel average + the total pageviews across all channels, 
-- as well as the pct of total pageviews for a given channel.

-- The basic syntax of a window function is:

sum(pageviews) OVER (PARTITION BY date) as total_pageviews

-- The key elements here are the function (sum), which will aggregate the sum total for each partition in the window.

-- The PARTITION BY statement basically behaves like a GROUP BY 
-- - here we’re saying group by date, since we want to know the total pageviews for each date.

SELECT
date,
channelGrouping,
pageviews,
sum(pageviews) OVER w1 as total_pageviews,
pageviews / sum(pageviews) OVER w1 as pct_of_pageviews
FROM (
  SELECT
  date,
  channelGrouping,
  sum(totals.pageViews) as pageviews
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
  GROUP BY channelGrouping, date
)
WINDOW w1 as (PARTITION BY date)
ORDER BY pct_of_pageviews desc


-- Notice how, since we’re using the same WINDOW (PARTITION BY xx) twice, 
--we define it at the end of our query (WINDOW w1 as) and reference it with OVER w1, instead of re-writing it twice.



-- we most commonly end up using these analytic functions:
-- 1. last_value()
-- 2. first_value()
-- 3. sum()
-- 4. max()
-- 4. min()
-- 5. avg()
-- 6. rank()
