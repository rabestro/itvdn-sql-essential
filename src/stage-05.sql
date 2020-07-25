
-- Создайте таблицу TestTable с двумя полями типа INT: field1 и field2,
-- второе поле является необязательным для ввода, а первое – с автоинкрементом.
-- После создания добавьте в эту таблицу три записи одним запросом, присваивающие
-- полю field2 значения 1, 2 и 3 соответственно

create table testtable (
   field1 int primary key,
   field2 int
);

insert into testtable (field2) values (1), (2), (3);

