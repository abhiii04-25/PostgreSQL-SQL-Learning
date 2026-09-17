-- Create products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,

    product_name VARCHAR(100) NOT NULL,

    sku_code VARCHAR(20) UNIQUE NOT NULL,

    price NUMERIC(10,2) CHECK (price >= 0),

    stock_quantity INT DEFAULT 0
        CHECK (stock_quantity >= 0),

    category VARCHAR(50) NOT NULL,

    supplier_email VARCHAR(100) UNIQUE,

    is_available BOOLEAN DEFAULT TRUE,

    added_on DATE DEFAULT CURRENT_DATE
);
-- Valid Inputs
INSERT INTO products
(product_name, sku_code, price, stock_quantity, category, supplier_email)
VALUES
('Laptop', 'LAP1001', 65000, 10, 'Electronics', 'supplier@gmail.com');

--Invaild Inputs 
INSERT INTO products
(product_name, sku_code, price, stock_quantity, category)
VALUES
('Phone', 'PHN1001', -5000, 5, 'Electronics');

select*from products;

