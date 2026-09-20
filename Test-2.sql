--Clauses Test Questions
--Name and price of the cheapest products
select name,price from products 
where price=(select min(price) from products);

--Avg price of product that belogns to the 'Storage' or 'Audio'category
select round(avg(price),2) from products 
where category in('Storage','Audio');

--Show Product name and stock quantity whhere the product is available,
--stock isss more than 50,and price is not equal to Rs299
select name ,stock_quantity from products
where is_available = True and  stock_quantity >50 and price!=299.00;

--Most expensive products from each category
Select category,max(price) as Max_price from products
group by category;

--Show all unique category in uppercase,Sorted in descending order
Select distinct Upper(category) as category_upper 
from products
order by category_upper DESC;
