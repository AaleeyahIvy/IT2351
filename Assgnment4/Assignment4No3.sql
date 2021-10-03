-- Aaleeyah Ivy 10/2/2021 --
-- Show list price in different cast forms --
SELECT list_price, CAST(list_price AS SIGNED), FORMAT(list_price, 1), convert(list_price, SIGNED)
FROM products