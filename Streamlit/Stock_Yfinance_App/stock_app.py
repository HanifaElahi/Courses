# Importing Libraries and Dependencies
import numpy as np
import pandas as pd
import yfinance as yf
import streamlit as st

# Mentioning App Title in Markdown Format
st.write("""

# Simple Stock Price App

Shown are the **Closing Price** and **Volume** of Google!

""")

# Defining the ticker symbol
tickerSymbol = 'GOOG'

# Get data on this ticker
tickerData = yf.Ticker(tickerSymbol)

# Get the Historical Prices for this ticker
tickerDf = tickerData.history(period = '1d', start = '2010-5-31', end = '2020-5-31')

# Open	High	Low	Close	Volume	Dividends	Stock Splits

st.write("""

## Closing Price

""")

# Making Line Chart of Google Closing Price
st.line_chart(tickerDf.Close)

st.write("""

## Volume Price

""")

# Making Line Chart of Google Volume
st.line_chart(tickerDf.Volume)