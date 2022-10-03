# Time Series Analysis

- Sometimes data changes over time. This data is called time-dependent data. 
- Given time-dependent data, you can analyze the past to predict the future.
- The future prediction will also include time as a variable, and the output will vary with time.
- Using time-dependent data, you can find patterns that repeat over time.

            A Time Series is a set of observations that are collected after regular intervals of time.
            If plotted, the Time series would always have one of its axes as time

- Consider the running of a bakery. Given the data of the past few months, you can predict what items you need to bake at what time. The morning crowd would need more bread items, like bread rolls, croissants, breakfast muffins, etc. At night, people may come in to buy cakes and pastries or other dessert items. Using time series analysis, you can predict items popular during different times and even different seasons.



### Components of Time Series Analysis:

<img src = "https://www.simplilearn.com/ice9/free_resources_article_thumb/Time_Series_Analysis_In_Python_3.png">

#### 1. Trend: 
- The Trend shows the variation of data with time or the frequency of data. 
- Using a Trend, you can see how your data increases or decreases over time. 
- The data can increase, decrease, or remain stable. 
- Over time, population, stock market fluctuations, and production in a company are all examples of trends.

#### 2. Seasonality: 
- Seasonality is used to find the variations which occur at regular intervals of time. 
- Examples are festivals, conventions, seasons, etc. 
- These variations usually happen around the same time period and affect the data in specific ways which you can predict. 

#### 3. Irregularity:
- Fluctuations in the time series data do not correspond to the trend or seasonality. 
- These variations in your time series are purely random and usually caused by unforeseeable circumstances, such as a sudden decrease in population because of a natural calamity.
    
#### 4. Cyclic: 
- Oscillations in time series which last for more than a year are called cyclic. 
- They may or may not be periodic. 

#### 5. Stationary: 
- A time series that has the same statistical properties over time is stationary. 
- The properties remain the same anywhere in the series. 
- Your data needs to be stationary to perform time-series analysis on it. 
- A stationary series has a constant mean, variance, and covariance.


### ARIMA Model

- ARIMA Model stands for Auto-Regressive Integrated Moving Average. 
- It is used to predict the future values of a time series using its past values and forecast errors. 
- The below diagram shows the components of an ARIMA model: 

<img src = "https://www.simplilearn.com/ice9/free_resources_article_thumb/Time_Series_Analysis_In_Python_4.png">

##### Auto Regressive Model

- Auto-Regressive models predict future behavior using past behavior where there is some correlation between past and future data. 
- The formula below represents the autoregressive model. 
- It is a modified version of the slope formula with the target value being expressed as the sum of the intercept, the product of a coefficient and the previous output, and an error correction term.

<img src = "https://www.simplilearn.com/ice9/free_resources_article_thumb/Time_Series_Analysis_In_Python_5.png">

##### Moving Average

- Moving Average is a statistical method that takes the updated average of values to help cut down on noise. 
- It takes the average over a specific interval of time. 
- You can get it by taking different subsets of your data and finding their respective averages.
- You first consider a bunch of data points and take their average. 
- You then find the next average by removing the first value of the data and including the next value of the series.

<img src = "https://www.simplilearn.com/ice9/free_resources_article_thumb/Time_Series_Analysis_In_Python_6.png">
