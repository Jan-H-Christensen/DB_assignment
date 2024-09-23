USE master;
GO

IF DB_ID('e_commerce') IS NOT NULL
BEGIN
    DROP DATABASE e_commerce;
END;

CREATE DATABASE e_commerce;
GO

USE e_commerce;
GO

CREATE TABLE products
(
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);
GO

INSERT INTO products(name, price) VALUES
('Widget', 10.00),
('Gadget', 20.00),
('Doohickey', 30.00),
('Trinket', 40.00),
('Cupcake', 50.00),
('Cup', 60.00),
('Candy', 70.00),
('Chips', 80.00),
('Pretzels', 90.00),
('Crisps', 100.00),
('Cereal', 110.00),
('Popcorn', 120.00),
('Coke', 130.00);
GO
