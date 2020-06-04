DROP DATABASE IF EXISTS `wildsberries`;
CREATE DATABASE `wildsberries`;

DROP TABLE IF EXISTS `catalogs`;
CREATE TABLE `catalogs` (
  `id` SERIAL primary key,
  `name` VARCHAR (255) NOT NULL,
);

DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
 	`id` SERIAL PRIMARY KEY,
    `fullname` VARCHAR(255),
    `email` VARCHAR(255),
    `phone` BIGINT UNIQUE, 
  	`registerDate` DATETIME NOT NULL,
  	`lastvisitDate` DATETIME NOT NULL,
  	INDEX `idx_fullname` (`fullname`),
  	INDEX `client_phone_idx`(`phone`)
);


DROP TABLE IF EXISTS `client_addresses`;
CREATE TABLE `client_addresses` (
	`id` SERIAL PRIMARY KEY,
    `address` TEXT,
    `created_at` DATETIME DEFAULT NOW(),
    `hometown` VARCHAR(100),
    FOREIGN KEY (`client_id`) REFERENCES `clients`(id)
);

DROP TABLE IF EXISTS `client_type_addresses`;
CREATE TABLE `client_addresses` (
	`id` SERIAL PRIMARY KEY,
    `address` TEXT,
    `created_at` DATETIME DEFAULT NOW(),
    `hometown` VARCHAR(100),
    FOREIGN KEY (`client_id`) REFERENCES `clients`(id)
);

DROP TABLE IF EXISTS `clients_personal_inf`;
CREATE TABLE `clients_personal_inf` (
	`client_phone_idx` SERIAL PRIMARY KEY,
    `gender` CHAR(1),
    `birthday` DATE,
    `created_at` DATETIME DEFAULT NOW(),
    FOREIGN KEY (`client_phone_idx`) REFERENCES `clients`(`phone`)
);

DROP TABLE IF EXISTS `clients_orders`;
CREATE TABLE `clients_orders` (
	`id` SERIAL PRIMARY KEY,
	`client_id` INT UNSIGNED,
    `created_at` DATETIME DEFAULT NOW(),
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX `index_of_client_id` (client_id),
    FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) 
);

DROP TABLE IF EXISTS `clients_deliveries`;
CREATE TABLE `clients_deliveries` (
	`id` SERIAL PRIMARY KEY,
	`client_id` INT UNSIGNED, 
	`order_id` INT UNSIGNED,
    `created_at` DATETIME DEFAULT NOW(),
    `address_id` TEXT, 
    `date_del` DATETIME,
    `type_del` ENUM('courier delivery', 'pickup'),
    FOREIGN KEY (`order_id`) REFERENCES `client_orders`(`id`),
    FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`),
    FOREIGN KEY (`address_id`) REFERENCES `client_addresses`(`id`)  
);

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
	`id` SERIAL PRIMARY KEY,
	`name` varchar(255),
	`description` text,
	`price` DECIMAL (11,2),
	`catalog_id` INT UNSIGNED,
    `created_at` DATETIME DEFAULT NOW(),
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `key index_of_catalog_id` (catalog_id),
    FOREIGN KEY (`product_id`) REFERENCES `orders_products`(`id`)
);

DROP TABLE IF EXISTS `orders_products`;
CREATE TABLE `orders_products` (
	`id` SERIAL PRIMARY KEY,
	`order_id` INT UNSIGNED,
	`product_id` INT UNSIGNED,
	`total` INT UNSIGNED DEFAULT 1,
    `created_at` DATETIME DEFAULT NOW(),
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX `index_of_catalog_id` (`catalog_id`),
    FOREIGN KEY (`order_id`) REFERENCES `client_orders`(`id`)
);


DROP TABLE IF EXISTS `personal_discount`;
CREATE TABLE `products` (
	`id` SERIAL PRIMARY KEY,
	`client_id` INT unsigned,
	`product_id` INT UNSIGNED,
	`discount` FLOAT UNSIGNED,
	`created_at` DATETIME DEFAULT NOW(),
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX `index_of_client_id` (`client_id`),
    INDEX `index_of_product_id` (`product_id`),
    FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`),
    FOREIGN KEY (`product_id`) REFERENCES `orders_products`(`id`)
);

DROP TABLE IF EXIST `stocks`;
CREATE TABLE `stocks` (
	`id` SERIAL PRIMARY KEY,
	`name` VARCHAR(255),
	`description` TEXT,
	`discount` FLOAT UNSIGNED,
	`product_id` INT UNSIGNED,
	`finished_at` DATETIME NULL,
	`started_at` DATETIME NULL,
	`created_at` DATETIME DEFAULT NOW(),
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX `index_of_client_id` (`client_id`),
    INDEX `index_of_product_id` (`product_id`),
    FOREIGN KEY (`product_id`) REFERENCES `products`(`id`)
);


