-- Aaleeyah Ivy --
-- If you need to delete a customer from the customers table, 
-- You can create a trigger that deletes the customer where id, name or etc. or just delete the customer via id.
DELIMITER //
DELETE 
FROM customers
WHERE customer_id = 124;

DROP TRIGGER IF EXISTS customers_after_delete; 

CREATE TRIGGER customers_after_delete
	AFTER DELETE ON customers
    FOR EACH ROW
BEGIN	
	DELETE FROM customers
    WHERE customer_id = rand(customer_id);
END//
SELECT*FROM om.customers