-- Join categories & products table then display the types of products and the count & sum --
-- Aaleeyah Ivy 9/19/2021 --
SELECT category_name, product_name, count(p.product_id) AS "Number of Products", sum(quantity) AS "Quantity"
FROM products p
INNER JOIN categories c
ON p.category_id = c.category_id
INNER JOIN order_items oi
ON p.product_id =  oi.product_id
GROUP BY category_name
ORDER BY count(p.product_id), sum(quantity);