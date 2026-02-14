CREATE DATABASE ecommerce_sales;
USE ecommerce_sales;
SELECT COUNT(*) FROM sales_data;  -- Should show ~108,637 rows
DESCRIBE sales_data;  -- Lists columns and their types (e.g., order_id VARCHAR(255))
SELECT * FROM sales_data LIMIT 5;  -- Preview data
USE ecommerce_sales;
SELECT 
    SUM(revenue) AS total_revenue,
    AVG(revenue) AS avg_order_value,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_unique_id) AS unique_customers
FROM sales_data;
DESCRIBE sales_data;
SELECT 
    DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS month,
    SUM(revenue) AS monthly_revenue,
    COUNT(order_id) AS monthly_orders
FROM sales_data
GROUP BY month
ORDER BY month;
SELECT 
    customer_unique_id,
    SUM(revenue) AS total_spent,
    COUNT(order_id) AS order_count,
    AVG(revenue) AS avg_spent_per_order
FROM sales_data
GROUP BY customer_unique_id
ORDER BY total_spent DESC
LIMIT 1000;  # Top 1000 high-value customers
SELECT 
    product_category_name,product_category_name_english,
    SUM(revenue) AS category_revenue,
    COUNT(order_id) AS category_orders
FROM sales_data
GROUP BY product_category_name,product_category_name_english
ORDER BY category_revenue DESC;