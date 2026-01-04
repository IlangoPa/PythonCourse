-- creating a new database 'AmazonDB'
CREATE DATABASE AmazonDB;

-- creating tables within AmazonDB database
-- I can use the USE syntax or select the database in the SCHEMAS page.
USE AmazonDB;
CREATE TABLE Users(
user_id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(100) NOT NULL,
email VARCHAR(150) UNIQUE NOT NULL,
registered_date DATE NOT NULL,
membership ENUM('Basic','Prime') DEFAULT 'Basic'
);

DESCRIBE Users;

CREATE TABLE Products(
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(200) NOT NULL,
price DECIMAL(10,2) NOT NULL,
category VARCHAR(100) NOT NULL,
stock INT NOT NULL
);

CREATE TABLE Orders( 
order_id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT,
order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
total_amount DECIMAL(10,2) NOT NULL,
FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Order_details(
order_details_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT,
product_id INT,
quantity INT NOT NULL CHECK(quantity>0),
unit_price DECIMAL(10,2) NOT NULL CHECK(unit_price>0),
FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- DATA MANIPULATION LANGUAGE
-- Creating records for each table

INSERT INTO Users (user_name, email, registered_date, membership) VALUES
('Alice Johnson', 'alice.j@example.com', '2024-01-15', 'Prime'),
('Bob Smith', 'bob.s@example.com', '2024-02-01', 'Basic'),
('Charlie Brown', 'charlie.b@example.com', '2024-03-10', 'Prime'),
('Daisy Ridley', 'daisy.r@example.com', '2024-04-12', 'Basic');

select * from Users;

INSERT INTO Products (product_name, price, category, stock) VALUES
('Echo Dot', 49.99, 'Electronics', 120),
('Kindle Paperwhite', 129.99, 'Books', 50),
('Fire Stick', 39.99, 'Electronics', 80),
('Yoga Mat', 19.99, 'Fitness', 200),
('Wireless Mouse', 24.99, 'Electronics', 150);

-- to remove the unit_price column from Order_details table
ALTER TABLE Order_details
DROP COLUMN unit_price;

INSERT INTO Orders (user_id, order_date, total_amount) VALUES
(1, '2024-05-01', 79.98),
(2, '2024-05-03', 129.99),
(1, '2024-05-04', 49.99),
(3, '2024-05-05', 24.99);

INSERT INTO Order_Details (order_id, product_id, quantity) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 1, 1),
(4, 5, 1);

-- to rename the table name Order_details to "OrderDetails"

RENAME TABLE Order_details TO OrderDetails;