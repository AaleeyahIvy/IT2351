-- Aaleeyah Ivy --
DELIMITER //
ALTER TABLE products 	-- add check
ADD CHECK (list_price = NEW.list_price);

DROP TRIGGER IF EXISTS products_before_update;

CREATE TRIGGER products_before_update
	BEFORE UPDATE ON products
    FOR EACH ROW
BEGIN
	DECLARE unit_price DECIMAL(9,2);
    
    SELECT sum(list_price)
    INTO unit_price 
    FROM products
    WHERE product_id = NEW.product_id;
    
    IF unit_price >= 1200 THEN  -- create error message if the list_price is out of bounds
		SIGNAL SQLSTATE '22003'
			SET MESSAGE_TEXT = 'Unit price is greater than 1200';
	ELSEIF unit_price <= 600 THEN  -- create error message if the list_price is out of bounds
		SIGNAL SQLSTATE '22003'
			SET MESSAGE_TEXT = 'Unit price is lesser than 600';
END IF;
END//

update products
SET list_price = 1999
WHERE product_id = 2