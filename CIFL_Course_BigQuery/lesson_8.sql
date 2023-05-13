-- Fields in Dataset that contains sub-columns are known as RECORDS
-- it’s an array of data within a single row of data.

-- To access these nested RECORD columns, there’s a specific parameter to pass in your query:
-- CROSS JOIN UNNEST(field)

-- This will flatten the array, and make it queryable using basic SQL

SELECT  
date,
channelGrouping,
isEntrance,
page.pagePath,
totals.transactions,
totals.transactionRevenue
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
CROSS JOIN UNNEST(hits)
WHERE date = '20170801'

-- Once you unnest the hits RECORD, you’re able to query the sub-columns
-- by removing the ‘hits.’ before the column name 
--like (hits.page.pagePath becomes queryable as page.pagePath, hits.item.productName -> item.productName, etc).

-- For example, let’s say we wanted to filter out only entrance hits, when a user first lands on your site. 
-- There’s a sub-column of the hits RECORD called hits.isEntrance. If it equals true, then that row is, er, an entrance.

-- Let’s query out only entrance hits:

SELECT  
date,
channelGrouping,
isEntrance,
page.pagePath,
totals.transactions,
totals.transactionRevenue
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
CROSS JOIN UNNEST(hits)
WHERE date = '20170801'
AND isEntrance = true

-- Being able to wield CROSS JOIN UNNEST will open up the true power of BigQuery for you, 
-- as lots of other APIs (Shopify, FB Ads, etc) make use of BigQuery’s nested array column functionality.