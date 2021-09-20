-- Join categories & products table then display the types of products and the count & sum but eliminate nulls--
-- Aaleeyah Ivy 9/19/2021 --
SELECT  IF(GROUPING(category_name) = 1, 'Totals', category_name) AS "category_name", IF(GROUPING(product_name) = 1, 'Totals', product_name) AS "product_name", count(p.product_id) AS "Number of Products", sum(quantity) AS "Quantity"
FROM products p
INNER JOIN categories c
ON p.category_id = c.category_id
INNER JOIN order_items oi
ON p.product_id =  oi.product_id
GROUP BY category_name, product_name with rollup
ORDER BY count(p.product_id), sum(quantity) DESC
