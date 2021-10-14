use ProjectDB
go

-- DML Master 10 data

--Position
insert into Position (id, [name]) values ('SP001', 'CEO');
insert into Position (id, [name]) values ('SP002', 'Secretary');
insert into Position (id, [name]) values ('SP003', 'Treasurer');
insert into Position (id, [name]) values ('SP004', 'Promotion');
insert into Position (id, [name]) values ('SP005', 'Marketing');
insert into Position (id, [name]) values ('SP006', 'Inventory Manager');
insert into Position (id, [name]) values ('SP007', 'Head Chef');
insert into Position (id, [name]) values ('SP008', 'CHef');
insert into Position (id, [name]) values ('SP009', 'Supervisor');
insert into Position (id, [name]) values ('SP010', 'Cashier');

--Staff
insert into Staff (id, [name], gender, email, positionID, phoneNumber, [address], salary) values ('ST001', 'Berky Cann', 'Male', 'bcann@gmail.com', 'SP005', '087784365790', '903 Walton Drive', 1333489);
insert into Staff (id, [name], gender, email, positionID, phoneNumber, [address], salary) values ('ST002', 'Cornela Cockings', 'Female', 'ccockings@gmail.com', 'SP007', '082532911451', '64866 Bartillon Court', 731892);
insert into Staff (id, [name], gender, email, positionID, phoneNumber, [address], salary) values ('ST003', 'Ramon Jakubczyk', 'Male', 'rjakubczyk@gmail.com', 'SP010', '082756311392', '95195 Kingsford Way', 2730607);
insert into Staff (id, [name], gender, email, positionID, phoneNumber, [address], salary) values ('ST004', 'Will Howsego', 'Male', 'whowsego@gmail.com', 'SP003', '082152328830', '45 Farwell Street', 4681872);
insert into Staff (id, [name], gender, email, positionID, phoneNumber, [address], salary) values ('ST005', 'Kalina Beedie', 'Female', 'kbeedie@gmail.com', 'SP007', '081921769012', '01445 School Pass', 1670953);
insert into Staff (id, [name], gender, email, positionID, phoneNumber, [address], salary) values ('ST006', 'Sherwin Abson', 'Male', 'sabson@gmail.com', 'SP006', '081988335810', '4 Swallow Way', 3037968);
insert into Staff (id, [name], gender, email, positionID, phoneNumber, [address], salary) values ('ST007', 'Emanuel Baud', 'Male', 'ebaud@gmail.com', 'SP005', '081426047076', '629 Forest Dale Plaza', 4519707);
insert into Staff (id, [name], gender, email, positionID, phoneNumber, [address], salary) values ('ST008', 'Georgette How to preserve', 'Female', 'ghow@gmail.com', 'SP004', '088922345722', '6959 Saint Paul Court', 4885767);
insert into Staff (id, [name], gender, email, positionID, phoneNumber, [address], salary) values ('ST009', 'Teressa Yakebovich', 'Female', 'tyakebovich@gmail.com', 'SP007', '083283850730', '5043 Farragut Drive', 958407);
insert into Staff (id, [name], gender, email, positionID, phoneNumber, [address], salary) values ('ST010', 'Danita Barten', 'Female', 'dbarten@gmail.com', 'SP001', '088565184144', '9 Moose Pass', 3273279)

