CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
  );
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('Геннадий', '1990-10-05', '1991-10-05', '1992-10-05'),
  ('Наталья', '1984-11-12', '1985-11-12', '1985-11-12'),
  ('Александр', '1985-05-20', '1986-05-20', '1987-05-20'),
  ('Сергей', '1988-02-14', '1989-02-14', '1990-02-14'),
  ('Иван', '1998-01-12', '1999-01-12', '2000-01-12'),
  ('Мария', '1992-08-29', '1993-08-29', '1994-08-29');
  
select * from users;
describe users;  

CREATE TABLE users_new (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

insert into 
	users_new
select 
	NULL, name, birthday_at, substring(created_at, 1, 10) as created_at, substring(updated_at, 1,10) as updated_at from users;

select * from users_new;
describe users_new;
Drop table users;
alter table users_new rename users;
