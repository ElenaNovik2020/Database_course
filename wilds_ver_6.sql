DROP DATABASE IF EXISTS wilds;
CREATE DATABASE wilds;

-- таблица 1 каталога товаров интернет магазина
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR (255) NOT NULL
  )
COLLATE = 'utf8_unicode_ci'
ENGINE=InnoDB;

-- таблица 2 клиентов интернет магазина
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


-- таблица 3 адресов для доставки и самовывоза клиента
DROP TABLE IF EXISTS client_addresses;
CREATE TABLE client_addresses (
	id SERIAL PRIMARY KEY,
	client_id INT UNSIGNED,
    address TEXT COLLATE 'utf8_unicode_ci',
    created_at DATETIME DEFAULT NOW(),
    type_address ENUM('courier delivery', 'pickup'),
    FOREIGN KEY (client_id) REFERENCES clients(id)
    )
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

-- таблица 4 профилей клиентов
DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
	client_id SERIAL PRIMARY KEY,
    gender CHAR(1) COLLATE 'utf8_unicode_ci',
    birthday DATE,
    created_at DATETIME DEFAULT NOW(),
    hometown VARCHAR(100) COLLATE 'utf8_unicode_ci',
    FOREIGN KEY (client_id) REFERENCES clients(id)
    )
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

-- таблица 5 с заказами клиентов
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	client_id INT UNSIGNED,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX client_id_idx (client_id),
    FOREIGN KEY (client_id) REFERENCES clients(id)
    )
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

-- таблица 6 с данными о доставках заказов
DROP TABLE IF EXISTS deliveries;
CREATE TABLE deliveries (
	PRIMARY KEY (order_id, address_id),
	order_id INT UNSIGNED,
	address_id TEXT COLLATE 'utf8_unicode_ci', 
    created_at DATETIME DEFAULT NOW(),
    date_deliver DATETIME NOT NULL,
    type_deliver ENUM('courier delivery', 'pickup'),
    FOREIGN KEY (order_id) REFERENCES client_orders(id),
    FOREIGN KEY (address_id) REFERENCES client_addresses(id)
    )
COLLATE = 'utf8_unicode_ci'
ENGINE = InnoDB;

-- таблица 7 товаров интернет магазина
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
    FOREIGN KEY (catalog_id) REFERENCES catalogs(id)
    )
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

-- таблица 8 количество заказанных товаров
DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
	id SERIAL PRIMARY KEY,
	product_id INT UNSIGNED,
	order_id INT UNSIGNED,
	total INT UNSIGNED DEFAULT 1,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX product_id_idx (product_id),
    FOREIGN KEY (product_id) REFERENCES products(id)
    )
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

-- таблица 9 персональной скидки клиента
DROP TABLE IF EXISTS personal_discount;
CREATE TABLE personal_discount (
	PRIMARY KEY (client_id, product_id),
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


-- таблица 10 акционных скидок на товары
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
	INDEX stocks_name_idx (name),
    FOREIGN KEY (product_id) REFERENCES products(id)
    )
    COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

-- таблица 11 количество выкупленных товаров
DROP TABLE IF EXISTS purchased_products;
CREATE TABLE purchased_products (
	id SERIAL PRIMARY KEY,
	product_id INT UNSIGNED,
	order_id INT UNSIGNED,
	quantity INT UNSIGNED DEFAULT 1,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX product_id_idx (product_id),
    FOREIGN KEY (product_id) REFERENCES products(id)
	FOREIGN KEY (order_id) REFERENCES orders(id)
    )
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;


-- таблица 12 склады продукции интернет магазина
DROP TABLE IF EXIST storehouses;
CREATE TABLE storehouses (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COLLATE 'utf8_unicode_ci',
	product_id INT UNSIGNED,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX product_idx (product_id),
	INDEX storehouse_name_idx (name),
    FOREIGN KEY (product_id) REFERENCES products(id)
    )
    COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

-- таблица 13 количество товарных позиций на складе
DROP TABLE IF EXIST storehouses_products;
CREATE TABLE storehouses_product (
	id SERIAL PRIMARY KEY,
	product_id INT UNSIGNED,
	storehouse_id INT UNSIGNED,
	value INT UNSIGNED,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (storehouse_id) REFERENCES storehouses(id)
    )
    COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;


