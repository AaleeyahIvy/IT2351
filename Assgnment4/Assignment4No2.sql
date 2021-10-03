-- Aaleeyah Ivy --
-- Use subqueries to answer following questions --
SELECT product_name, list_price
FROM products
WHERE list_price > (SELECT AVG(list_price) FROM Products);