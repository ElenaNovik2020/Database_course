USE shop;

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	create_at_record DATETIME DEFAULT NOW(),
	name_table ENUM ('users', 'catalogs', 'products'),
	record_id INT UNSIGNED NOT NULL,
	record_name VARCHAR(255)
) ENGINE = Archive;

DELIMITER //

CREATE TRIGGER insert_users AFTER INSERT ON users FOR EACH ROW 
BEGIN 
	INSERT INTO logs (name_table, record_id, record_name) VALUES ("users", NEW.id, NEW.name);
END//

CREATE TRIGGER insert_catalogs AFTER INSERT ON catalogs FOR EACH ROW 
BEGIN 
	INSERT INTO logs (name_table, record_id, record_name) VALUES ("catalogs", NEW.id, NEW.name);
END//

CREATE TRIGGER insert_products AFTER INSERT ON products FOR EACH ROW 
BEGIN 
	INSERT INTO logs (name_table, record_id, record_name) VALUES ("products", NEW.id, NEW.name);
END//
 
DELIMITER ;

INSERT INTO users (name, birthday_at) VALUES ('Елена', '1987-04-10');
INSERT INTO users (name, birthday_at) VALUES ('Артур', '1994-06-25');

INSERT INTO catalogs (name) VALUES ('Сетевые карты');
INSERT INTO catalogs (name) VALUES ('Принтеры');

INSERT INTO products (name) VALUES ('Принтер HP');
INSERT INTO products (name) VALUES ('Принтер CANON');
