Create table products(
product_id INT primary key,
product_name varchar(100),
category TEXT,
price numeric(10,2),
stock_quantity INT,
is_available boolean,
added_on date
);

create table orders(
order_id INT primary key,
product_id INT,
quantity INT,
order_date DATE,
customer_name varchar(50),
payment_method varchar(50),
constraint fk_product
foreign key (product_id)
references products(product_id)
on delete cascade
);

select * from products;
select * from orders;

--1.Show each order alogn with prooduct name and price
Select o.order_id,o.customer_name,p.product_name,p.price
from orders o inner join products p 
on o.product_id = p.product_id;

--2.Show all products even if they were never ordered
Select p.product_name,o.order_id
from products p left join orders o
on o.product_id = p.product_id;

--3.Show order for only "Electronic" category
Select o.order_id,p.product_name,p.category
from orders o join products p 
on o.product_id = p.product_id
where p.category='Electronics';

--4.List all orders sorted by product price(hight to low)
Select o.order_id,p.product_name,p.price
from orders o  join products p 
on o.product_id = p.product_id
order by p.price DESC;

--5.Show number of orders placed for each product
Select p.product_name,count(o.order_id) as total_order
from products p 
left join orders o on o.product_id = p.product_id
group by p.product_name;

--6.Show total revenue eared per product.
Select p.product_name,sum(o.quantity*p.price) as revenue
from products p 
join orders o on o.product_id = p.product_id
group by p.product_name;

--
Select p.product_name,sum(o.quantity*p.price) as revenue
from products p 
join orders o on o.product_id = p.product_id
group by p.product_name
having sum(o.quantity*p.price)>2000;

--
Select distinct o.customer_name
from orders o
join products p on o.product_id =  p.product_id 
where category ='Fitness';
