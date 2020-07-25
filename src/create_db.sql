create table customers
(
    custnum     integer
        primary key,
    company     nvarchar(80) not null,
    custrep     integer      not null,
    creditlimit numeric
);

create table salespeople
(
    emplnum integer
        primary key,
    name    nvarchar(255) not null,
    age     integer,
    quota   number(12, 2)
);

