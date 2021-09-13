-- Concat the customer name then show the items id and order qty --
-- Aaleeyah Ivy 9/12/2021 --
SELECT 	CONCAT(customer_first_name ,', ', customer_last_name) AS customer, item_id, order_qty
FROM customers
JOIN orders
JOIN order_details
	ON orders.customer_id = customers.customer_id
	ORDER BY customer_last_name , order_qty