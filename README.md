# 📊 Superstore Sales Analytics & Forecasting

> An end-to-end data analytics project analyzing 9,994 Superstore transactions to uncover sales and profitability drivers, identify underperforming products and regions, and forecast future sales using ARIMA time-series forecasting.

---

## 📌 Project Overview

This project presents a complete end-to-end data analytics workflow using the Superstore dataset.

The objective was to transform raw transactional data into actionable business insights by combining:

**Python → EDA → PostgreSQL SQL → Power BI → Machine Learning → Business Recommendations**

The project focuses on understanding revenue performance, profitability, customer segments, regional trends, product performance, and future sales expectations.

---

## 🎯 Business Problem

The management team wants to understand:

* Which categories and products are driving revenue?
* Which products and regions are reducing profitability?
* Which customer segments contribute the most sales?
* How does discounting affect profit?
* What are the future sales expectations?

This project addresses these questions through data analysis, business intelligence, and time-series forecasting.

---

## 📊 Dataset Overview

| Metric          |      Value |
| --------------- | ---------: |
| Total Records   |      9,994 |
| Total Columns   |         21 |
| Analysis Period |  2014–2017 |
| Dataset         | Superstore |
| Duplicate Rows  |          0 |
| Missing Values  |          0 |

### Key Dataset Fields

* Order Date
* Ship Date
* Ship Mode
* Customer ID
* Customer Name
* Segment
* Country
* City
* State
* Region
* Product ID
* Category
* Sub-Category
* Sales
* Quantity
* Discount
* Profit

---

## 🛠️ Tools & Technologies

### Python

* Pandas
* NumPy
* Matplotlib
* Seaborn

### SQL

* PostgreSQL
* Aggregations
* GROUP BY
* CASE Statements
* CTEs
* Window Functions
* Ranking
* LAG Function
* Month-over-Month Growth Analysis

### Business Intelligence

* Microsoft Power BI
* DAX
* KPI Cards
* Interactive Slicers
* Data Visualization

### Machine Learning

* Scikit-learn
* Statsmodels
* Linear Regression
* ARIMA Time-Series Forecasting

---

## 🔄 Project Workflow

```text
Raw Superstore Data
        ↓
Data Quality Assessment
        ↓
Data Cleaning & Preparation
        ↓
Exploratory Data Analysis
        ↓
SQL Business Analysis
        ↓
Power BI Executive Dashboard
        ↓
Machine Learning Forecasting
        ↓
Business Recommendations
        ↓
Executive Report
```

---

## 📈 Key Business KPIs

| KPI                 |   Result |
| ------------------- | -------: |
| Total Sales         |   $2.29M |
| Total Profit        | $286.40K |
| Total Orders        |    5,009 |
| Average Order Value |  $458.61 |
| Profit Margin       |   12.47% |

---

## 🔍 Exploratory Data Analysis

### Category Performance

**Technology** was the strongest category in terms of both sales and profit.

| Category        |    Sales |   Profit |
| --------------- | -------: | -------: |
| Technology      | $836.15K | $145.45K |
| Office Supplies | $719.05K | $122.49K |
| Furniture       | $742.00K |  $18.45K |

### Key Insight

Furniture generated significant sales but comparatively low profit, indicating potential pricing, discounting, or product-mix challenges.

---

## 🌎 Regional Performance

| Region  |    Sales |   Profit |
| ------- | -------: | -------: |
| West    | $725.46K | $108.42K |
| East    | $678.78K |  $91.52K |
| Central | $501.24K |  $39.71K |
| South   | $391.72K |  $46.75K |

### Key Insight

The **West region** was the strongest overall contributor in both sales and profit.

---

## ⚠️ State-Level Profitability Insight

### High-Performing States

* California
* New York
* Washington
* Michigan
* Virginia

### Profitability Challenges

* Texas
* Pennsylvania
* Illinois
* Ohio
* Florida

### Important Business Finding

**Texas generated strong sales but reported a significant loss of approximately $25.7K.**

This indicates that revenue growth alone does not guarantee profitability.

---

## 🏆 Top Profitable Sub-Categories

1. Copiers
2. Phones
3. Accessories

### Loss-Making Sub-Categories

1. Tables
2. Bookcases
3. Supplies

These products require further analysis of:

* Pricing
* Discounts
* Shipping costs
* Product-level margins
* Operational expenses

---

## 👥 Customer Segment Analysis

The **Consumer segment** generated the highest overall sales and profit contribution.

This suggests that the business should continue focusing on consumer demand while evaluating the profitability and growth potential of Corporate and Home Office segments.

---

## 🚚 Shipping Mode Analysis

**Standard Class** generated the largest overall sales and profit contribution.

This indicates that the majority of customers prefer economical shipping options over faster delivery alternatives.

---

## 📉 Discount & Profit Analysis

Correlation analysis identified a negative relationship between discount and profit:

```text
Discount ↔ Profit Correlation = -0.219
```

### Business Interpretation

Higher discounting is generally associated with lower profitability.

However, correlation does not prove causation. Further analysis should evaluate discount impact by:

* Category
* Sub-Category
* Region
* Product
* Customer Segment

---

# 🗄️ SQL Business Analysis

PostgreSQL was used to perform business-focused analysis.

