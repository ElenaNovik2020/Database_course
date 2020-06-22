DELIMITER //
DROP FUNCTION IF EXISTS hello()//
CREATE FUNCTION hello()
RETURNS VARCHAR(255) NOT DETERMINISTIC
BEGIN
	CASE time
	DECLARE t TIME;
	SET t = CURRENT_TIME();
	WHEN 06:00:01 < t < 12:00:00 THEN SET hello = "Доброе утро!";
	WHEN 12:00:01 < t < 18:00:00 THEN SET hello = "Добрый день!";
	WHEN 18:00:01 < t < 00:00:00 THEN SET hello = "Добрый вечер!";
	WHEN 00:00:01 < t < 06:00:00 THEN SET hello = "Доброй ночи!";
	END CASE;
	RETURN hello();
END//
CALL hello()//
SELECT CURRENT_TIME(); 


DELIMITER //
CREATE FUNCTION hello()
RETURNS VARCHAR(255) NOT DETERMINISTIC
BEGIN
	DECLARE h VARCHAR(255) DEFAULT 'Доброе утро';
    DECLARE @t TIME;
    SET @t = CURRENT_TIME();
CASE CTIME
	WHEN @t < 12:00:00 AND @t > 06:00:01 THEN SET h = "Доброе утро!";
	WHEN @t < 18:00:00 AND @t > 12:00:01 THEN SET h = "Добрый день!";
	WHEN @t < 00:00:00 AND @t > 18:00:01 THEN SET h = "Добрый вечер!";
	WHEN @t < 06:00:00 AND @t > 00:00:01 THEN SET h = "Доброй ночи!";
    END CASE;
	RETURN @h;
END//
CALL hello()//
SELECT CURRENT_TIME(); 
DECLARE @h VARCHAR(255);