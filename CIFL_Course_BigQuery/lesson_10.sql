-- A helpful hint when joining tables, is to use a WITH statement beforehand to declare your tables + pre-process them.

WITH zipcodes as (
  SELECT
  zipcode,
  state_code 
  FROM `bigquery-public-data.utility_us.zipcode_area`
),

census as (
  SELECT
  zipcode,
  sum(population)
  FROM `bigquery-public-data.census_bureau_usa.population_by_zip_2010`
  WHERE census.minimum_age is null
  AND census.maximum_age is null
  AND census.gender is null
  GROUP BY zipcode
)

SELECT 
zipcodes.zipcode,
zipcodes.state_code,
census.population
FROM zipcodes
LEFT JOIN census 
ON (
  zipcodes.zipcode = census.zipcodes
)


-- At the top of the query, you can define each table you’ll use, and do any filtering + grouping beforehand.

-- Then, when you join your tables together, you’re doing a straight join rather than also doing some math after the fact.

-- That’s just the style that we like to write SQL - not critical if you prefer straight joining, 
-- but it helps a lot with readability after the fact.