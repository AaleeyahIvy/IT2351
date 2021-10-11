DELIMITER //
-- Aaleeyah Ivy --
DROP PROCEDURE IF EXISTS insertcategory;
CREATE PROCEDURE insertcategory
(
	IN category_id_param INT,
    IN category_name_param VARCHAR(50)
) 
BEGIN 	
	DECLARE duplicate_entry_for_key TINYINT DEFAULT FALSE;
    
    DECLARE CONTINUE HANDLER FOR 1062
		SET duplicate_entry_for_key = TRUE;
        
	INSERT INTO categories 
		(category_id, category_name)
VALUES (category_id_param, category_name_param);
    
    IF duplicate_entry_for_key = TRUE THEN 
		SELECT 'Row was not inserted -  duplicate key found.' AS Message;
	ELSE 
		SELECT '1 row was inserted.' AS Message;
	END IF;
    END//

Call insertcategory(5, 'Strings');