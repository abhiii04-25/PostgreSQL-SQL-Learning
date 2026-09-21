--String Function
--Convert any String into Upper Case 
select upper(name) from products;

--Convert any String into Lower Case 
Select lower(name) from products;

--Lenght of a String
Select length(sku_code) from products;

--Substring Function
Select substring('Brother in arms',1,7);
Select name,upper(substring('sku_code',1,2)) from products;

--Acessing the Left Most and Right Most Elements
Select right('sku_code',2)from products;

--Concat two Strings
Select concat(name,' ',category) as product_with_category from products;

Select concat_ws(' ',name,category) as product_with_category from products;

--Trim and Replace
Select trim('   Brother   ');

Select name, replace(sku_code,left(sku_code,2),'GG') from products;
