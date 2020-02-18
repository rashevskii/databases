-- Транзакции, переменные, представления
-- 1)
start transaction;
insert into sample.users
select * 
from shop.users 
where id = 1;
commit;

-- 2)
create or replace view names as
select p.name, c.name as category
from products as p
join
catalogs as c 
on p.catalog_id = c.id;

select * from names;


-- Хранимые процедуры и функции, триггеры
-- 1)
create function hello()
returns varchar(255) deterministic
begin
	set @cur_time = current_time();
	if (hour(@cur_time) between 6 and 12) then 
		return 'Доброе утро!';
	elseif (hour(@cur_time) between 12 and 18) then
		return 'Добрый день!';
	elseif (hour(@cur_time) between 18 and 00) then
		return 'Добрый вечер!';
	elseif (hour(@cur_time) between 00 and 06) then
		return 'Доброй ночи!';
	end if;
end


-- 2)
create trigger check_null before update on products
for each row 
begin 
	if new.name <=> null or new.description <=> null then 
	signal sqlstate '45000';
	end if;
end
