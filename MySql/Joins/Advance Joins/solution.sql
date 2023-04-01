CREATE DATABASE retail_db;
USE retail_db;

SELECT * FROM categories;
SELECT * FROM customers;
SELECT * FROM departments;
SELECT * FROM order_items;
SELECT * FROM orders;
SELECT * FROM products;


-- Exercise 1 - Customer order count
-- Get order count per customer for the month of 2014 January.
-- Tables - orders and customers
-- Data should be sorted in descending order by count and ascending order by customer id.
-- Output should contain customer_id, customer_first_name, customer_last_name and customer_order_count.


SELECT c.customer_id,c.customer_fname,c.customer_lname,COUNT(o.order_id) AS customer_order_count
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.order_customer_id
WHERE YEAR(o.order_date)=2014 AND MONTH(o.order_date)=1
GROUP BY c.customer_id,c.customer_fname,c.customer_lname
ORDER BY customer_order_count DESC,c.customer_id ASC;


-- Exercise 2 - Dormant Customers
-- Get the customer details who have not placed any order for the month of 2014 January.
-- Tables - orders and customers
-- Data should be sorted in ascending order by customer_id
-- Output should contain all the fields from customers


SELECT c.*
FROM customers c
LEFT JOIN orders o 
ON c.customer_id = o.order_customer_id AND YEAR(o.order_date) = 2014 AND MONTH(o.order_date) = 1
WHERE o.order_id IS NULL
ORDER BY c.customer_id ASC;


SELECT c.customer_id, c.customer_fname, c.customer_lname, 
COALESCE(SUM(oi.order_item_quantity * oi.order_item_product_price), 0) AS customer_revenue
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.order_customer_id 
AND o.order_status IN ('COMPLETE', 'CLOSED') 
AND YEAR(o.order_date) = 2014 
AND MONTH(o.order_date) = 1
LEFT JOIN order_items oi ON o.order_id = oi.order_item_id
GROUP BY  c.customer_id, c.customer_fname, c.customer_lname
ORDER BY customer_revenue DESC, c.customer_id ASC;
    





