-- Aaleeyah Ivy --
DROP DATABASE IF EXISTS my_coffee_shop;

CREATE DATABASE my_coffee_shop;
USE my_coffee_shop;

CREATE TABLE customers (
customer_id			INT 		PRIMARY KEY			AUTO_INCREMENT,
customer_name		VARCHAR(60)	NOT NULL,
customer_email		VARCHAR(255)NOT NULL 			UNIQUE,
customer_phone		VARCHAR(12) NOT NULL

);
CREATE TABLE product_types (
product_type_number INT 		PRIMARY KEY 		AUTO_INCREMENT,
product_type_description 		VARCHAR(60)
);
CREATE TABLE products (
product_id			INT 		PRIMARY KEY			AUTO_INCREMENT,
product_type_number INT 		NOT NULL,	
product_name		VARCHAR(60) NOT NULL,
product_description	VARCHAR(60) DEFAULT NULL,
product_price 		DECIMAL(10,2) 		NOT NULL,
CONSTRAINT products_fk_types
	FOREIGN KEY (product_type_number)
	REFERENCES product_types (product_type_number)
);
CREATE TABLE orders (
order_id 			INT 		PRIMARY KEY  			AUTO_INCREMENT,	
product_id			INT			NOT NULL,
customer_id			INT			NOT NULL,
order_cost			DECIMAL(10,2)					NOT NULL,
date_paid			DATETIME	NOT NULL,
CONSTRAINT orders_fk_products
	FOREIGN KEY (product_id)
	REFERENCES products (product_id),
CONSTRAINT orders_fk_customer
	FOREIGN KEY (customer_id)
	REFERENCES customers (customer_id)
);
CREATE TABLE suppliers (
supplier_id 		INT 		PRIMARY KEY			AUTO_INCREMENT,
supplier_name		VARCHAR(60)	NOT NULL,
supplier_address 	VARCHAR(255)NOT NULL,
ship_date 			DATETIME						DEFAULT NULL,
order_cost 			INT			NOT NULL
);
INSERT INTO customers(customer_id, customer_name, customer_email, customer_phone) VALUES 
(1, 'Abagail Peach', 'peach@yahoo.com', 131-111-1661),
(2, 'Ryan Peach', 'peach12@yahoo.com', 141-122-1171),
(3, 'Armin Arlert', 'armincol@yahoo.com', 111-331-1311),
(4, 'Eren Yeager', 'ereneatstitans@yahoo.com', 111-101-1121),
(5, 'Mikasa Ackerman', 'protecteren11@yahoo.com', 111-191-1101),
(6, 'Levi Ackerman', 'ihatekennylevi@yahoo.com', 441-111-0011),
(7, 'Erwin Smith', 'dieinbattle@yahoo.com', 111-641-1111),
(8, 'Annie Leonhart', 'femaletitan101@yahoo.com', 111-441-1811),
(9, 'Historia Reiss', 'ymir16@yahoo.com', 117-561-1111),
(10, 'Hanji Zoe', 'experimentalgal55@yahoo.com', 115-221-4411);

INSERT INTO product_types (product_type_number, product_type_description) VALUES
(001, 'toasted bagel'),
(002, 'raisin bagel with cream cheese'),
(003, 'chocolate chip cookie and water'),
(004, 'pumpkin spice latte'),
(005, 'pumpkin spice bagel and latte'),
(006, 'plain bagel'),
(007, 'Lemon cake'),
(008, 'blt sandwich with sprite'),
(009, 'rosehip tea'),
(010, 'hot coffee');

INSERT INTO products (product_id, product_type_number, product_name, product_price) VALUES
(01, 001, 'snack', 3.99),
(02, 002, 'snack', 4.99),
(03, 003, 'snack', 2.99),
(04, 004, 'drink', 3.99),
(05, 005, 'both', 7.99),
(06, 006, 'snack', 3.99),
(07, 007, 'snack', 2.99),
(08, 008, 'both', 12.50),
(09, 009, 'drink', 2.00),
(10, 010, 'drink', 2.00);

INSERT INTO orders(order_id, product_id, customer_id, order_cost, date_paid) VALUES
(1, 01, 1, 4.24, '2021-10-16'),
(2, 02, 2, 4.24, '2021-10-16'),
(3, 03, 3, 3.24, '2021-09-04'),
(4, 04, 4, 4.24, '2021-11-06'),
(5, 05, 5, 7.24, '2021-02-16'),
(6, 06, 6, 4.24, '2021-10-18'),
(7, 07, 7, 3.24, '2021-10-13'),
(8, 08, 8, 12.75, '2021-10-15'),
(9, 09, 9, 2.25, '2021-10-17'),
(10, 10, 10, 2.25, '2021-10-22');

INSERT INTO suppliers (supplier_id, supplier_name, supplier_address, ship_date, order_cost) VALUES
(1, 'JoeCupp Inc.', '9111 Teal Rd.', '2021-06-12', 209.91),
(2, 'BobaSupplies Co.', '171 Cobalt Rd.', '2021-06-12', 119.00),
(3, 'BulkCupp', '111 Fuschia Ln.', '2021-06-11', 104.55),
(4, 'Coral Tiles', '221 Blue Rd.', '2021-06-15', 55.99),
(5, 'Stevia Inc.', '234 Gray Rd.', '2021-06-13', 35.25),
(6, 'Sweetner Ceas', '3241 Pearl Rd.', '2021-06-12', 10.25),
(7, 'JoeCupp Inc.', '11133 Albany Rd.', '2021-03-11', 40.95),
(8, 'BobaSupplies Co.', '2334 Colt Rd.', '2021-02-10', 50.99),
(9, 'Doordash', '332 Steel Rd.', '2021-04-10', 25.02),
(10, 'BreadDough', '542 Main Rd.', '2021-02-10', 43.02);