### SQL Techniques Used

* Aggregations
* GROUP BY
* ORDER BY
* CASE Statements
* Common Table Expressions (CTEs)
* Window Functions
* RANK()
* LAG()
* Month-over-Month Growth Analysis

### Example Business Questions Answered

* Which sub-categories generate the highest profit?
* Which products are loss-making?
* Which customer segment generates the most revenue?
* Which shipping mode contributes the most sales?
* Which category has the highest sales?
* How is monthly sales changing over time?

---

# 📊 Power BI Executive Dashboard

The Power BI dashboard was designed to provide management with a high-level overview of business performance.

### Dashboard Features

* Total Sales KPI
* Total Profit KPI
* Total Orders KPI
* Profit Margin KPI
* Sales Trend Analysis
* Category Performance
* Regional Performance
* State-Level Sales Analysis
* Profitability Analysis
* Sub-Category Performance
* Business Insight Summary

### Dashboard Preview

![Superstore Dashboard](images/dashboard.png)

---

# 🤖 Machine Learning: Sales Forecasting

## Business Objective

The management team wants to estimate future monthly sales to support:

* Inventory Planning
* Budget Allocation
* Sales Target Setting
* Business Planning

---

## Model 1: Linear Regression

A simple Linear Regression model was initially tested using month number as the primary predictor.

### Result

```text
R² Score = -1.63
```

### Interpretation

The model performed poorly because a simple linear relationship could not capture:

* Seasonal patterns
* Monthly fluctuations
* Non-linear sales behavior

This demonstrated the importance of selecting a model appropriate for time-series data.

---

## Model 2: ARIMA(1,1,1)

An ARIMA model was implemented to model historical monthly sales patterns.

### Model Diagnostics

| Metric                     |   Value |
| -------------------------- | ------: |
| AIC                        | 1085.79 |
| Ljung-Box p-value          |    0.60 |
| Jarque-Bera p-value        |    0.59 |
| Heteroskedasticity p-value |    0.96 |

The residual diagnostics indicated no significant autocorrelation and generally stable residual behavior.

---

## 📈 Six-Month Sales Forecast

| Month         | Forecast Sales |
| ------------- | -------------: |
| January 2018  |        $75.26K |
| February 2018 |        $73.31K |
| March 2018    |        $72.86K |
| April 2018    |        $72.76K |
| May 2018      |        $72.74K |
| June 2018     |        $72.73K |

### Forecast Insight

The model suggests that monthly sales may stabilize in the approximate range of **$72K–$75K** over the forecast horizon.

![Sales Forecast](images/forecast.png)

---

# 💡 Strategic Business Recommendations

### 1. Prioritize Technology

Technology demonstrated the strongest combination of revenue and profitability.

**Recommendation:** Maintain strong inventory availability and marketing focus in high-performing Technology products.

---

### 2. Review Loss-Making Products

Tables and Bookcases generated negative profitability.

**Recommendation:** Conduct a detailed product-level margin review covering pricing, discounts, shipping costs, and operational expenses.

---

### 3. Investigate Texas Profitability

Texas generated strong sales but negative profit.

**Recommendation:** Analyze state-level discounting, product mix, shipping costs, and customer acquisition costs.

---

### 4. Optimize Discount Strategy

The negative relationship between discount and profit indicates potential margin erosion.

**Recommendation:** Develop category-specific discount thresholds rather than applying broad discounting policies.

---

### 5. Use Forecasting for Planning

The ARIMA forecast provides a data-driven estimate of future sales.

**Recommendation:** Use forecasts as an input for inventory planning, budget allocation, and sales target setting.

---

# 📁 Project Structure

```text
superstore-sales-analytics-forecasting/
│
├── data/
│   └── superstore.csv
│
├── notebooks/
│   └── sales_forecasting.ipynb
│
├── sql/
│   └── business_analysis.sql
│
├── powerbi/
│   └── superstore_dashboard.pbix
│
├── report/
│   └── Executive_Retail_Analytics_Report.pdf
│
├── images/
│   ├── dashboard.png
│   └── forecast.png
│
└── README.md
```

---

# 📚 Key Learning Outcomes

Through this project, I developed practical experience in:

* Data Cleaning
* Exploratory Data Analysis
* Business KPI Analysis
* SQL Business Intelligence
* PostgreSQL
* Power BI Dashboard Development
* DAX
* Time-Series Analysis
* Machine Learning Model Evaluation
* ARIMA Forecasting
* Business Storytelling
* Executive Reporting

---

# 🚀 Future Improvements

Future versions of this project could include:

* SARIMA or Prophet-based seasonal forecasting
* Advanced product-level forecasting
* Customer segmentation using RFM analysis
* Customer lifetime value analysis
* Automated Power BI data refresh
* Advanced machine learning models
* Profit prediction at product level

---

# 📄 Executive Report

A detailed executive business report covering the complete analysis, dashboard insights, forecasting results, and strategic recommendations is available in the `report/` folder.

---

## 👤 Author

### Ujjal Mondal

**Aspiring Data Analyst**

Interested in solving business problems using:

```text
Python | SQL | Power BI | Machine Learning
```

---

⭐ If you found this project interesting, feel free to explore the analysis, SQL queries, dashboard, and forecasting workflow.
