# E-Commerce-Sales-Dashboard

## Problem Statement
Analyze 100K+ e-commerce transactions to uncover revenue drivers, customer behavior patterns, and growth opportunities for strategic decision-making.
Skills: SQL, Python, Power BI, Data Visualization, Problem Solving.

## Technical Approach
Raw Data (Kaggle) → Python ETL → SQL Aggregations → Power BI Dashboard
 
## Installation
1. Prerequisites: Google Colab, MySQL Workbench, Power BI Desktop.
2. Dataset: Download Brazilian E-Commerce Public Dataset from Kaggle.
3. Libraries: Pandas, NumPy (pre-installed in Colab).
**Usage**
1. ETL: Run ECommerce_ETL_Cleaning.ipynb in Colab to clean and export data.
2. SQL: Import data into MySQL, run aggregations.sql for KPIs/trends.
3. Dashboard: Open ECommerce_Sales_Dashboard.pbix in Power BI, import CSVs, and interact.
**Dataset**
4. Source: Kaggle (Brazilian E-Commerce Public Dataset).

## ETL Pipeline (Python/Colab):

1. Merged 5 datasets (99K orders + 112K items → 108K cleaned records)
2. Feature engineering: Revenue calculation, data type conversions
3. Handled missing values, duplicates, and date parsing

Size: ~99K orders, ~112K items.
Features: Orders, items, customers, products.

## SQL Aggregations (MySQL):
1. KPIs: Total Revenue, AOV, Orders
2. Trends: Monthly revenue analysis
3. Segmentation: RFM (Recency, Frequency, Monetary)
4. Drivers: Top product categories



## Power BI Dashboard Features:

1. Interactive KPIs: Revenue, orders, AOV cards
2. Revenue Trends: Line chart with dual-axis (revenue + orders)
3. Customer Segmentation: RFM scatter plot (Champions vs At-Risk)
4. Revenue Drivers: Top 10 categories bar chart
5. Slicers: Date range, category, region filters


## Results
1. KPIs: Revenue ~15M
2. Orders~95K
3. Unique Customers~92K
4. AOV~140.
5. Trends: Q4 peaks.
6. Segmentation: Top 10% customers.
7. Drivers: Top categories (e.g., electronics).

## Business Impact
1. Identified: Top 10% high-value customers (40% of revenue)
2. Revenue Drivers: Electronics/home goods = 50% of sales
3. Trends: Q4 seasonal peaks for inventory planning
4. Actionable: Target VIP customers with loyalty programs

Conclusion
Enables targeting high-value customers and optimizing revenue drivers. ETL/SQL ensures accuracy; Power BI provides interactivity.

Skills: Python (Pandas, NumPy), SQL (MySQL), Power BI (DAX, relationships), RFM Analysis, ETL
License
MIT License.

Author
Sneha
GitHub:https://github.com/snss02
