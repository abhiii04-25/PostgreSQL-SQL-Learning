--CASES
select*from products;

Alter table products
Add column price_tag text;

update products
SET price_tag=
CASE when (price>1000) then 'Expensive'
     when price between 500 and 1000 then 'Modrate'
	 Else 'Cheap'
END;

--Cases	 
select name,price,
CASE when (price>1000) then 'Expensive'
     when price between 500 and 1000 then 'Modrate'
	 Else 'Cheap'
End as Price_tag from products;	 
	 
