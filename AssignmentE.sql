-- Aaleeyah Ivy 9/7/2021 --
-- Selects from all customers with a customer number under 25 and that lives in Ohio --
SELECT * FROM customers 
WHERE customer_id < 25 AND customer_state = "OH"
