create table products(
product_id serial primary key,
name varchar(100) not null,
sku_code char(8) unique not null,
price numeric (10,2) check(price>=0),
stock_quantity int default 0 check (stock_quantity>=0),
is_available boolean default True ,
category text not null,
added_on date default current_date,
last_update timestamp default now()
); 

INSERT INTO products
(name, sku_code, price, stock_quantity, is_available, category)
VALUES
('Laptop', 'LAP10001', 55000.00, 15, TRUE, 'Electronics'),
('Smartphone', 'PHO10002', 25000.00, 30, TRUE, 'Electronics'),
('Wireless Mouse', 'MOU10003', 799.00, 50, TRUE, 'Accessories'),
('Keyboard', 'KEY10004', 1299.00, 40, TRUE, 'Accessories'),
('Headphones', 'HDP10005', 1999.00, 25, TRUE, 'Audio'),
('Smart Watch', 'SWT10006', 3499.00, 20, TRUE, 'Wearables'),
('Bluetooth Speaker', 'SPK10007', 2499.00, 18, TRUE, 'Audio'),
('USB Flash Drive', 'USB10008', 699.00, 60, TRUE, 'Storage'),
('External SSD', 'SSD10009', 6499.00, 12, TRUE, 'Storage'),
('Webcam', 'WEB10010', 2999.00, 10, TRUE, 'Accessories'),
('Monitor', 'MON10011', 14500.00, 8, TRUE, 'Electronics'),
('Printer', 'PRI10012', 8999.00, 7, TRUE, 'Office'),
('Tablet', 'TAB10013', 18000.00, 14, TRUE, 'Electronics'),
('Power Bank', 'PWB10014', 1499.00, 35, TRUE, 'Accessories'),
('Gaming Chair', 'CHR10015', 12500.00, 5, TRUE, 'Furniture'),
('Desk Lamp', 'LAM10016', 999.00, 22, TRUE, 'Home'),
('Backpack', 'BAG10017', 1799.00, 28, TRUE, 'Bags'),
('Mechanical Keyboard', 'MKB10018', 4999.00, 16, TRUE, 'Gaming'),
('Gaming Mouse', 'GAM10019', 2299.00, 20, TRUE, 'Gaming'),
('Laptop Stand', 'STA10020', 1599.00, 25, TRUE, 'Accessories');

select*from products;
