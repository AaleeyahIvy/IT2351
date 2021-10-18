-- Aaleeyah Ivy -- 
SET GLOBAL event_scheduler = ON;

SHOW EVENTS FROM my_guitar_shop; -- Shows all events

DROP EVENT IF EXISTS every_month;
DELIMITER //
CREATE EVENT every_month -- event name
ON SCHEDULE AT NOW() + INTERVAL 1 MONTH -- when to execute
DO BEGIN
	INSERT INTO categories(category_id, category_name) -- Insert values 
    VALUES (1, 'TEST');
END//
