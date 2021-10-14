create database ProjectDB
go

--drop database ProjectDB

use ProjectDB
go

create table [Position](
	id char(5) primary key check(id like 'SP[0-9][0-9][0-9]'),
	[name] varchar(255)
)
--drop table Position
--insert into Position values('sp011' , '0813124123123','sdd')


create table Staff(
	id char(5) primary key check(id like 'ST[0-9][0-9][0-9]'),
	[name] varchar(255),
	gender varchar(255),
	email varchar(255) check(left(email,1) != '@' and (email like '%@gmail.com' or email like '%@yahoo.com' or email like '%@yahoo.co.id' )),
	positionID char(5) foreign key references [Position](id),
	phoneNumber varchar(255) check(phoneNumber not like '%[^0-9]%' and phoneNumber like '08%'),
	[address] varchar(255),
	salary int check(salary between 500000 and 5000000)
)

create table Vendor(
	id char(5) primary key check(id like 'VE[0-9][0-9][0-9]'),
	[name] varchar(255) check([name] like 'PT. %'),
	phoneNumber varchar(255),
	[address] varchar(255)
)

create table Ingredient(
	id char(5) primary key check(id like 'ID[0-9][0-9][0-9]'),
	[name] varchar(255),
	stock int,
	price  int
)

create table Customer(
	id char(5) primary key check(id like 'CU[0-9][0-9][0-9]'),
	[name] varchar(255),
	phoneNumber varchar(255) check(phoneNumber not like '%[^0-9]%' and phoneNumber like '08%'),
	[address] varchar(255),
	gender varchar(255),
	email varchar(255) check(left(email,1) != '@' and (email like '%@gmail.com' or email like '%@yahoo.com' or email like '%@yahoo.co.id' ))
)

create table Menu(
	id char(5) primary key check(id like 'ME[0-9][0-9][0-9]'),
	[name] varchar(255) check(len([name]) > 5),
	[description] varchar(255),
	price int
)

create table Purchase(
	id char(5) primary key check(id like 'PU[0-9][0-9][0-9]'),
	staffID char(5) foreign key references Staff(id),
	vendorID char(5) foreign key references Vendor(id),
	[date] date,
)

create table PurchaseDetail(
	purchaseID char(5)  foreign key references Purchase(id),
	ingredientID char(5) foreign key references Ingredient(id),
	quantity int,
	primary key(purchaseID, ingredientID)
)

create table ServiceTransaction(
	id char(5) primary key check(id like 'TR[0-9][0-9][0-9]'),
	staffID char(5) foreign key references Staff(id),
	customerID char(5) foreign key references Customer(id),
	[date] date,
	[type] varchar(255),
	[address] varchar(255)
)


create table ServiceTransactionDetail(
	serviceTransactionID char(5) foreign key references ServiceTransaction(id),
	menuID char(5) foreign key references Menu(id),
	pax int,
	primary key (serviceTransactionID, menuID)
)