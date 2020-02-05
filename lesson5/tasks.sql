-- Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
update users
set created_at = now(), updated_at = now();


-- Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10". 
-- Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.
update users 
set created_at = str_to_date(created_at, '%d %m %y %H %i');


-- В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 
-- 0, если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, 
-- чтобы они выводились в порядке увеличения значения value. Однако, нулевые запасы должны выводиться в конце, после всех записей.
select storehouses_products
from users order by storehouses_products = 0, storehouses_products;


-- Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде списка английских названий ('may', 'august')
select * from users
where birthday_month = 'may' or birthday_month = 'august';


-- Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN
select * from users
where id in (5, 1 ,2) order by field(id, 5, 1, 2);


-- Подсчитайте средний возраст пользователей в таблице users
 select name, avg(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) as age
 from users;


-- Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.
-- НЕ СПРАВИЛСЯ
select dayofweek(birthday_at) as week from users order by week;


-- Подсчитайте произведение чисел в столбце таблицы
select floor(exp(sum(log(id)))) from users;


