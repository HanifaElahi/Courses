-- We want to calculate metrics based on own metrics: 
--for example conversion rate (transactions / visits), or average order value (revenue / transactions).

-- You can do that math inline right in your query, by using +, -, * or /.

SELECT  
date,
channelGrouping as channel,
sum(totals.visits) as visits,
sum(totals.transactions) / sum(totals.visits) as conv_rate,
sum(totals.transactions) as transactions,
sum(totals.transactionRevenue) / sum(totals.transactions) as aov,
sum(totals.transactionRevenue) as revenue
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
GROUP BY date, channel
ORDER BY transactions desc
LIMIT 1000

-- Division can be tricky though, since if you divide by zero your query will throw an error.

--To do division safely in queries, you can wrap them in what’s called a CASE statement, 
-- to only run the math if the denominator is greater than 0:

-- CASE statements are very useful - basically the same as an IF statement in Sheets. 
-- You can add multiple WHEN / THEN conditions to mimic a nested IF statement.

-- So the final query to calculate conversion rate and AOV would look like:

SELECT  
date,
channelGrouping as channel,
sum(totals.visits) as visits,
CASE WHEN sum(totals.visits) > 0
  THEN sum(totals.transactions) / sum(totals.visits) 
  ELSE 0 END as conv_rate,
sum(totals.transactions) as transactions,
CASE WHEN sum(totals.transactions) > 0 
  THEN sum(totals.transactionRevenue) / sum(totals.transactions) 
  ELSE 0 END as aov,
sum(totals.transactionRevenue) as revenue
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
GROUP BY date, channel
ORDER BY transactions desc
LIMIT 1000