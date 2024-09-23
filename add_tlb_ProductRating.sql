USE e_commerce;
GO

CREATE TABLE productRatings(
    productId INT NOT NULL,
    rating INT, 
    FOREIGN KEY(ProductId) REFERENCES products(id)
)