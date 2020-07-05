USE wilds;

-- ALTER TABLE storehouses 
-- ADD COLUMN address TEXT;


-- Создаем представление с перечнем товарных позиций по разделам каталога с сортировкой по наличию на складе:
CREATE OR REPLACE VIEW  products_on_storehouse
AS SELECT c.name AS Catalog, p.name, p.price, s.name AS StoreHouse, s.address AS AddressStoreHouse, sp.value AS Value
	FROM products AS p
		LEFT JOIN catalogs AS c
			ON p.catalog_id = c.id
		LEFT JOIN storehouses_product AS sp
			ON p.id = sp.product_id
		LEFT JOIN storehouses AS s
			ON sp.storehouse_id = s.id
	ORDER BY Value, StoreHouse; 

		
		
		
-- Создаем представление с перечнем клиентов магазина с личными данными:

CREATE OR REPLACE VIEW  clients_data
AS	SELECT c.fullname, c.email, c.phone, p.gender, p.birthday, p.city, ca.address, ca.type_address, pd.personal_discount 
	FROM clients AS c
		LEFT JOIN profiles AS p
			ON c.id = p.client_id 
		LEFT JOIN client_addresses AS ca 
			ON c.id = ca.client_id 
		LEFT JOIN personal_discount AS pd 
			ON c.id = pd.client_id
	ORDER BY c.id;