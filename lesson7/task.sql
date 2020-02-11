select * from
	users
where 
	id in (select user_id from orders);
	
select 
	products.id, 
	products.name, 
	(select
		catalogs.name 
	from 
		catalogs
	where
		catalogs.id = products.catalog_id) as 'catalog'
from products;

select 	
	flights.`from`, cities.name as 'from'
from flights join cities
on flights.`from` = cities.label;
