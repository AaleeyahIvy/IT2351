-- Join the three tables then get the data from each table and then display --
-- Aaleeyah Ivy 9/12/2021 --
SELECT 	CONCAT(customer_first_name ,', ', customer_last_name) AS customer, order_qty, artist, unit_price
FROM customers c
JOIN order_details od
JOIN items i
ON i.item_id = od.item_id