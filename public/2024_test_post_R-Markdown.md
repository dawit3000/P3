---
title: "Just a test again a test 7 post for 2024 (will be deleted)"
author: "Dawit Aberra"
date: 2024-05-24
categories: ["R"]

---




## Introduction to 2024

Institutional and Hedge Fund managers return from summer vacation and adjust their financial portfolios at the end of each summer, causing a selloff pressure in the market. September is considered a bad month for the Bulls [1] 

“Given that September tends to be a bad month for the market, I’m urging you to be prepared …” Jim Cramer on CNBC, September 11, 2020.

For this and other reasons, such as election hypes, pandemic, etc., people with trading, investing or retirement portfolios may want to know how their financial portfolios (or instruments such as stocks or ETFs in their portfolios) performed over some years, months, weeks or days. They may also want to know the average monthly, yearly, weekly or daily returns, starting from some fixed time of start in the past to the present or recent time. 

Almost all portfolio managers measure performance with reference to a benchmark [3]. 
In this short note, we will consider the historical data of the Standard and Poor's 500 Index (S&P 500, symbol=^GSPC) from Yahoo! Finance, which is widely regarded as the best gauge of large-cap U.S. equities. Other well known benchmarks include DOW-30, NASDAQ-100, and the Russell 2000 Index for small-caps.

We will then outline a simple way to visualize or summarize monthly returns as well as average monthly returns using R. Interested readers can modify the instrument, period and length of time to their preference.

We start by installing the R packages that  will be needed to produce libraries later. For more information about one of the key packages used here, the `tidyquant` package,  see [2]. 

## Getting and Preparing Data

We will get the data for the S&P 500 Index, symbol = ^GSPC,  from Yahoo! Finance. We will then prepare the data for visualization and/or Summarization  of results as needed. 