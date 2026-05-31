DROP TABLE IF EXISTS products;
CREATE TABLE products(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(50),
	category VARCHAR(50),
	price NUMERIC(10,2),
	quantity INT,
	added_date DATE,
	discount_rate NUMERIC(5,2)	
);
INSERT INTO products(product_name, category, price, quantity, added_date, discount_rate)VALUES
('Laptop', 'Electronics',75000.50,10,'2024-01-15',10.00),
('Smartphone','Electronics',45000.99, 25, '2024-02-20',5.00),
('Headphone','Accessories',1500.75,50,'2024-03-05',15.00),
('Office Chair', 'Furniture', 5500.00, 20,'2023-12-01',20.00),
('Desk', 'Furniture', 8000.00,15,'2023-11-20',12.00),
('Monitor','Electronics', 12000.00,8,'2024-01-10',8.00),
('Printer', 'Electronics',9500.50,5,'2023-03-18',10.00),
('Mouse','AcceSsories',750.00,40,'2024-03-18', 10.00),
('Keyboard', 'Accesories',1250.00,35,'2024-03-18',10.00),
('Tablet','Electronics',30000,12,'2024-02-28',5.00);
SELECT * FROM products;

-- Get all the categories in uppercase
SELECT UPPER(category) AS Category_Capital
FROM products;

-- Get all the categories in lowercase
SELECT LOWER(category) AS Category_lower
FROM products;

-- Join product_name and category text with hyphen
SELECT CONCAT(product_name,'-', category) AS product_details
FROM products;

-- Extract the first 5 characters from product_name
SELECT SUBSTRING(product_name,1,5) AS short_name
FROM products;

-- Count length
SELECT LENGTH(product_name) AS COUNT_OF_CHAR
FROM products;

SELECT product_name, LENGTH(product_name) AS COUNT_OF_CHAR
FROM products;

-- Remove leading and tariling spaces from string
SELECT TRIM(' Monitor  ')AS Trimmed_Text;

SELECT LENGTH(' Monitor  ')AS Trimmed_Text;

-- Replace the word "phone" with "device" in product names
SELECT REPLACE(product_name,'phone', 'device') AS updated
FROM products;

-- Get the first 3 characters from category
SELECT LEFT(category, 3) AS Category_Captial
FROM products;