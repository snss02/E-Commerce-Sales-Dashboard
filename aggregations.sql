CREATE DATABASE ecommerce_sales;
use ecommerce_sales;
SELECT ROUND(SUM(revenue),2) AS total_revenue,
        ROUND(AVG(revenue),2) AS avg_order_value,
      COUNT(DISTINCT order_id) AS total_orders,
      COUNT(DISTINCT customer_unique_id) AS unique_customers
 FROM cleaned_ecommerce_data;
 SELECT DATE_FORMAT(order_purchase_timestamp,'%Y-%m') AS month,
        ROUND(SUM(revenue),2) AS monthly_revenue,
       COUNT(DISTINCT order_id) AS monthly_orders
 FROM cleaned_ecommerce_data GROUP BY month ORDER BY month;
 SELECT product_category_name,product_category_name_english,
        ROUND(SUM(revenue),2) AS category_revenue,
        COUNT(DISTINCT order_id) AS category_orders
 FROM cleaned_ecommerce_data
 GROUP BY product_category_name,product_category_name_english
 ORDER BY category_revenue DESC LIMIT 10;
 SELECT customer_unique_id,
        ROUND(SUM(revenue),2) AS lifetime_value,
        COUNT(DISTINCT order_id) AS order_count,
        ROUND(AVG(revenue),2) AS avg_order_value
 FROM cleaned_ecommerce_data
 GROUP BY customer_unique_id
 ORDER BY lifetime_value DESC LIMIT 1000;
 
 SELECT 
    customer_unique_id,
    SUM(revenue) AS total_spent,
    COUNT(order_id) AS order_count,
    AVG(revenue) AS avg_spent_per_order
FROM cleaned_ecommerce_data
GROUP BY customer_unique_id
ORDER BY total_spent DESC
LIMIT 1000; 

-- ── Query 3: What % of revenue do top 10% customers drive? ─
WITH customer_ltv AS (
    SELECT
        customer_unique_id,
        ROUND(SUM(revenue), 2) AS lifetime_value
    FROM cleaned_ecommerce_data
    GROUP BY customer_unique_id
),
ranked AS (
    SELECT *,
        NTILE(10) OVER (ORDER BY lifetime_value DESC) AS decile
    FROM customer_ltv
)
SELECT
    decile,
    COUNT(*)                        AS customer_count,
    ROUND(SUM(lifetime_value), 2)   AS segment_revenue,
    ROUND(SUM(lifetime_value) /
        (SELECT SUM(lifetime_value) FROM customer_ltv) * 100, 2) AS revenue_pct
FROM ranked
GROUP BY decile
ORDER BY decile;