--Vendor
insert into Vendor (id, [name], phoneNumber, [address]) values ('VE001', 'PT. Plambee', '086918937886', '2904 Shelley Road');
insert into Vendor (id, [name], phoneNumber, [address]) values ('VE002', 'PT. Zoomzone', '083804718572', '4345 Montana Drive');
insert into Vendor (id, [name], phoneNumber, [address]) values ('VE003', 'PT. Babbleblab', '082969229817', '0 Bartillon Drive');
insert into Vendor (id, [name], phoneNumber, [address]) values ('VE004', 'PT. Youspan', '083515404713', '6 Fuller Center');
insert into Vendor (id, [name], phoneNumber, [address]) values ('VE005', 'PT. Yozio', '083544877883', '1139 Ronald Regan Circle');
insert into Vendor (id, [name], phoneNumber, [address]) values ('VE006', 'PT. Linktype', '087088525642', '99 6th Point');
insert into Vendor (id, [name], phoneNumber, [address]) values ('VE007', 'PT. Gigaclub', '082321925574', '64038 Mitchell Place');
insert into Vendor (id, [name], phoneNumber, [address]) values ('VE008', 'PT. Jaxnation', '083289382204', '54 Kingsford Avenue');
insert into Vendor (id, [name], phoneNumber, [address]) values ('VE009', 'PT. Pixoboo', '082322534946', '4 Homewood Way');
insert into Vendor (id, [name], phoneNumber, [address]) values ('VE010', 'PT. Eazzy', '086544005631', '29 Dixon Way');

--Ingredient
insert into Ingredient (id, [name], stock, price) values ('ID001', 'Muffin Orange Individual', 85, 447);
insert into Ingredient (id, [name], stock, price) values ('ID002', 'Olives - Green, Pitted', 140, 102);
insert into Ingredient (id, [name], stock, price) values ('ID003', 'Wine - Chateauneuf Du Pape', 219, 987);
insert into Ingredient (id, [name], stock, price) values ('ID004', 'Cheese - Augre Des Champs', 44, 192);
insert into Ingredient (id, [name], stock, price) values ('ID005', 'Limes', 123, 321);
insert into Ingredient (id, [name], stock, price) values ('ID006', 'Bread - Hamburger Buns', 272, 248);
insert into Ingredient (id, [name], stock, price) values ('ID007', 'Ostrich - Prime Cut', 173, 892);
insert into Ingredient (id, [name], stock, price) values ('ID008', 'Soup - French Can Pea', 426, 982);
insert into Ingredient (id, [name], stock, price) values ('ID009', 'Puree - Passion Fruit', 189, 391);
insert into Ingredient (id, [name], stock, price) values ('ID010', 'Eel - Smoked', 11, 680);

--Customer
insert into Customer (id, [name], phoneNumber, [address], gender, email) values ('CU001', 'Gelya Stanmer', '084363916857', '0253 West Center', 'Female', 'gstanmer@gmail.com');
insert into Customer (id, [name], phoneNumber, [address], gender, email) values ('CU002', 'Daphna Spenton', '084186983198', '27 Algoma Point', 'Female', 'dspenton@gmail.com');
insert into Customer (id, [name], phoneNumber, [address], gender, email) values ('CU003', 'Abner Dunican', '086319503709', '5103 Almo Street', 'Male', 'adunican@gmail.com');
insert into Customer (id, [name], phoneNumber, [address], gender, email) values ('CU004', 'Laural Trunby', '085977084716', '7 Hoepker Plaza', 'Female', 'ltrunby@gmail.com');
insert into Customer (id, [name], phoneNumber, [address], gender, email) values ('CU005', 'Perry Moulster', '086839467082', '75 Meadow Valley Plaza', 'Male', 'pmoulster@gmail.com');
insert into Customer (id, [name], phoneNumber, [address], gender, email) values ('CU006', 'Alvy Greg', '089408979150', '04 Trailsway Plaza', 'Male', 'agreg@gmail.com');
insert into Customer (id, [name], phoneNumber, [address], gender, email) values ('CU007', 'Conchita Foulkes', '081284162665', '861 Logan Way', 'Female', 'cfoulkes@gmail.com');
insert into Customer (id, [name], phoneNumber, [address], gender, email) values ('CU008', 'Mureil Lissenden', '086003523601', '6 Summer Ridge Crossing', 'Female', 'mlissenden@gmail.com');
insert into Customer (id, [name], phoneNumber, [address], gender, email) values ('CU009', 'Lorrie Pleager', '084963848869', '53 Monterey Drive', 'Male', 'lpleager@gmail.com');
insert into Customer (id, [name], phoneNumber, [address], gender, email) values ('CU010', 'Seymour Ost', '087157122875', '171 Acker Terrace', 'Male', 'sost@gmail.com');

