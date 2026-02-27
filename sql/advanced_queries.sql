-- 1. Customers with more than 5 orders
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 5;

-- 2. Top 10 highest paying customers
SELECT customer_id, SUM(payment_value) AS total_spent
FROM payments
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- 3. Orders delivered late
SELECT order_id, order_estimated_delivery_date, order_delivered_customer_date
FROM orders
WHERE order_delivered_customer_date > order_estimated_delivery_date;

-- 4. Monthly order trend
SELECT 
    strftime('%Y-%m', order_purchase_timestamp) AS month,
    COUNT(*) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;