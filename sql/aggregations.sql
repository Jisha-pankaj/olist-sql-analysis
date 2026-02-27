-- Total orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Orders by status
SELECT order_status, COUNT(*) AS total
FROM orders
GROUP BY order_status;

-- Average payment value
SELECT AVG(payment_value) AS avg_payment
FROM payments;