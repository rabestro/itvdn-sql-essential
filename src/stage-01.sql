-- Выборка записей из базы

select * from customers;

select name from salespeople;

select emplnum, name from salespeople;

select name as "Name and Surname" from salespeople;

select company, creditlimit
from customers
where creditlimit > 50000;

select company, creditlimit
from customers
where creditlimit between 50000 and 60000;

select company, creditlimit
from customers
where creditlimit < 30000 or creditlimit > 60000;

-- Выберите названия и кредитные лимиты компаний «JCP Inc.», «First Corp.», «Solomon Inc.».
-- Не рекомендуется использование логических операторов.

select company, creditlimit
from customers
where company in ('JCP Inc.', 'First Corp.', 'Solomon Inc.');

select custrep, company, creditlimit
from customers
where custrep between 105 and 110
order by custrep;

select company, creditlimit
from customers
where company like '_e%';

