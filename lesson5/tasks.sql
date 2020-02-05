-- ����� � ������� users ���� created_at � updated_at ��������� ��������������. ��������� �� �������� ����� � ��������.
update users
set created_at = now(), updated_at = now();


-- ������� users ���� �������� ��������������. ������ created_at � updated_at ���� ������ ����� VARCHAR � � ��� ������ ����� ���������� �������� � ������� "20.10.2017 8:10". 
-- ���������� ������������� ���� � ���� DATETIME, �������� �������� ����� ��������.
update users 
set created_at = str_to_date(created_at, '%d %m %y %H %i');


-- � ������� ��������� ������� storehouses_products � ���� value ����� ����������� ����� ������ �����: 
-- 0, ���� ����� ���������� � ���� ����, ���� �� ������ ������� ������. ���������� ������������� ������ ����� �������, 
-- ����� ��� ���������� � ������� ���������� �������� value. ������, ������� ������ ������ ���������� � �����, ����� ���� �������.
select storehouses_products
from users order by storehouses_products = 0, storehouses_products;


-- �� ������� users ���������� ������� �������������, ���������� � ������� � ���. ������ ������ � ���� ������ ���������� �������� ('may', 'august')
select * from users
where birthday_month = 'may' or birthday_month = 'august';


-- �� ������� catalogs ����������� ������ ��� ������ �������. SELECT * FROM catalogs WHERE id IN (5, 1, 2); ������������ ������ � �������, �������� � ������ IN
select * from users
where id in (5, 1 ,2) order by field(id, 5, 1, 2);


-- ����������� ������� ������� ������������� � ������� users
 select name, avg(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) as age
 from users;


-- ����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������. 
-- ������� ������, ��� ���������� ��� ������ �������� ����, � �� ���� ��������.
-- �� ���������
select dayofweek(birthday_at) as week from users order by week;


-- ����������� ������������ ����� � ������� �������
select floor(exp(sum(log(id)))) from users;


