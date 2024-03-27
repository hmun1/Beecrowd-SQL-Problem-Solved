CREATE DATABASE beecrowd_2610;

use beecrowd_2610;

CREATE TABLE products(
id INT PRIMARY KEY,
name varchar(50),
amount INT,
price FLOAT
);

INSERT INTO products(id, name, amount, price)
VALUES
(1, 'Two-doors wardrobe', 100, 800),
(2, 'Dining table', 1000, 560),
(3, 'Towel holder', 10000, 25.50),
(4, 'Computer desk', 350, 320.50),
(5, 'Chair', 3000, 210.64),
(6, 'Single bed', 750, 460);

SELECT ROUND(AVG(price), 2) AS price
FROM products;
