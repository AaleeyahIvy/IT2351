SELECT * FROM my_guitar_shop.items_ordered;
CREATE VIEW items_ordered AS 
	SELECT product_name, item_price, quantity
FROM order_items oi
JOIN products p ON p.product_id = oi.product_id
