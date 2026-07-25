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



create table product(
   idproduct serial primary key,
   idcategory integer not null references category(idcategory),
   idsupplier integer not null references supplier(idsupplier),
   name varchar(50) not null,
   size varchar(20),
   color varchar(30),
   price numeric(10,2) not null,
   stock integer not null default 0
);



create table sale(
   idsale serial primary key,
   idcustomer integer not null references customer(idcustomer),
   idemployee integer not null references employee(idemployee),
   date date not null default current_date,
   total numeric(10,2) not null
);



create table sale_detail(
   iddetail serial primary key,
   idproduct integer not null references product(idproduct),
   idsale integer not null references sale(idsale),
   quantity integer not null,
   subtotal numeric(10,2) not null
);
