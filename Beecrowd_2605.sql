CREATE DATABASE beecrowd_2605;

USE beecrowd_2605;

CREATE TABLE providers (
id INT PRIMARY KEY,
name VARCHAR(50),
street VARCHAR(50),
city VARCHAR(50),
state CHAR(50)
);

CREATE TABLE categories (
id INT PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    amount INT,
    price FLOAT,
    id_provider INT,
    id_category INT,
    FOREIGN KEY (id_provider) REFERENCES providers(id),
    FOREIGN KEY (id_category) REFERENCES categories(id)
);

INSERT INTO providers(id, name, street, city, state)
VALUES
(1, 'Henrique', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
(2, 'Marcelo Augusto', 'Rua Imigrantes', 'Belo Horizonte', 'MG'),
(3, 'Caroline Silva', 'Av São Paulo', 'Salvador', 'BA'),
(4, 'Guilerme Staff', 'Rua Central', 'Porto Alegre', 'RS'),
(5, 'Isabela Moraes', 'Av Juiz Grande', 'Curitiba', 'PR'),
(6, 'Francisco Accerr', 'Av Paulista', 'São Paulo', 'SP');

INSERT INTO categories(id, name)
VALUES
(1, 'old stock'),
(2, 'new stock'),
(3, 'modern'),
(4, 'commercial'),
(5, 'recyclable'),
(6, 'executive'),
(7, 'superior'),
(8, 'wood'),
(9, 'super luxury'),
(10, 'vintage');

INSERT INTO products(id, name, amount, price, id_provider, id_category)
VALUES
(1, 'Two-door wardrobe', 100, 800, 6, 8),
(2, 'Dining table', 1000, 560, 1, 9),
(3, 'Towel holder', 10000, 25.50, 5, 1),
(4, 'Computer desk', 350, 320.50, 4, 6),
(5, 'Chair', 3000, 210.64, 3, 6),
(6, 'Single bed', 750, 460, 1, 2);

SELECT products.name AS products_name, providers.name AS providers_name 
FROM products
INNER JOIN providers ON products.id_provider = providers.id
WHERE products.id_category = 6;