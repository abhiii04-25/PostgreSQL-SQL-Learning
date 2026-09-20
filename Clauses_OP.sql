--Comparision Operator
-- Equal to
Select * from products where category='Electronics';

--Not Equal to
Select * from products where category!='Electronics';

--Greater than and Less than
Select * from products where price>1000;

--Range by using AND operator
Select * from products where price>1000 and category='Gaming';

Select * from products where price Between 400 and 1000;

--Set using IN operator
Select * from products where category in ('Electronics','Wearables','Gaming');

--Pattern using Like Clause
--Sku code starting from W
Select * from products where sku_code like 'W%';

--Sku_code having 10 n between.
Select * from products where sku_code like '%10%';

--Sku_code having second letter B.
Select * from products where sku_code like '_A%';