--Menu
insert into Menu (id, [name], [description], price) values ('ME001', 'Banana Smoothie', 'Nice to drink on a how weather', 31903);
insert into Menu (id, [name], [description], price) values ('ME002', 'V8 - Berry Blend', 'Specially brewed V8 berry blend', 37586);
insert into Menu (id, [name], [description], price) values ('ME003', 'Pop - Club Soda Can', 'Explosive taste down your throat', 91593);
insert into Menu (id, [name], [description], price) values ('ME004', 'Tomatoes Salad', 'For tomatoes lover', 44577);
insert into Menu (id, [name], [description], price) values ('ME005', 'Onion Fried Baby Cabbage', 'Crunchy vegetables with fried onion', 18380);
insert into Menu (id, [name], [description], price) values ('ME006', 'Fried Chicken Rice', 'Classic original fried chicken rice', 3912);
insert into Menu (id, [name], [description], price) values ('ME007', 'Sambal Matah Chicken', 'Deep Fried Chicken with spicy Balinese chili', 58823);
insert into Menu (id, [name], [description], price) values ('ME008', 'Nachos', 'Tortilla served with cheese on top', 56603);
insert into Menu (id, [name], [description], price) values ('ME009', 'Rice', 'A bowl of rice', 1000);
insert into Menu (id, [name], [description], price) values ('ME010', 'Swiss Cheese', 'Cold cheese served with milk', 73458);

-- Transaction (15 data)
--Purchase
insert into Purchase (id, staffID, vendorID, [date]) values ('PU001', 'ST001', 'VE001', '2020-04-10');
insert into Purchase (id, staffID, vendorID, [date]) values ('PU002', 'ST002', 'VE002', '2020-11-22');
insert into Purchase (id, staffID, vendorID, [date]) values ('PU003', 'ST003', 'VE003', '2020-07-10');
insert into Purchase (id, staffID, vendorID, [date]) values ('PU004', 'ST004', 'VE004', '2020-08-14');
insert into Purchase (id, staffID, vendorID, [date]) values ('PU005', 'ST005', 'VE005', '2020-08-18');
insert into Purchase (id, staffID, vendorID, [date]) values ('PU006', 'ST006', 'VE006', '2020-08-26');
insert into Purchase (id, staffID, vendorID, [date]) values ('PU007', 'ST007', 'VE007', '2020-08-14');
insert into Purchase (id, staffID, vendorID, [date]) values ('PU008', 'ST008', 'VE008', '2020-11-10');
insert into Purchase (id, staffID, vendorID, [date]) values ('PU009', 'ST009', 'VE009', '2020-03-20');
insert into Purchase (id, staffID, vendorID, [date]) values ('PU010', 'ST010', 'VE010', '2020-12-18');
insert into Purchase (id, staffID, vendorID, [date]) values ('PU011', 'ST001', 'VE006', '2020-09-21');
insert into Purchase (id, staffID, vendorID, [date]) values ('PU012', 'ST002', 'VE001', '2020-08-11');
insert into Purchase (id, staffID, vendorID, [date]) values ('PU013', 'ST003', 'VE002', '2020-05-03');
insert into Purchase (id, staffID, vendorID, [date]) values ('PU014', 'ST005', 'VE009', '2020-10-15');
insert into Purchase (id, staffID, vendorID, [date]) values ('PU015', 'ST005', 'VE009', '2020-10-27');

