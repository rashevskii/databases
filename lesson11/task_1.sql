USE shop;

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	created_at datetime DEFAULT current_timestamp(),
	table_name varchar(50),
	primary_id bigint,
	entry_name varchar(50)
)engine=Archive;

delimeter //

DROP TRIGGER IF EXISTS insert_entry_users//
CREATE TRIGGER insert_entry_users AFTER INSERT ON users
FOR EACH ROW 
BEGIN
	INSERT INTO logs (table_name, primary_id, entry_name) VALUES
	(`users`, NEW.id, NEW.name);
END//

DROP TRIGGER IF EXISTS insert_entry_catalogs//
CREATE TRIGGER insert_entry_catalogs AFTER INSERT ON catalogs
FOR EACH ROW 
BEGIN
	INSERT INTO logs (table_name, primary_id, entry_name) VALUES
	(`catalogs`, NEW.id, NEW.name);
END//

DROP TRIGGER IF EXISTS insert_entry_products//
CREATE TRIGGER insert_entry_products AFTER INSERT ON products
FOR EACH ROW 
BEGIN
	INSERT INTO logs (table_name, primary_id, entry_name) VALUES
	(`products`, NEW.id, NEW.name);
END//

delimeter ;