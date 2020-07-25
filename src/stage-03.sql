-- Вставка, обновление и удаление записей

-- Добавьте в таблицу Customers запись со следующими значениями:
-- Company = 'MyCompany', CustNum = 2200, CustRep = 101, CreditLimit = 15

insert into customers (company, custnum, custrep, creditlimit)
values ('MyCompany', 2200, 101, 15);

-- Добавьте в таблицу Salespeople запись со следующими значениями:
-- Name = 'John Smith', EmplNum= 130, Age = 23, Quota = 150

insert into salespeople (name, emplnum, age, quota)
values ('John Smith', 130, 23, 150);

-- Присвойте полю CreditLimit всех записей таблицы Customers значение 150

update customers
set creditlimit = 150;

-- Измените кредитный лимит клиента №2204 на значение 207

update customers
set creditlimit = 207
where custnum = 2204;

-- Удалите из таблицы Customers запись о клиенте №2200

delete from customers
where custnum = 2200;

-- Удалите все записи из таблицы Customers

delete from customers;