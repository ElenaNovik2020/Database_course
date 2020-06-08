DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-21'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Станислав', '1988-02-03'),
  ('Петр', '1998-03-12'),
  ('Елена', '1995-08-28'),
  ('Мария', '1997-05-19');

select Any_Value(name), dayofweek(concat(2020, substring(birthday_at, 5,6))) as  dayweek, count(*) from users group by dayweek;

