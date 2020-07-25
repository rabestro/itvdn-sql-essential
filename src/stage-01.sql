-- Выборка записей из базы

-- Выведите все данные из таблицы Customers

select * from customers;

-- Выведите поле Name таблицы Salespeople

select name from salespeople;

-- Выведите поля EmplNum и Name таблицы Salespeople

select emplnum, name from salespeople;

-- Выведите колонку Name таблицы Salespeople таким образом, чтобы она называлась Name and Surname

select name as "Name and Surname" from salespeople;

-- Выберите из таблицы Customers названия компаний и их кредитный лимит, превышающий 50 000

select company, creditlimit
from customers
where creditlimit > 50000;

-- Выберите название компаний и их кредитные лимиты, которые принадлежат промежутку от 50000 (включительно)
-- до 60000 (тоже включительно). Рекомендуется использование логических операторов.

select company, creditlimit
from customers
where creditlimit between 50000 and 60000;

-- Выберите из таблицы Customers названия компаний и их кредитный лимит, превышающий 60 000 или меньше 30 000.
-- Рекомендуется использование логических операторов.

select company, creditlimit
from customers
where creditlimit < 30000 or creditlimit > 60000;

-- Выберите названия и кредитные лимиты компаний «JCP Inc.», «First Corp.», «Solomon Inc.».
-- Не рекомендуется использование логических операторов.

select company, creditlimit
from customers
where company in ('JCP Inc.', 'First Corp.', 'Solomon Inc.');

-- Выберите id обслуживающего сотрудника, названия и кредитные лимиты компаний,
-- id обслуживающего сотрудника которых лежит в пределах от 105 до 110 включительно.
-- Отсортируйте результат по полю, хранящему id обслуживающего сотрудника, по возрастанию.
-- Не рекомендуется использование логических операторов.

select custrep, company, creditlimit
from customers
where custrep between 105 and 110
order by custrep;

-- Выберите названия и кредитные лимиты компаний, в названии которых вторая буква ‘e’

select company, creditlimit
from customers
where company like '_e%';
