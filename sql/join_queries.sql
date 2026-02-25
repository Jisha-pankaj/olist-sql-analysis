-- 1. Orders with customer details
SELECT
o.order_id,
o.order_status,
o.order_purchase_timestamp,
c.customer_id,
c.customer_city,
c.customer.state
FROM order o
JOIN customers c
ON o.customer_id = c.customer_id;

-- 2.  Orders with payment details
SELECT
o.order_id,
o.order_status,
p.payment_type,
p.payment_value
FROM order o
JOIN payments p
ON o.order_id = p.order_id;

-- 3.  Orders with order_items details
SELECT
    o.order_id,
    o.order_purchase_timestamp,
    oi.order_item_id,
    oi.product_id,
    oi.price,
    oi.freight_value
FROM orders o
JOIN order_items oi
ON o.order_id = oi.order_id;

-- 4. Full order overview (orders + order_items + customers + payments)
SELECT
    o.order_id,
    c.customer_city,
    c.customer_state,
    oi.order_item_id,
    oi.price,
    oi.freight_value,
    p.payment_type,
    p.payment_value
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
JOIN payments p
ON o.order_id = p.order_id;
