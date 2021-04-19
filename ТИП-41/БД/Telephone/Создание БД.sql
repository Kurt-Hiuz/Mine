create database Telephone;
use telephone;
create table Posts (
Name_post varchar(50) Primary key not null,
Descr varchar(250)
);

create table Departments (
Name_department varchar(50) Primary key not null,
Descr varchar(250),
Minutes_talked integer not null
);

create table Workers (
ID_worker integer IDENTITY(1,1) Primary key,
Name_worker varchar(60) not null,
Department varchar(50) not null
foreign key references Departments(Name_department),
Post varchar(50) not null
foreign key references Posts(Name_post),
Telephone_num varchar(15) not null,
Minutes_talked integer not null,
);

create table Clients (
ID_client integer IDENTITY(1,1) Primary key,
Name_client varchar(50),
Telephone_num varchar(15) not null
);

create table Call (
ID_call integer IDENTITY(1,1) Primary key,
Client_ID integer
foreign key references Clients(ID_client),
ID_worker integer
foreign key references Workers(ID_worker),
Minutes_talked integer not null
);