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

/* Case Function -  Categorizing Based on Conditions
We will categorize products into price ranges:

-- 1) Expensive if the price is greater than or equal to 50000
-- 2) Moderate if the price is between 10,000 and 49,999
-- 3) Affordable if the price is less than 10000
*/
SELECT product_name, price,
		CASE 
			WHEN price>=50000 THEN 'Expensive'
			WHEN price>=10000 AND price<=49999 THEN 'Moderate'
			ELSE 'Affordable'
		END AS price_category
FROM products;
