-- Подзапросы

-- Выберите названия всех компаний, обслуживаемые продавцом Bob Smith, используя подзапрос

select company
from customers
where custrep = (
    select emplnum
    from salespeople
    where name = 'Bob Smith'
);

-- Выберите названия компаний, для которых продавец, их обслуживающий, имеет квоту больше 300 000

select company
from customers
where custrep in (
    select emplnum
    from salespeople
    where quota > 300000
);

-- Найдите и исправьте ошибки в запросе

SELECT Company, (
    SELECT Name
    FROM Salespeople s
    WHERE s.EmplNum = c.CustRep) AS Name
FROM Customers c
WHERE CreditLimit < 30000

-- Создайте курсор myCursor, который будет перемещаться по всем полям таблицы Customers

DECLARE myCursor CURSOR SCROLL FOR
SELECT * FROM customers;