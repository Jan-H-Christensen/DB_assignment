USE e_commerce;
GO

-- removes the table productRatings
DROP TABLE productRatings;

-- removes the column categories from products
ALTER TABLE products
DROP COLUMN categories;