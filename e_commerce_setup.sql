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