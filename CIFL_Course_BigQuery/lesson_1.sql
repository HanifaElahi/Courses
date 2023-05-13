SELECT  
date,
channelGrouping as channel,
totals.visits,
totals.transactions,
totals.transactionRevenue
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` 
LIMIT 1000


-- basic SELECT query, pulling visits, transactions and revenue by channel from our Google Analytics dataset.

-- Each SQL query must contain at least 2 parameters:
-- 1. SELECT: defines the columns you’d like to pull
-- 2. FROM: defines the table to pull them from

-- column could be renamed using ‘as’ , if you’d to use a column name different from the one present in the database. 

-- For the FROM parameter, in BigQuery there are 3 layers included in each table name:
-- 1. Project ID 
-- 2. Dataset
-- 3. Table


-- They come together as project-id.dataset.table

-- The LIMIT parameter above defines the number of rows to return - including a limit is just a good SQL practice, even though for BigQuery it’s not really necessary.