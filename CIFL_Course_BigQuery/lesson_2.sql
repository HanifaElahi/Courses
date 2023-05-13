SELECT  
date,
channelGrouping as channel,
totals.visits,
totals.transactions,
totals.transactionRevenue
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
WHERE channelGrouping = 'Organic Search'

-- Adding a WHERE parameter to  query allows to filter  results based on specific logic.

-- Following the WHERE parameter, you can introduce any logic just like you would in an IF formula: !=, <, <=, >, >=.


-- You can even pull multiple values using “in”:

SELECT  
date,
channelGrouping as channel,
totals.visits,
totals.transactions,
totals.transactionRevenue
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
WHERE channelGrouping in ('Direct', 'Organic Search')


-- To add a second logic statement after your initial WHERE, simply add an AND or OR (WHERE is only for the first bit of logic):

SELECT  
date,
channelGrouping as channel,
totals.visits,
totals.transactions,
totals.transactionRevenue
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
WHERE channelGrouping in ('Direct', 'Organic Search')
AND date = '20170801'

