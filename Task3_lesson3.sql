DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

insert into storehouses_products values
	(NULL, 2, 1253, 50, NOW(), NOW()),
    (NULL, 1, 165, 0, NOW(), NOW()),
    (NULL, 3, 211, 5, NOW(), NOW()),
    (NULL, 2, 217, 18, NOW(), NOW()),
    (NULL, 1, 215, 0, NOW(), NOW()),
    (NULL, 3, 1345, 3, NOW(), NOW());

select * from storehouses_products;

select value, if (value > 0, value, value+1000000) as sort from storehouses_products order by sort;
