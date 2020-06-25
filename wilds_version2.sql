DROP DATABASE IF EXISTS wilds;
CREATE DATABASE wilds;

-- таблица1 каталога интернет магазина
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL primary key,
  name VARCHAR (255) NOT NULL,
);

-- таблица2 клиентов интернет магазина
DROP TABLE IF EXISTS clients;
CREATE TABLE clients (
 	id SERIAL PRIMARY KEY,
    fullname VARCHAR(255),
    email VARCHAR(120),
    phone BIGINT UNIQUE, 
  	registerDate DATETIME NOT NULL,
  	lastvisitDate DATETIME NOT NULL,
  	INDEX fullname_idx (fullname),
  	INDEX client_phone_idx (phone)
);

-- таблица3 адресов для доставки и самовывоза клиента
DROP TABLE IF EXISTS client_addresses;
CREATE TABLE client_addresses (
	id SERIAL PRIMARY KEY,
    address TEXT,
    created_at DATETIME DEFAULT NOW(),
    type_adresses ENUM('courier delivery', 'pickup'),
    FOREIGN KEY (client_id) REFERENCES clients(id)
);


-- таблица4 профилей клиента
DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
	client_phone_id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthday DATE,
    created_at DATETIME DEFAULT NOW(),
    hometown VARCHAR(100),
    FOREIGN KEY (client_id) REFERENCES clients(id)
);

-- таблица5 с заказами клиентов
DROP TABLE IF EXISTS client_orders;
CREATE TABLE client_orders (
	id SERIAL PRIMARY KEY,
	client_id INT UNSIGNED,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX client_id_idx (client_id),
    FOREIGN KEY (client_id) REFERENCES clients(id) 
);

-- таблица6 с данными о доставках заказов
DROP TABLE IF EXISTS client_deliveries;
CREATE TABLE client_deliveries (
	PRIMARY KEY (client_id, order_id),
	client_id INT UNSIGNED, 
	order_id INT UNSIGNED,
    created_at DATETIME DEFAULT NOW(),
    address_id TEXT, 
    date_del DATETIME,
    type_del ENUM('courier delivery', 'pickup'),
    FOREIGN KEY (order_id) REFERENCES client_orders(id),
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (address_id) REFERENCES client_addresses(id)  
);

-- таблица7 продуктов интернет магазина
DROP TABLE IF EXISTS products;
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name varchar(255),
	description text,
	price DECIMAL (11,2),
	catalog_id INT UNSIGNED,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX catalog_id_idx (catalog_id),
    FOREIGN KEY (product_id) REFERENCES orders_products(id)
);
-- таблица8 количества заказанных продуктов
DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
	id SERIAL PRIMARY KEY,
	order_id INT UNSIGNED,
	product_id INT UNSIGNED,
	total INT UNSIGNED DEFAULT 1,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX catalog_id_idx (catalog_id),
    FOREIGN KEY (order_id) REFERENCES client_orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

-- таблица9 персональных скидок клиента
DROP TABLE IF EXISTS personal_discount;
CREATE TABLE products (
	PRIMARY KEY (clinet_id, product_id),
	client_id INT unsigned,
	product_id INT UNSIGNED,
	discount FLOAT UNSIGNED,
	created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX client_id_idx (client_id),
    INDEX product_id_idx (product_id),
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (product_id) REFERENCES orders_products(id)
);


-- таблица10 акционных скидок на товары
DROP TABLE IF EXIST stocks;
CREATE TABLE stocks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	description TEXT,
	discount FLOAT UNSIGNED,
	product_id INT UNSIGNED,
	finished_at DATETIME NULL,
	started_at DATETIME NULL,
	created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX index_of_client_id (client_id),
    INDEX index_of_product_id (product_id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);


-- таблица11 складов продукции интернет магазина
DROP TABLE IF EXIST storehouses;
CREATE TABLE storehouses (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	product_id INT UNSIGNED,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX index_of_client_id (client_id),
    INDEX index_of_product_id (product_id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

-- таблица12 количества товаров на складе
DROP TABLE IF EXIST storehouses_products;
CREATE TABLE storehouses_product (
	id SERIAL PRIMARY KEY,
	product_id INT UNSIGNED,
	storehouse_id INT UNSIGNED,
	value INT UNSIGNED,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX index_of_client_id (client_id),
    INDEX index_of_product_id (product_id),
    FOREIGN KEY (product_id) REFERENCES products(id)
    FOREIGN KEY (storehouse_idd) REFERENCES storehouses(id)
);



