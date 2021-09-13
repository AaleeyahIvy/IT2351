-- Select those that live in CA OR OH , concat first & last names --
-- Aaleeyah Ivy 9/12/2021 --
SELECT customer_first_name, customer_last_name, customer_state,
	CONCAT(customer_first_name, ', ', customer_last_name) 
		AS Customer_Name 
FROM customers WHERE customer_state = 'OH'OR customer_state = 'CA'