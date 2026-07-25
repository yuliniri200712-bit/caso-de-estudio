create table category(
   idcategory serial primary key,
   name varchar(50) not null
);





create table supplier(
   idsupplier serial primary key,
   name varchar(50) not null,
   phone integer not null
);



create table customer(
   idcustomer serial primary key,
   name varchar(50) not null,
   phone integer not null
);


create table employee(
   idemployee serial primary key,
   name varchar(50) not null,
   post varchar
);