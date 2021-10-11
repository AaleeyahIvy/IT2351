USE my_guitar_shop;
-- Aaleeyah Ivy 10/10/21
DROP PROCEDURE IF EXISTS ProductCount; -- Drops if it exist and creates current script

DELIMITER //

CREATE PROCEDURE ProductCount() -- Create Procedure
BEGIN
	DECLARE product_count_var INT;
    SELECT count(quantity)
    INTO product_count_var 
    FROM order_items;
    
    IF product_count_var >= 18 THEN -- If else sequence to see if count is over 18 or not
		SELECT 'Product count is over 18' AS Message;
	ELSE
		SELECT 'Product count: ', product_count_var AS Message;
	END IF;
END//
CALL ProductCount();