-- Day 2: Basic SQL Queries for Olist Project

-- 1. Count total orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- 2. View sample orders
SELECT *
FROM orders
LIMIT 10;

-- 3. Count total customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 4. Orders by status
SELECT order_status, COUNT(*) AS count
FROM orders
GROUP BY order_status;

-- 5. Orders per customer (top 10)
SELECT customer_id, COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
ORDER BY order_count DESC
LIMIT 10;

-- 6. Average order item price
SELECT AVG(price) AS avg_price
FROM order_items;

-- 7. Total revenue
SELECT SUM(price) AS total_revenue
FROM order_items;

-- 8. Payment type distribution
SELECT payment_type, COUNT(*) AS count
FROM payments
GROUP BY payment_type;