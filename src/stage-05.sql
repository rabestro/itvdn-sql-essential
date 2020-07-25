
-- Создайте таблицу TestTable с двумя полями типа INT: field1 и field2,
-- второе поле является необязательным для ввода, а первое – с автоинкрементом.
-- После создания добавьте в эту таблицу три записи одним запросом, присваивающие
-- полю field2 значения 1, 2 и 3 соответственно

create table testtable (
   field1 int primary key,
   field2 int
);

insert into testtable (field2) values (1), (2), (3);

-- Найдите и исправьте ошибки (в предположении,
-- что у таблицы TestTable уже есть столбцы и строки)


-- Напишите команду, которая изменяет тип данных поля NewField, которое мы добавляли
-- в таблицу TestTable в прошлом задании, на VARCHAR(5)

ALTER TABLE testtable
ALTER COLUMN newfield varchar(5);

