CREATE DATABASE IF NOT EXISTS project;

USE project;

CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    model VARCHAR(32) NOT NULL,
    storage_capacity INT,
    color VARCHAR(32),
    price DECIMAL(11, 2) NOT NULL
);

INSERT INTO products (model, storage_capacity, color, price)
VALUES
    ('iPhone 15', 128, 'Blue', 799.99),
    ('iPhone 15', 256, 'Silver', 899.99),
    ('iPhone 15 Pro', 128, 'Graphite', 1099.99),
    ('iPhone 15 Pro', 256, 'Gold', 1199.99);
