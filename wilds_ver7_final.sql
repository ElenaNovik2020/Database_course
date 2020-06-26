DROP DATABASE IF EXISTS wilds;
CREATE DATABASE wilds;
USE wilds;

-- таблица 1 каталога товаров интернет магазина
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR (255) NOT NULL
  );

-- таблица 2 клиентов интернет магазина
DROP TABLE IF EXISTS clients;
CREATE TABLE clients (
 	id SERIAL PRIMARY KEY,
    fullname VARCHAR(255) NOT NULL,
    email VARCHAR(120) UNIQUE,
    phone BIGINT NOT NULL UNIQUE, 
  	created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  	INDEX fullname_idx (fullname),
  	INDEX client_phone_idx (phone)
  	);

-- таблица 3 адресов для доставки и самовывоза клиента
DROP TABLE IF EXISTS client_addresses;
CREATE TABLE client_addresses (
	id SERIAL PRIMARY KEY,
	client_id BIGINT UNSIGNED NOT NULL,
    address TEXT,
    created_at DATETIME DEFAULT NOW(),
    type_address ENUM ('courier delivery', 'pickup'),
    FOREIGN KEY (client_id) REFERENCES clients (id)
    );

-- таблица 4 профилей клиентов
DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
	client_id SERIAL PRIMARY KEY,
    gender ENUM ('M','F') NOT NULL,
    birthday DATE,
    created_at DATETIME DEFAULT NOW(),
    city VARCHAR(100) ,
    FOREIGN KEY (client_id) REFERENCES clients (id)
    );

-- таблица 5 с заказами клиентов
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	client_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (client_id) REFERENCES clients (id)
    );
    
    -- таблица 6 с данными о доставках заказов
DROP TABLE IF EXISTS deliveries;
CREATE TABLE deliveries (
	PRIMARY KEY (order_id, address_id),
	order_id BIGINT UNSIGNED NOT NULL,
	address_id BIGINT UNSIGNED NOT NULL, 
    created_at DATETIME DEFAULT NOW(),
    date_deliver DATE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders (id),
    FOREIGN KEY (address_id) REFERENCES client_addresses (id),
    INDEX date_deliver_idx (date_deliver)
    );

-- таблица 7 товаров интернет магазина
DROP TABLE IF EXISTS products;
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	description TEXT,
	price DECIMAL (11,2),
	catalog_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (catalog_id) REFERENCES catalogs (id)
    );

-- таблица 8 количество заказанных/выкупленных товаров
DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
	PRIMARY KEY (product_id, order_id),
	product_id BIGINT UNSIGNED NOT NULL,
	order_id BIGINT UNSIGNED NOT NULL,
    purchased ENUM ('Yes', 'No') NOT NULL,
	quantity_ordered INT UNSIGNED DEFAULT 1 NOT NULL,
    quantity_purchased INT UNSIGNED DEFAULT 1 NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products (id),
    FOREIGN KEY (order_id) REFERENCES orders (id)
    );

-- таблица 9 персональной скидки клиента
DROP TABLE IF EXISTS personal_discount;
CREATE TABLE personal_discount (
	client_id SERIAL PRIMARY KEY,
	personal_discount FLOAT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (client_id) REFERENCES clients(id)
    );


-- таблица 10 акционных скидок на товары
DROP TABLE IF EXISTS stocks;
CREATE TABLE stocks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	description TEXT,
	discount FLOAT UNSIGNED,
	product_id BIGINT UNSIGNED NOT NULL,
	finished_at DATETIME NULL,
	started_at DATETIME NULL,
	created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	INDEX stocks_name_idx (name),
    FOREIGN KEY (product_id) REFERENCES products(id)
    );

-- таблица 11 склады товаров интернет магазина
DROP TABLE IF EXISTS storehouses;
CREATE TABLE storehouses (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) ,
	product_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX product_idx (product_id),
	INDEX storehouse_name_idx (name),
    FOREIGN KEY (product_id) REFERENCES products (id)
    );

-- таблица 12 количество товарных позиций на складе
DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_product (
	id SERIAL PRIMARY KEY,
	product_id BIGINT UNSIGNED NOT NULL,
	storehouse_id BIGINT UNSIGNED NOT NULL,
	value INT UNSIGNED,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products (id),
    FOREIGN KEY (storehouse_id) REFERENCES storehouses (id)
    );



    
    

