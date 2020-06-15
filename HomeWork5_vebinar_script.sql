SELECT initiator_user_id FROM friend_requests WHERE target_user_id = 1 and status = 'appoved';
SELECT target_user_id FROM friend_requests WHERE initiator_user_id = 1 and status = 'appoved';

SELECT id, COUNT(*), from_user_id, to_user_id FROM messages WHERE from_user_id IN 
(SELECT * FROM friend_requests WHERE (initiator_user_id = 1 or target_user_id = 1) and status = 'appoved') 
UNION 
SELECT id FROM messages WHERE to_user_id in 
(SELECT * FROM friend_requests WHERE (initiator_user_id = 1 or target_user_id = 1) and status = 'appoved')

-- Задания Вебинара.
-- Задание 1. Сложно сформулировать корректировки, то, что было рассмотрено на уроке понятно, 
-- но при выполнении домашнего задания возникло много трудностей, многие задания выполнены не так, как, наверное, должны.
-- Просьба разобрать это домашнее задание на вебинаре подробно. Спасибо.
-- Задание 2.
-- Из всех друзей пользователя, например user_id = 1, найти человека, который больше общался с user_id = 1.
SELECT id, firstname, lastname from users 
WHERE id = (SELECT to_user_id from messages 
WHERE to_user_id IN (
SELECT initiator_user_id FROM friend_requests WHERE target_user_id = 1 AND status = 'appoved'
UNION 
SELECT target_user_id FROM friend_requests WHERE initiator_user_id = 1 AND status = 'appoved'
) ORDER BY to_user_id LIMIT 1);

-- Задание 3.
-- Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
-- Я брала пользователей, которые старше 18 лет.
SELECT user_id, COUNT(*) FROM likes WHERE user_id IN (
SELECT * FROM (
(SELECT user_id FROM profiles WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) >=18 LIMIT 10)
) as young_age
) GROUP BY user_id WITH ROLLUP;



-- Задание 4.
-- Определение кто больше поставил лайков male или female:
SELECT user_id, COUNT(*) FROM likes WHERE user_id IN (
SELECT * FROM (
(SELECT user_id FROM profiles WHERE gender = 'm')
) as male
) GROUP BY user_id WITH ROLLUP
UNION
SELECT user_id, COUNT(*) FROM likes WHERE user_id IN (
SELECT * FROM (
(SELECT user_id FROM profiles WHERE gender = 'f')
) as female
) GROUP BY user_id WITH ROLLUP;

--
SELECT user_id, COUNT(*) FROM likes WHERE user_id IN (
SELECT * FROM (
(SELECT user_id, case(gender)
	WHEN 'm' then FROM profiles WHERE gender = 'm')
) as male
) GROUP BY user_id WITH ROLLUP

-- Задание 5.
-- Поиск 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
-- не получилось ((
SELECT  COUNT(*), user_id FROM media, likes, messages ORDER BY COUNT(*)  LIMIT 10
SELECT  COUNT(*) as count_likes, user_id FROM likes GROUP BY user_id ORDER BY COUNT(*)  LIMIT 10
SELECT  COUNT(*) as count_messages, user_id FROM messages GROUP BY user_id ORDER BY COUNT(*)  LIMIT 10

