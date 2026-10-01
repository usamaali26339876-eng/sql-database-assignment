DROP DATABASE IF EXISTS usamas;
DROP DATABASE IF EXISTS usamas;
CREATE DATABASE usamas;
USE usamas;

-- Create the Products table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT DEFAULT 0
);

-- Create the Orders table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    order_date DATE NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE
);

-- Insert sample data
INSERT INTO products (product_name, price, stock) VALUES
('Wireless Mouse', 25.99, 50),
('Mechanical Keyboard', 89.99, 20);

INSERT INTO orders (product_id, order_date, quantity) VALUES
(1, '2026-09-09', 2),
(2, '2026-09-09', 1);

-- Test query to verify
SELECT * FROM products;
