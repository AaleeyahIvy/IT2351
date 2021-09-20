-- Show count of products & the maximum price for products --
-- Aaleeyah Ivy 9/19/2021 --
SELECT count(*) AS "Num of Products", max(item_price) AS "Max Price"
FROM order_items
