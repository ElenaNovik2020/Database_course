USE wilds;
-- Исправляю данные для таблицы clients колонка updated_at, дата обновления должна быть позднее даты создания
UPDATE clients SET updated_at = current_timestamp WHERE created_at > updated_at;

-- Выборка списка всех товаров c ценой и количеством на складе по разделам интернет магазина:
SELECT c.name AS catalog, p.name, p.price, sp.value AS value
	FROM products AS p
		LEFT JOIN catalogs AS c
			ON p.catalog_id = c.id
		LEFT JOIN storehouses_product AS sp
			ON p.id = sp.product_id 
		ORDER BY c.id; 
	
-- Выборка товаров по разделам каталога, которые заканчиваются/отсутствуют на складе:
SELECT p.name, c.name, sp.value AS value
	FROM products AS p
		LEFT JOIN catalogs AS c
			ON p.catalog_id = c.id
		LEFT JOIN storehouses_product AS sp
			ON p.id = sp.product_id 
		WHERE value = 0 OR value = 1
		ORDER BY c.id; 
		
	
-- Выводим 10 клиентов с самым большим количеством заказов:
SELECT c.fullname, COUNT(o.client_id) AS total_orders
	FROM clients AS c
		JOIN orders AS o 
	ON c.id = o.client_id
	GROUP BY o.client_id
	ORDER BY total_orders DESC 
	LIMIT 10;

-- Выводим разделы каталога, в которых нет товарных позиций:
SELECT * FROM catalogs WHERE NOT EXISTS (SELECT 1 FROM products WHERE catalog_id = catalogs.id);

-- Личный кабинет клиента c id = 10, закладка личные данные:
-- исправляю данные для столбца client_id в таблице client_addresses и персональную скидку в таблице personal_discount:
UPDATE client_addresses SET client_id = FLOOR(1+(RAND()*100));
UPDATE personal_discount SET personal_discount = FLOOR(1+(RAND()*10));

SELECT c.fullname, c.email, c.phone, p.gender, p.birthday, p.city, ca.address, ca.type_address, pd.personal_discount 
	FROM clients AS c
		LEFT JOIN profiles AS p
			ON c.id = p.client_id 
		LEFT JOIN client_addresses AS ca 
			ON c.id = ca.client_id 
		LEFT JOIN personal_discount AS pd 
			ON c.id = pd.client_id 
WHERE c.id = 10;

-- Профиль клиента c id = 11, закладка с заказами: 
UPDATE deliveries SET created_at = current_timestamp;

SELECT o.id AS NumberOrder, (SELECT address FROM client_addresses WHERE id = d.address_id) AS AddressDelivery, (SELECT type_address FROM client_addresses WHERE id = d.address_id) AS TypeDelivery, DATE(o.created_at) AS DateOrder, DATE(d.created_at) AS DateDelivery 
	FROM orders AS o
		LEFT JOIN clients AS c
			ON o.client_id = c.id 
		LEFT JOIN deliveries AS d
			ON o.id = d.order_id  
WHERE c.id = 11;


-- Профиль клиента с id = 11, история покупок c товарными позициями по годам:
SELECT o.id AS Order_number, YEAR(o.created_at) AS YearOrder, p.name AS Product, op.purchased AS StatusPurchased, p.price AS Price
	FROM orders AS o
		JOIN clients AS c 
			ON o.client_id = c.id
		JOIN orders_products AS op
			ON o.id = op.order_id 
		JOIN products AS p 
			ON op.product_id = p.id 
	WHERE client_id = 11

	
-- Самый продаваемый товар 2020 года:
SELECT p.name AS Product, SUM(op.quantity_purchased) AS TotalOrdered
	FROM orders_products AS op
			LEFT JOIN orders  AS o
				ON op.order_id = o.id
			LEFT JOIN products AS p 
				ON op.product_id = p.id 
	WHERE (op.purchased = "Yes") AND (YEAR(o.created_at) = 2020)
	GROUP BY op.product_id 
	ORDER BY TotalOrdered DESC
	LIMIT 1;

-- ALTER TABLE orders_products ADD COLUMN price_discounts DECIMAL (11,2);

-- Покупатель, с самой большой суммой выкупа:
SELECT c.id, c.fullname AS Name,
	SUM(op.quantity_purchased*op.price_discounts) AS Total_buy, 
	SUM(op.quantity_ordered*op.price_discounts) AS Total_ordered, 
	SUM(op.quantity_purchased*op.price_discounts)/SUM(op.quantity_ordered*op.price_discounts) AS Persent_buy
	FROM orders_products AS op
			LEFT JOIN orders  AS o
				ON op.order_id = o.id
			LEFT JOIN clients AS c 
				ON o.client_id = c.id
			LEFT JOIN products AS p 
				ON op.product_id = p.id 
	GROUP BY o.client_id 
	ORDER BY Total_buy DESC LIMIT 1;

-- Корзина клиента заказ с id = 9:
SELECT c.fullname AS Name, o.id AS NumberOrder, p.name AS Product, 
op.quantity_ordered AS Amount, op.price_discounts AS PriceWithDiscount,
op.quantity_ordered*op.price_discounts AS Total
	FROM orders AS o
		JOIN clients AS c 
			ON o.client_id = c.id
		JOIN orders_products AS op
			ON o.id = op.order_id 
		JOIN products AS p 
			ON op.product_id = p.id 
	WHERE o.id = 9;


-- Перечень товаров с ценой и стоимостью с учетом скидки:
SELECT DISTINCT o.id AS NumberOrder, p.name AS Product, p.description, p.price AS Price, op.price_discounts AS PriceDiscount
	FROM orders_products AS op
		LEFT JOIN orders  AS o
			ON op.order_id = o.id
		LEFT JOIN products AS p 
			ON op.product_id = p.id
		LEFT JOIN clients AS c 
			ON o.client_id = c.id
	WHERE o.client_id = 11
		

SET op.price_discounts = p.price*0.9
-- 
	LEFT JOIN clients AS c 
				ON o.client_id = c.id
