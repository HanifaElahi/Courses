-- What channel had the highest number of pageviews? Organic Search

SELECT  
channelGrouping as channel,
sum(totals.pageviews) as views
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
GROUP BY channel
ORDER BY views desc


-- What channel had the lowest bounce rate?

SELECT  
channelGrouping as channel,
sum(totals.bounces) / sum(totals.visits) as bounce_rate
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
GROUP BY channel
ORDER BY bounce_rate asc


