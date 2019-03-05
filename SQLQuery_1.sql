USE my_db
DROP TABLE users, products, catagories;

CREATE TABLE users(
    user_ID INT IDENTITY(1,1) PRIMARY KEY,
    user_Name VARCHAR(20),
    user_email VARCHAR(30)
);

CREATE TABLE products(
    product_ID INT IDENTITY(1,1) PRIMARY KEY,
    product_Name VARCHAR(20),
    product_Description VARCHAR(MAX),
    product_quantity INT
);

CREATE TABLE catagories(
    catagories_ID INT IDENTITY(1,1) PRIMARY KEY,
    catagories_Name VARCHAR(20),
    catagories_Description VARCHAR(MAX)
);

ALTER TABLE products
    ADD catagories_ID INT FOREIGN KEY(catagories_ID) REFERENCES catagories;



