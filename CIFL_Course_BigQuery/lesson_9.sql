SELECT  
census.zipcode,
census.state_code,
sum(zip.population) population
FROM `bigquery-public-data.utility_us.zipcode_area` census
LEFT JOIN `bigquery-public-data.census_bureau_usa.population_by_zip_2010` zip
ON (
  census.zipcode = zip.zipcode
)
WHERE zip.minimum_age is null
AND zip.maximum_age is null
AND zip.gender is null
GROUP BY census.zipcode, census.state_code
ORDER BY population desc

-- There are a number of ways to join tables together 
-- (INNER JOINS, FULL OUTER JOINS, AUSTRALIAN JOINS, BRAZILIAN JOINS), 
-- but in BigQuery we mainly use straight LEFT JOINS

-- A LEFT JOIN is when you take all of one table (your first table), 
-- and join rows from a second table to it only where they match a certain logic. 
-- It’s basically a VLOOKUP formula in Google Sheets.

-- Let’s look at an example - what if we wanted to calculate the population by US state using BigQuery public datasets?

-- We’d have to join together the 2010 Census dataset by ZIP code with the US ZIP codes dataset, 
-- which will allow us to lookup the state that each ZIP code belongs to.

-- The joining part of our SQL query falls when we select our tables:

FROM `bigquery-public-data.utility_us.zipcode_area` a
LEFT JOIN `bigquery-public-data.census_bureau_usa.population_by_zip_2010` b
ON (
  a.zipcode = b.zipcode
)


-- To set up your join, you first give each table you’re joining an alias (a and b in our case), 
-- to make referencing their columns easier.

-- Then, in the ‘ON’ parameter, you specify the logic for your join - 
-- the columns that need to equal each other to join them together.

-- You still SELECT and GROUP BY columns in the same way - 
-- except you now have access to columns from both tables a (states by zipcode) and b (population by zipcode) - 
-- you can select specific columns by adding the table alias (a. or b.) before the column name:
