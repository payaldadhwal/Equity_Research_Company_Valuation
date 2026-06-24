📊 Equity Research & Company Valuation Analysis
📌 Project Overview

This project analyzes the financial performance and valuation metrics of S&P 500 companies to identify sector-wise trends, market leaders, valuation patterns, and investment insights.

The project follows a complete Data Analytics workflow using Python (Pandas) for data cleaning and exploratory analysis, MySQL for business-focused querying, and Power BI for interactive dashboard development.

🎯 Business Problem

Financial analysts and investors often need to answer questions such as:

Which sectors dominate the market in terms of market capitalization?

Which sectors have the highest valuation (P/E Ratio)?

Which companies are market leaders within their sectors?

How are companies distributed across market capitalization categories?

What insights can support investment and equity research decisions?

This project aims to transform raw financial data into actionable business insights through data analytics and visualization.

📂 Dataset Information
Dataset

S&P 500 Financial Analysis Dataset

Original Dataset
505 records
10 financial attributes
Key Features
Column
Symbol
Name
Sector
Price
Price/Earnings
Dividend Yield
Earnings/Share
Market Cap
EBITDA
Price/Book
🧹 Data Cleaning Process (Python - Pandas)
Steps Performed
Imported dataset using Pandas
Checked data structure using df.info()
Identified missing values
Removed records containing missing values
Validated data types
Generated descriptive statistics
Performed sector-level aggregations
Result
Original Records: 505
Final Records: 495
Removed Records: 10
📈 Exploratory Data Analysis (EDA)
Analysis Performed
Sector-wise company distribution
Sector-wise market capitalization
Average P/E ratio by sector
Top companies by Market Cap
Top companies by EBITDA
Correlation analysis between financial metrics
Identification of negative earnings and EBITDA values
Correlation Analysis

A correlation matrix was created to understand relationships among:

Market Cap
EBITDA
Earnings Per Share
Dividend Yield
P/E Ratio
Price/Book
🗄 SQL Analysis (MySQL)

Business-focused SQL queries were used to extract meaningful insights.

Concepts Used
GROUP BY
HAVING
CASE Statements
Subqueries
Correlated Subqueries
CTEs
Window Functions
ROW_NUMBER()
DENSE_RANK()
NTILE()
Example Business Questions
Which sectors have the highest market capitalization?
Which sectors have premium valuations?
Which companies are larger than the average company?
Which companies have P/E ratios above their sector average?
Which company leads each sector by market capitalization?
📊 Power BI Dashboard

The final dashboard was developed in Power BI to provide an interactive view of the financial data.

Dashboard Features

✔ Sector Filter

✔ Company Size Filter

✔ Market Cap Range Filter

✔ Dynamic KPI Cards

✔ Sector-wise Analysis

✔ Market Capitalization Analysis

✔ Company Size Distribution

✔ Top Companies Ranking

✔ Key Business Insights Panel

📸 Dashboard Preview



![Dashboard](Dashboard_Image.png)



💡 Key Insights
Sector Analysis
Consumer Discretionary contains the highest number of companies (82).
Information Technology has the highest average P/E ratio (~37).
Information Technology dominates total market capitalization.
Company Analysis
Apple Inc. is the largest company by market capitalization.
Technology companies contribute significantly to overall market value.
Large-cap companies account for the majority of market capitalization.
Investment Insights
Technology sector exhibits premium valuation.
Market capitalization is strongly correlated with EBITDA.
Dividend Yield shows weak correlation with market value.
🛠 Tools & Technologies
Programming
Python
Libraries
Pandas
NumPy
Matplotlib
Seaborn
Database
MySQL
Visualization
Power BI
Version Control
Git
GitHub
🔄 Project Workflow
Data Collection
       ↓
Data Cleaning (Pandas)
       ↓
Exploratory Data Analysis
       ↓
SQL Business Queries
       ↓
Power BI Dashboard
       ↓
Business Insights & Recommendations
🚀 Business Recommendations
Technology sector should be monitored closely due to its dominant market capitalization and premium valuation.
Companies with P/E ratios significantly above sector averages may require further valuation analysis.
Investors seeking stability may focus on large-cap companies with strong EBITDA performance.
Sector diversification can reduce concentration risk in investment portfolios.
👤 Author

Payal Dadhwal

Aspiring Data Analyst | Finance Analytics Enthusiast

SQL • Python • Power BI • Excel • Data Visualization
