-- Selecting the dates and putting them in MM/DD/YY Format --
-- Aaleeyah Ivy 9/12/2021
SELECT DATE_FORMAT(shipped_date,'%M, %D, %Y') AS Shipped, DATE_FORMAT(order_date,'%M, %D, %Y') AS Ordered,
order_id, customer_id

FROM orders