--ServiceTransaction
insert into ServiceTransaction (id, staffID, customerID, date, type, address) values ('TR001', 'ST001', 'CU001', '2020-03-30', 'Daily', '78999 Springs Circle');
insert into ServiceTransaction (id, staffID, customerID, date, type, address) values ('TR002', 'ST002', 'CU002', '2020-09-17', 'Weekly', '3012 Corben Terrace');
insert into ServiceTransaction (id, staffID, customerID, date, type, address) values ('TR003', 'ST003', 'CU003', '2020-01-19', 'Daily', '48 Rowland Place');
insert into ServiceTransaction (id, staffID, customerID, date, type, address) values ('TR004', 'ST004', 'CU004', '2020-10-03', 'Daily', '897 Kenwood Hill');
insert into ServiceTransaction (id, staffID, customerID, date, type, address) values ('TR005', 'ST005', 'CU005', '2020-11-20', 'Weekly', '41 Maryland Point');
insert into ServiceTransaction (id, staffID, customerID, date, type, address) values ('TR006', 'ST006', 'CU006', '2020-03-12', 'Monthly', '05 Bluestem Drive');
insert into ServiceTransaction (id, staffID, customerID, date, type, address) values ('TR007', 'ST007', 'CU007', '2020-08-05', 'Daily', '078 Memorial Alley');
insert into ServiceTransaction (id, staffID, customerID, date, type, address) values ('TR008', 'ST008', 'CU008', '2020-04-28', 'Monthly', '37 North Drive');
insert into ServiceTransaction (id, staffID, customerID, date, type, address) values ('TR009', 'ST009', 'CU009', '2020-08-27', 'Daily', '2 Corben Street');
insert into ServiceTransaction (id, staffID, customerID, date, type, address) values ('TR010', 'ST010', 'CU010', '2020-05-28', 'Weekly', '9 Crownhardt Court');
insert into ServiceTransaction (id, staffID, customerID, date, type, address) values ('TR011', 'ST001', 'CU002', '2020-11-13', 'Daily', '312 Comanche Junction');
insert into ServiceTransaction (id, staffID, customerID, date, type, address) values ('TR012', 'ST002', 'CU003', '2020-06-24', 'Monthly', '37104 Ridgeway Alley');
insert into ServiceTransaction (id, staffID, customerID, date, type, address) values ('TR013', 'ST003', 'CU004', '2020-06-28', 'Weekly', '54419 Namekagon Junction');
insert into ServiceTransaction (id, staffID, customerID, date, type, address) values ('TR014', 'ST004', 'CU005', '2020-02-27', 'Weekly', '0 Cottonwood Road');
insert into ServiceTransaction (id, staffID, customerID, date, type, address) values ('TR015', 'ST005', 'CU006', '2020-06-17', 'Daily', '55179 Sage Trail');

-- Transaction Detail (25 data)
--PurchaseDetail
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU001', 'ID003', 762);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU001', 'ID005', 523);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU002', 'ID010', 587);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU002', 'ID001', 305);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU003', 'ID007', 114);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU004', 'ID004', 714);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU004', 'ID010', 114);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU005', 'ID009', 510);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU006', 'ID004', 969);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU007', 'ID007', 666);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU007', 'ID004', 236);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU007', 'ID010', 506);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU008', 'ID008', 404);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU009', 'ID010', 682);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU009', 'ID004', 400);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU010', 'ID001', 955);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU011', 'ID009', 811);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU011', 'ID001', 531);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU011', 'ID002', 231);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU012', 'ID009', 980);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU013', 'ID006', 505);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU013', 'ID008', 205);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU014', 'ID003', 952);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU015', 'ID004', 159);
insert into PurchaseDetail (purchaseID, ingredientID, quantity) values ('PU015', 'ID002', 779);

--ServiceTransactionDetail
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR001', 'ME010', 1067);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR001', 'ME005', 319);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR002', 'ME008', 215);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR002', 'ME002', 154);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR003', 'ME010', 548);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR004', 'ME001', 642);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR005', 'ME010', 650);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR005', 'ME009', 222);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR006', 'ME010', 1252);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR006', 'ME008', 828);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR007', 'ME008', 829);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR008', 'ME008', 765);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR009', 'ME003', 999);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR009', 'ME009', 67);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR009', 'ME005', 1326);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR010', 'ME008', 937);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR011', 'ME008', 155);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR011', 'ME001', 192);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR011', 'ME010', 177);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR012', 'ME008', 1410);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR013', 'ME001', 971);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR013', 'ME002', 29);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR014', 'ME009', 48);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR015', 'ME010', 847);
insert into ServiceTransactionDetail (serviceTransactionID, menuID, pax) values ('TR015', 'ME007', 199);