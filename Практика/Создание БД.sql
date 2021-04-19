use Baltika;
create table Ship (
RegNumber Varchar(11) primary key not null,
Name Varchar(60) not null,
Skipper Varchar(60) not null,
ShipType Varchar(15) not null,
Capacity float not null,
BuildYear integer check (BuildYear > 0 and BuildYear < 9999) not null);

create table Port (
ID_Port Integer Identity(1,1) primary key not null,
City Varchar(35) not null,
Country Varchar(60) not null );


create table Shipment (
CustomNumber Varchar(24) primary key not null,
ShipNumber Varchar(11) not null
foreign key references Ship(RegNumber),
DepartureDate DateTime not null,
ArriveDate DateTime not null,
OriginPort Integer not null
foreign key references Port(ID_Port),
DestinationPort Integer not null
foreign key references Port(ID_Port));

create table Sender (
ID_Sender Integer Identity(1,1) primary key not null,
SenderName Varchar(60) not null,
INNSender Varchar(12) not null,
BankSender Varchar(60) not null,
AddressSender Varchar(80) not null);

create table Consignee (
ID_Consignee Integer Identity(1,1) primary key not null,
ConsigneeName Varchar(60) not null,
INNConsignee Varchar(12) not null,
BankConsignee Varchar(60) not null,
AddressConsignee Varchar(80) not null);

create table Cargo (
ID_Cargo Integer Identity(1,1) primary key not null,
CargoName Varchar(30) not null,
ShipmentCustomNumber Varchar(24) not null
foreign key references Shipment(CustomNumber),
Unit Varchar(15) not null,
InsureValue Float not null,
ID_Sender Integer not null
foreign key references Sender(ID_Sender),
ID_Consignee Integer not null
foreign key references Consignee(ID_Consignee));

create table RouteList (
ID_Route Integer Identity(1,1) primary key not null,
ShipNumber Varchar(11) not null
foreign key references Ship(RegNumber),
RouteDate Date not null);

create table Stopping (
ID_Stopping Integer Identity(1,1) primary key not null,
ID_Route Integer not null
foreign key references RouteList(ID_Route),
ArriveDate DateTime not null,
DepartureDate DateTime not null,
PortNumber Integer not null
foreign key references Port(ID_Port));

create table Shedule (
ID_Shedule Integer primary key not null,
ID_Stopping Integer not null
foreign key references Stopping(ID_Stopping),
CustomNumber Varchar(24) not null
foreign key references Shipment(CustomNumber),
ID_Cargo Integer not null
foreign key references Cargo(ID_Cargo),
Is_Loading Bit not null);
