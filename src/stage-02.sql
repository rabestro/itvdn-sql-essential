-- Группировка данных. Объединения

-- Из таблицы Customers выберите сумму кредитных лимитов всех компаний
-- и присвойте выбранному значению алиас SumCreditLimit

select sum(creditlimit) as SumCreditLimit
from customers;

-- Выведите средний возраст всех продавцов под псевдонимом AvgAge

select avg(age) as AvgAge from salespeople;

-- Из таблицы Customers выберите номера служащих и количество компаний, обслуживаемых ими

select custrep, count(custnum)
from customers
group by custrep;

-- Выведите на экран номера служащего и количество компаний, обслуживаемых ими,
-- причем только тех служащих, кто обслуживает больше двух компаний

select custrep, count(custnum)
from customers
group by custrep
having count(custnum) > 2;

-- Выполните внутреннее объединение таблиц Customers и Salespeople (судя из связи между ними),
-- выбирая при этом только имя компании и возраст сотрудника, который ее обслуживает.

select company, age
from customers
join salespeople
on custrep = emplnum;

-- Выполните левое внешнее объединение таблицы Customers с таблицей Salespeople (аналогично прошлому заданию),
-- выбирая при этом название компании и имя сотрудника, который ее обслуживает

select company, name
from customers
left join salespeople
on custrep = emplnum;

-- Выполните правое внешнее объединение таблицы Customers с таблицей Salespeople,
-- выбирая при этом название компании, имя сотрудника, который ее обслуживает и его возраст.

select company, name, age
from customers
right join salespeople
on custrep = emplnum;

-- Выполните полное внешнее объединение таблицы Customers с таблицей Salespeople,
-- выбирая при этом кредитный лимит компании и имя сотрудника, который ее обслуживает

select creditlimit, name
from customers
full join salespeople
on custrep = emplnum;

-- Напишите запрос, который выполняет всевозможные сцепления строк из таблиц Customers и Salespeople
-- и выбирает названия компаний и имена продавцов

select company, name
from customers
cross join salespeople;

-- Напишите два запроса, каждый из которых будут выбирать поля Company и CreditLimit - один с
-- кредитным лимитом больше 60000, второй - кредитным лимитом меньше 20000, а затем объедините
-- результаты этих запросов в одну таблицу

select company, creditlimit
from customers
where creditlimit > 60000

union

select company, creditlimit
from customers
where creditlimit < 20000;

-- Напишите два запроса, все из которых будут выбирать из таблицы Customers поля Company и CreditLimit -
-- один с кредитным лимитом больше 40000, второй - кредитным лимитом меньше 60000, а затем выберите строки,
-- которые попали в результаты обоих запросов.

select company, creditlimit
from customers
where creditlimit > 40000

intersect

select company, creditlimit
from customers
where creditlimit < 60000;

-- Выведите имена продавцов и средний кредитный лимит компаний, ими обслуживаемых,
-- который превышает 25 000 (предполагая, что все продавцы имеют уникальные имена)

select name, avg(creditlimit)
from customers
join salespeople
on custrep = emplnum;
group by name
having avg(creditlimit) > 25000;