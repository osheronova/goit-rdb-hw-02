-- Клієнти
INSERT INTO clients (name, address) VALUES
('Мельник', 'Хрещатик 1'),
('Шевченко', 'Басейна 2'),
('Коваленко', 'Комп''ютерна 3');

-- Замовлення
INSERT INTO orders (order_id, client_id, order_date) VALUES
(101, 1, '2023-03-15'),
(102, 2, '2023-03-16'),
(103, 3, '2023-03-17');

-- Деталі замовлень
INSERT INTO order_details (order_id, product_name, quantity) VALUES
(101, 'Лептоп', 3),
(101, 'Мишка', 2),
(102, 'Принтер', 1),
(103, 'Мишка', 4);

```

### Зв'язки

clients (1) ──────< orders (1) ──────< order_details
  client_id (PK)     order_id (PK)     order_detail_id (PK)
  name                client_id (FK)    order_id (FK)
  address             order_date        product_name
                                        quantity
```