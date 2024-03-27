CREATE DATABASE beecrowd_2608;

USE beecrowd_2608;

CREATE TABLE products(
id INT PRIMARY KEY,
name varchar(50),
amount INT,
price FLOAT);

INSERT INTO products(id, name, amount, price)
VALUES
(1, 'Two-doors wardrobe', 100, 800),
(2, 'Dining table', 100, 560),
(3, 'Towel holder', 10000, 25.50),
(4, 'Computer desk', 350, 320.50),
(5, 'Chair', 3000, 210.64),
(6, 'Single bed', 750, 460);

SELECT MAX(price) AS price, MIN(price) AS price FROM products;
