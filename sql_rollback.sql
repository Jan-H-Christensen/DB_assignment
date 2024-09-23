USE e_commerce;
GO

-- removes the column categories from products
ALTER TABLE products
DROP CONSTRAINT fk_categoriesId;

ALTER TABLE products
DROP COLUMN categoriesId;

DROP TABLE category;

-- removes the table productRatings
DROP TABLE productRatings;