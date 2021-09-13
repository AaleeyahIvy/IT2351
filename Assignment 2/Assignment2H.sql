SELECT DISTINCT title, artist, unit_price, order_qty,
ROUND(((unit_price * order_qty)*1.08), 2) AS 'Total With Tax'
From items AS it
JOIN order_details ord
ON ord.item_id = it.item_id