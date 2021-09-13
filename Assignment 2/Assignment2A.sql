-- Show price, artist, title but only prices between 14-17 --
-- Aaleeyah Ivy 9/12/2021 --
SELECT unit_price, artist, title FROM items
WHERE unit_price BETWEEN 14 AND 17
ORDER BY unit_price, title 
