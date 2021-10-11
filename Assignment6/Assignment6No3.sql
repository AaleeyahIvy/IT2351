-- Aaleeyah Ivy
-- 10/10/21
DELIMITER //
DROP FUNCTION IF EXISTS new_price;

CREATE FUNCTION new_price 
(
	item_id_param INT -- Parameter for item id
)
RETURNS DECIMAL(9,2) -- returns this decimal
DETERMINISTIC READS SQL DATA 
BEGIN
	DECLARE new_price_var DECIMAL(9,2);
    
    SELECT item_price - discount_amount
    INTO new_price_var
    FROM order_items
    WHERE item_id = item_id_param;
    
    RETURN new_price_var;
END//
SELECT item_price, discount_amount, new_price(item_id) AS New_Price -- returns price and shows the other columns
FROM order_items
WHERE item_id = 3; -- parameter for above