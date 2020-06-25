DROP DATABASE IF EXISTS wilds;
CREATE DATABASE wilds;

-- таблица1 каталога товаров интернет магазина
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR (255) NOT NULL
  )
COLLATE = 'utf8_unicode_ci'
ENGINE=InnoDB;

-- таблица2 клиентов интернет магазина
DROP TABLE IF EXISTS clients;
CREATE TABLE clients (
 	id SERIAL PRIMARY KEY,
    fullname VARCHAR(255) COLLATE 'utf8_unicode_ci',
    email VARCHAR(120) COLLATE 'utf8_unicode_ci',
    phone BIGINT UNIQUE, 
  	created_at DATETIME NOT NULL,
  	updated_at DATETIME NOT NULL,
  	INDEX fullname_idx (fullname),
  	INDEX client_phone_idx (phone)
  	)
COLLATE = 'utf8_unicode_ci'
ENGINE=InnoDB;


-- таблица3 адресов для доставки и самовывоза клиента
DROP TABLE IF EXISTS client_addresses;
CREATE TABLE client_addresses (
	id SERIAL PRIMARY KEY,
    address TEXT COLLATE 'utf8_unicode_ci',
    created_at DATETIME DEFAULT NOW(),
    type_adresses ENUM('courier delivery', 'pickup'),
    FOREIGN KEY (client_id) REFERENCES clients(id)
    )
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

-- таблица4 профилей клиента
DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
	client_phone_id SERIAL PRIMARY KEY,
    gender CHAR(1) COLLATE 'utf8_unicode_ci',
    birthday DATE,
    created_at DATETIME DEFAULT NOW(),
    hometown VARCHAR(100) COLLATE 'utf8_unicode_ci',
    FOREIGN KEY (client_id) REFERENCES clients(id)
    )
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

-- таблица5 с заказами клиентов
DROP TABLE IF EXISTS client_orders;
CREATE TABLE client_orders (
	id SERIAL PRIMARY KEY,
	client_id INT UNSIGNED,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX client_id_idx (client_id),
    FOREIGN KEY (client_id) REFERENCES clients(id)
    )
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

-- таблица6 с данными о доставках заказов
DROP TABLE IF EXISTS client_deliveries;
CREATE TABLE client_deliveries (
	PRIMARY KEY (client_id, order_id),
	client_id INT UNSIGNED, 
	order_id INT UNSIGNED,
    created_at DATETIME DEFAULT NOW(),
    address_id TEXT COLLATE 'utf8_unicode_ci', 
    date_deliver DATETIME NOT NULL,
    type_deliver ENUM('courier delivery', 'pickup'),
    FOREIGN KEY (order_id) REFERENCES client_orders(id),
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (address_id) REFERENCES client_addresses(id)
    )
COLLATE = 'utf8_unicode_ci'
ENGINE = InnoDB;

-- таблица7 продуктов интернет магазина
DROP TABLE IF EXISTS products;
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name varchar(255) COLLATE 'utf8_unicode_ci',
	description TEXT COLLATE 'utf8_unicode_ci',
	price DECIMAL (11,2),
	catalog_id INT UNSIGNED,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX catalog_id_idx (catalog_id),
    FOREIGN KEY (product_id) REFERENCES orders_products(id)
    )
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

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
    )
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

-- таблица9 персональных скидок клиента
DROP TABLE IF EXISTS personal_discount;
CREATE TABLE personal_discount (
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
    )
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;


-- таблица10 акционных скидок на товары
DROP TABLE IF EXIST stocks;
CREATE TABLE stocks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COLLATE 'utf8_unicode_ci',
	description TEXT COLLATE 'utf8_unicode_ci',
	discount FLOAT UNSIGNED,
	product_id INT UNSIGNED,
	finished_at DATETIME NULL,
	started_at DATETIME NULL,
	created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX index_of_client_id (client_id),
    INDEX index_of_product_id (product_id),
    FOREIGN KEY (product_id) REFERENCES products(id)
    )
    COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;


-- таблица11 складов продукции интернет магазина
DROP TABLE IF EXIST storehouses;
CREATE TABLE storehouses (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COLLATE 'utf8_unicode_ci',
	product_id INT UNSIGNED,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX index_of_client_id (client_id),
    INDEX index_of_product_id (product_id),
    FOREIGN KEY (product_id) REFERENCES products(id)
    )
    COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

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
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (storehouse_idd) REFERENCES storehouses(id)
    )
    COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;


