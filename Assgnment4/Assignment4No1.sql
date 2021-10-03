-- Aaleeyah Ivy 10/2/2021 --
-- Replace Join with a subquery --
SELECT category_name
FROM categories 
WHERE category_id IN 
	(SELECT DISTINCT category_id
    FROM products)
    