CREATE DATABASE IF NOT EXISTS hw02;
USE hw02;

-- 1. Таблиця клієнтів
CREATE TABLE clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    client_name VARCHAR(100) NOT NULL,
    client_address VARCHAR(255) NOT NULL
);

-- 2. Таблиця замовлень
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    client_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

-- 3. Таблиця деталей замовлення (товар зберігається тут як назва)
CREATE TABLE order_details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
