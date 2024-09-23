USE e_commerce;
GO

CREATE TABLE productRatings(
    ratingsId INT IDENTITY(1,1) PRIMARY KEY,
    productId INT NOT NULL,
    rating INT, 
    FOREIGN KEY(ProductId) REFERENCES products(id)
)