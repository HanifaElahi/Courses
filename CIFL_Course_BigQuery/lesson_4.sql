SELECT  
channelGrouping as channel,
sum(totals.visits) as visits,
sum(totals.transactions) as transactions,
sum(totals.transactionRevenue) as revenue
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
WHERE channelGrouping in ('Organic Search', 'Direct')
GROUP BY channel
ORDER BY transactions desc
LIMIT 1000


-- Most of the time, we won't just need to query out raw data 
-- also need to perform some aggregate math across a slice of your dataset (by channel, device type, etc).

-- For example, what if want to sum visits, transactions and revenue by channel?

-- There are two changes required to your query to make this happen: 
-- 1. Wrap the columns you want to run math on in an aggregate function 
-- SUM(), COUNT(), COUNT(DISTINCT()), MAX(), or MIN() 
-- 2. Add a GROUP BY parameter after your WHERE logic - all of the columns not being aggregated must be present in the GROUP BY