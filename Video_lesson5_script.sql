Тема "Сложные запросы"
-- заполняю таблицу заказов:
INSERT INTO orders 
  (id, user_id, created_at, updated_at)
VALUES
  (2, 2,  NULL, NULL),
  (3, 2,  NULL, NULL),
  (4, 5,  NULL, NULL),
  (5, 6,  NULL, NULL),
  (6, 3,  NULL, NULL),
  (7, 4,  NULL, NULL);

 
-- Задание 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине:
select name from users where id IN (select user_id from orders order by user_id);
 
-- Задание 2. Выведите список товаров products из разделов catalogs, который соответствует товару
 
select 
p.name as "Товар",
c.name as "Раздел"
from catalogs as c
join 
products as p 
on c.id = p.catalog_id;




-- Задание 3. Создание базы, таблиц и заполнение:
DROP DATABASE IF EXISTS FLIGHT;
CREATE DATABASE FLIGHT;
USE FLIGHT;

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (	
   id SERIAL PRIMARY KEY,
   from_town VARCHAR(255),
   to_town VARCHAR(255)
);

INSERT INTO flights
VALUES (1, 'moscow', 'omsk'), (2, 'novgorod', 'kazan'), (3, 'irkutsk', 'moscow'), (4, 'omsk', 'irkutsk') (5, 'moscow', 'kazan');

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
label VARCHAR(255),
name VARCHAR(255),
);

INSERT INTO cities
VALUES ('moscow', 'MSK'), ('irkutsk','IRK'), ('novgorod','NOV'), ('kazan', 'KAZ'), ('omsk', 'OMSK');


-- у меня в настройках DBeaver стоит по умолчанию UTF-8, но с русским текстом я работать не могу, 
-- получаю ошибки, поэтому заменила русские значения на английские сокращения, смысл на мой взгляд не поменялся
-- Так не получается вставить значения из-за кодировки: 
-- Ошибка SQL Error [1366] [HY000]: Incorrect string value: '\xD0\x9C\xD0\xBE\xD1\x81...' for column 'name_town' at row 1
INSERT INTO cities
VALUES ('moscow', 'Москва'), ('irkutsk', 'Иркутск'), ('novgorod', 'Новгород'), ('kazan', 'Казань'), ('omsk', 'Омск');


-- Задание 3. Вывод списка рейсов с сокращенными названиями
-- Вот этот код, как мне кажется, более правильный, но я не понимаю: как менять flights.id на 2,3,4,5???
SELECT
flights.id,
(SELECT cities.name_town FROM flights, cities WHERE (flights.from_town = cities.label) AND (flights.id = 1)) as from_town, 
(SELECT cities.name_town FROM flights, cities WHERE (flights.to_town = cities.label) AND (flights.id = 1)) as to_town
FROM 
flights, cities
WHERE flights.from_town = cities.label OR flights.to_town = cities.label AND flights.id <> flights.id
ORDER BY flights.id

-- получилось только так 
SELECT
flights.id,
CASE(from_town)
	WHEN 'moscow' THEN 'MSK'
	WHEN 'novgorod' THEN 'NOV'
	WHEN 'irkutsk' THEN 'IRK'
	WHEN 'kazan' THEN 'KAZ'
	WHEN 'omsk' THEN 'OMSK'
END AS from_town, 
CASE(to_town)
	WHEN 'moscow' THEN 'MSK'
	WHEN 'novgorod' THEN 'NOV'
	WHEN 'irkutsk' THEN 'IRK'
	WHEN 'kazan' THEN 'KAZ'
	WHEN 'omsk' THEN 'OMSK'
END AS to_town
FROM 
flights;

