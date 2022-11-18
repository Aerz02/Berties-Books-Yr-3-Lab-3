CREATE DATABASE IF NOT EXISTS myBookshop;
USE myBookshop;
CREATE TABLE IF NOT EXISTS books (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(50), price DECIMAL(5, 2) unsigned);

INSERT INTO books (name, price) VALUES
('database book', 40.25),
('Node.js book', 25.00),
('Express book', 31.99);

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first varchar(50), 
    last varchar(50),
    username varchar(50),
    email varchar(500),
    password varchar(500),
    registration_date timestamp NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE USER 'appuser'@'localhost' IDENTIFIED WITH mysql_native_password BY 'app2027';
GRANT ALL PRIVILEGES ON myBookshop.* TO 'appuser'@'localhost';