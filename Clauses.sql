-- 1.show the name and price of products 
select name,price from products;

-- 2.Show all product where category is Electronics
select * from products where category ='Electronics';

-- 3.Group by category.Show each category once.
select category from products Group by category;

-- 4. Show category more than 2 products.
select category, count(*) from products 
Group by category
Having count(*)>1;

-- 5.Show all products in ascending order.
select * from products order by price;

-- 6.show only first 3 products from the table.
select * from products limit 3;

-- 7.Rename the colunms from name to item_name and price to item_price.
select name as item_name,price as item_price from products;

-- 8.Show all the unique category from the table.
select Distinct category from products;