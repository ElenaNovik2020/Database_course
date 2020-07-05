USE wilds;

-- Создаем триггер на вывод ошибки при обновлении данных о количестве товарной позиции на складе равном 0.
DROP TRIGGER IF EXISTS check_no_products_on_storehouse_update;
DELIMITER -
CREATE TRIGGER check_no_products_on_storehouse_update AFTER UPDATE ON storehouses_product
FOR EACH ROW 
BEGIN 
	IF NEW.value = 0 THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NEED TO ORDER PRODUCT!';
	END IF;
END -
DELIMITER ;

UPDATE storehouses_product SET storehouses_product.value = 0 WHERE product_id = 5;

-- Создаем триггер на вывод ошибки при попытке обновить день рождения клиента из будущего:
DROP TRIGGER IF EXISTS check_client_birthday_update;
DELIMITER -
CREATE TRIGGER check_client_birthday_update BEFORE UPDATE ON profiles
FOR EACH ROW 
BEGIN 
	IF NEW.birthday >= CURRENT_DATE() THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'UPDATE CANCELED. BIRTHDAY MUST BE IN THE PAST!';
	END IF;
END -

-- Создаем триггер на вставку дня рождения клиента из будущего, устанавливаем текущую дату:
DROP TRIGGER IF EXISTS check_client_birthday_insert;
DELIMITER -
CREATE TRIGGER check_client_birthday_insert BEFORE INSERT ON profiles
FOR EACH ROW 
BEGIN 
	IF NEW.birthday >= CURRENT_DATE() THEN 
		SET NEW.birthday = CURRENT_DATE();
	END IF;
END -
DELIMITER ;
