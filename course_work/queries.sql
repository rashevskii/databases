-- user search by condition
SELECT id, firstname, lastname, email
FROM users
WHERE snils = 35856207;

-- search for user data by condition
SELECT firstname, lastname, status
FROM 
	main_information
JOIN
	users
on main_information.user_id = 10 AND users.id = 10;

-- selection by status
SELECT user_id
FROM 
main_information
WHERE status = 'simplified';

-- selection of users with status 'confirmed'
SELECT DISTINCT firstname, lastname, status
FROM users 
join
main_information
on users.id IN  
	(SELECT user_id FROM main_information WHERE status = 'simplified') AND main_information.status = 'simplified';

-- A selection of users and their hits
SELECT firstname, lastname, title
FROM users
JOIN 
receiving_service 
ON users.id = receiving_service.id_user;

-- viewes
CREATE OR REPLACE VIEW all_users AS SELECT * FROM 
users
JOIN
main_information
ON users.id = main_information.user_id;

CREATE OR REPLACE VIEW adresses AS SELECT * FROM 
users
JOIN
registration_address 
ON users.id = registration_address.address_id;

SELECT phone FROM all_users;
SELECT * FROM adresses;

-- stored procedures
DROP procedure IF EXISTS get_document;
delimiter //
CREATE PROCEDURE get_document (IN attr bigint, in attr_2 bigint)
BEGIN
	select distinct firstname, lastname, title as 'name_of_document', type
	from users
	join documents 
	join type_of_documents
	on users.id = attr and documents.user_id = attr and type_of_documents.id = attr_2;
END//
delimiter ;

call get_document(1, 4);

-- triggers
DROP trigger IF EXISTS check_date_of_issue;
delimiter //
create trigger check_date_of_issue before insert on documents
for each row 
begin 
	if new.date_of_issue > current_date() then 
		signal sqlstate '45000' set message_text = 'Add correct date of issue!';
	end if;
end//
delimiter ;

INSERT INTO `documents` VALUES 
('61','56','1545', 'Свидетельство о рождении','4','2030-07-21','2005-07-21','ЗАГС Кировского раойна г.Самара');

