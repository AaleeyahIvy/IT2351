-- Join the three tables then get the data from each table and then display --
-- Aaleeyah Ivy 9/12/2021 --
SELECT 	CONCAT(customer_first_name ,', ', customer_last_name) AS customer, unit_price, unit_price * order_qty AS Total, shipped_date
FROM customers 
JOIN orders 
JOIN items
JOIN order_details
	ON customers.customer_id = orders.customer_id
    WHERE shipped_date IS null
    

