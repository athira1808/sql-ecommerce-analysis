create database ecommerce_analysis;
use ecommerce_analysis;

show databases;
use ecommerce_analysis;
create table customers (
	customer_id int primary key,
    name varchar(50),
    city varchar(50)
);

insert into customers (customer_id, name, city)
values
(1, 'Anu', 'Ahmedabad'),
(2, 'Rahul', 'Surat'),
(3, 'Meera', 'Mumbai'),
(4, 'Diya', 'Ahmedabad'),
(5, 'Arjun', 'Pune');

create table orders (
	order_id int primary key,
    customer_id int,
    order_date date,
    amount decimal(10,2),
    foreign key (customer_id) references customers(customer_id)
);

insert into orders (order_id, customer_id, order_date, amount)
values
(101, 1, '2026-01-10', 500),
(102, 2, '2026-01-15', 1200),
(103, 1, '2026-02-05', 800),
(104, 3, '2026-02-10', 1500),
(105, 4, '2026-02-18', 700),
(106, 2, '2026-03-01', 900),
(107, 5, '2026-03-05', 300),
(108, 4, '2026-03-12', 1100);

create table products (
    product_id int primary key,
    product_name varchar(100),
    category varchar(50),
    price decimal(10,2)
);

insert into products (product_id, product_name, category, price)
values
(1, 'Laptop', 'Electronics', 60000),
(2, 'Smartphone', 'Electronics', 30000),
(3, 'Headphones', 'Electronics', 3000),
(4, 'Keyboard', 'Accessories', 2000),
(5, 'Backpack', 'Accessories', 1500),
(6, 'Smartwatch', 'Electronics', 8000);

ALTER TABLE orders
ADD COLUMN product_id INT;

UPDATE orders SET product_id = 1 WHERE order_id = 101;
UPDATE orders SET product_id = 2 WHERE order_id = 102;
UPDATE orders SET product_id = 3 WHERE order_id = 103;
UPDATE orders SET product_id = 1 WHERE order_id = 104;
UPDATE orders SET product_id = 4 WHERE order_id = 105;
UPDATE orders SET product_id = 2 WHERE order_id = 106;
UPDATE orders SET product_id = 5 WHERE order_id = 107;
UPDATE orders SET product_id = 6 WHERE order_id = 108;

select * from customers;

select * from orders;

select * from products;

SELECT
    c.customer_id,
    c.name AS customer_name,
    c.city,
    o.order_id,
    o.order_date,
    p.product_name,
    p.category,
    o.amount
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN products p
    ON o.product_id = p.product_id
ORDER BY o.order_id;


    








