SELECT  
date,
channelGrouping as channel,
totals.visits,
totals.transactions,
totals.transactionRevenue
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
ORDER BY totals.transactionRevenue desc
LIMIT 1000


-- The basic structure of an ORDER BY parameter is:
-- ORDER BY columnname direction (either asc for ascending or desc for descending)

-- Note: 
-- If you don’t truly need to order results in a certain way, then you can leave out the ORDER BY - 
-- it can be an unnecessary drain on performance when running large queries