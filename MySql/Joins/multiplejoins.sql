USE retail_db;
SELECT * FROM orders LIMIT 10;

SELECT * FROM order_items LIMIT 10;

SELECT * FROM products LIMIT 10;

SELECT o.order_id,
    o.order_date,
    o.order_status,
    oi.order_item_subtotal
FROM orders o JOIN order_items oi
    ON o.order_id = oi.order_item_order_id
LIMIT 10;

-- Get daily order count
SELECT order_date, count(1)
FROM orders
GROUP BY order_date
ORDER BY order_date
LIMIT 10;


-- Get daily revenue based on product
SELECT o.order_date,
    oi.order_item_product_id,
    round(sum(oi.order_item_subtotal), 2) AS revenue
FROM orders o JOIN order_items oi
    ON o.order_id = oi.order_item_order_id
WHERE o.order_status IN ('COMPLETE', 'CLOSED')
GROUP BY o.order_date,
    oi.order_item_product_id
LIMIT 10;

-- Daily Product Revenue
SELECT o.order_date,
    oi.order_item_product_id,
    p.product_name,
    round(sum(oi.order_item_subtotal), 2) AS product_revenue
FROM orders o 
    JOIN order_items oi
        ON o.order_id = oi.order_item_order_id
    JOIN products p
        ON p.product_id = oi.order_item_product_id
WHERE o.order_status IN ('COMPLETE', 'CLOSED')
GROUP BY o.order_date,
    oi.order_item_product_id,
    p.product_name
ORDER BY o.order_date,
    product_revenue DESC
LIMIT 10;