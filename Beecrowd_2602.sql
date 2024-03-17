CREATE DATABASE beecrowd_2603;
USE beecrowd_2603;
CREATE TABLE customers(
id INT PRIMARY KEY,
name VARCHAR(50),
street VARCHAR(50),
city VARCHAR(50),
state CHAR(50),
credit_limit INT);

INSERT INTO customers(id, name, street, city, state, credit_limit) 
VAlUES
(1, 'Pedro Augusto da Rocha', 'Rua Pedro Carlos Hoffman', 'Porto Alegre', 'RS', 70000),
(2, 'Antonio Carlos Mamel', 'Av. Pinheiros', 'Belo Horizonte', 'MG', 350050),
(3, 'Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', 400000),
(4, 'Jane Ester', 'Av 7 de setembro', 'Erechim', 'RS', 80000),
(5, 'Marcos Antônio dos Santos', 'Av Farrapos', 'Porto Alegre', 'RS', 425025);

SELECT name FROM customers
WHERE state = 'RS';