USE e_commerce
GO

CREATE TABLE category(
    id INT IDENTITY(1,1) PRIMARY KEY,
    category VARCHAR(20)
);


ALTER TABLE products
ADD categoriesId INT NULL;

ALTER TABLE products ADD CONSTRAINT fk_categoriesId FOREIGN KEY(categoriesId) REFERENCES category(id);