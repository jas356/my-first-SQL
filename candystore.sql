-- Create candystore database
CREATE DATABASE candystore;

-- Switch to candystore database;
USE candystore;

-- Create the customer table
CREATE TABLE customers (
    customerId INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    email VARCHAR(30),
    phone VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Add our first customer:
INSERT INTO customers(firstName, lastName, email, phone)
VALUES ('Damien', 'Montero', 'damian@bocacode.com', '976-CODE');

--Lets get all of our customers:
SELECT * FROM customers;

--doing this on our own
INSERT INTO customers(firstName, lastName, email, phone)
VALUES ('Cassandea', 'willams', 'casy123@gmail.com', '7867796637');

-- to find a specific 



-- Create the customer table
CREATE TABLE orders (
    orderId INT AUTO_INCREMENT PRIMARY KEY,
    customerId INT NOT NULL,
    total DECIMAL(8,2),
    tax DECIMAL(7,2),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- now lets an order to our order table:
INSERT INTO orders(customerId, total, tax)
 VALUES (1, 19.48, 0.18), (2, 49.26, 3.44);

 --we can show the orders by:
 SELECT * FROM orders

 -- how can I search for all of damaien orders
 SELECT * FROM customers
 JOIN orders ON orders.customerId = customers.customerId
 WHERE firstName = 'Damien' ;