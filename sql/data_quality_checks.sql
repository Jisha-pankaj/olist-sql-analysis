-- 1. Check for NULL values in orders table
SELECT 
    COUNT(*) AS total_orders,
    COUNT(order_id) AS non_null_order_id,
    COUNT(customer_id) AS non_null_customer_id
FROM orders;
-- 2. Find duplicate order_ids
SELECT order_id, COUNT(*)
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;
-- 3. Check orders without order_items
SELECT o.order_id
FROM orders o
LEFT JOIN order_items oi
ON o.order_id = oi.order_id
WHERE oi.order_id IS NULL;
-- 4. Check negative or zero payment values
SELECT *
FROM order_payments
WHERE payment_value <= 0;

-- 5. Check delivery delay
SELECT 
    order_id,
    order_delivered_customer_date,
    order_estimated_delivery_date
FROM orders
WHERE order_delivered_customer_date > order_estimated_delivery_date;