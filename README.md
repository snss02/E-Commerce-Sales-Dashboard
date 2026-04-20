# E-Commerce-Sales-Dashboard

## Problem Statement
Analyze 100K+ e-commerce transactions to uncover revenue drivers, customer behavior patterns, and growth opportunities for strategic decision-making.
Skills: SQL, Python, Power BI, Data Visualization, Problem Solving.

## Technical Approach
Raw Data (Kaggle) → Python ETL → SQL Aggregations → Power BI Dashboard
 
## Installation
Prerequisites: Google Colab, MySQL Workbench, Power BI Desktop.
Dataset: Download Brazilian E-Commerce Public Dataset from Kaggle.
Libraries: Pandas, NumPy (pre-installed in Colab).
Usage
ETL: Run ECommerce_ETL_Cleaning.ipynb in Colab to clean and export data.
SQL: Import data into MySQL, run aggregations.sql for KPIs/trends.
Dashboard: Open ECommerce_Sales_Dashboard.pbix in Power BI, import CSVs, and interact.
Dataset
Source: Kaggle (Brazilian E-Commerce Public Dataset).

## ETL Pipeline (Python/Colab):

Merged 5 datasets (99K orders + 112K items → 108K cleaned records)
Feature engineering: Revenue calculation, data type conversions
Handled missing values, duplicates, and date parsing

Size: ~99K orders, ~112K items.
Features: Orders, items, customers, products.

## SQL Aggregations (MySQL):
KPIs: Total Revenue, AOV, Orders
Trends: Monthly revenue analysis
Segmentation: RFM (Recency, Frequency, Monetary)
Drivers: Top product categories



## Power BI Dashboard Features:

Interactive KPIs: Revenue, orders, AOV cards
Revenue Trends: Line chart with dual-axis (revenue + orders)
Customer Segmentation: RFM scatter plot (Champions vs At-Risk)
Revenue Drivers: Top 10 categories bar chart
Slicers: Date range, category, region filters


## Results
KPIs: Revenue ~15M
Orders~95K
Unique Customers~92K
AOV~140.
Trends: Q4 peaks.
Segmentation: Top 10% customers.
Drivers: Top categories (e.g., electronics).

## Business Impact
Identified: Top 10% high-value customers (40% of revenue)
Revenue Drivers: Electronics/home goods = 50% of sales
Trends: Q4 seasonal peaks for inventory planning
Actionable: Target VIP customers with loyalty programs

Conclusion
Enables targeting high-value customers and optimizing revenue drivers. ETL/SQL ensures accuracy; Power BI provides interactivity.

Skills: Python (Pandas, NumPy), SQL (MySQL), Power BI (DAX, relationships), RFM Analysis, ETL
License
MIT License.

Author
Sneha
GitHub:https://github.com/snss02
