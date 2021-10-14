use ProjectDB
go

--1
select [StaffName] = s.name, [PositionName] = p.name, [Total Activity] = count(*)
from Staff s
join Position p on p.id = s.positionID
join Purchase pr on pr.staffID = s.id
join ServiceTransaction st on st.staffID = s.id
where s.salary between 1000000 and 4000000
group by s.name, p.name
having count(*) > 2

--2
select [CustomerID] = c.id, [CustomerName] = c.name, [Pax Bought] = sum(std.pax)
from Customer c
join ServiceTransaction st on st.customerID = c.id
join ServiceTransactionDetail std on std.serviceTransactionID = st.id
where c.gender like 'Male' and month(st.date) <= 6
group by c.id, c.name

--3
select [IngredientName] = i.name, [Ingredient Bought] = sum(pcd.quantity), [Purchase Count] = count(*), [Total Expenses] = sum(i.stock * i.price)
from Purchase pc
join PurchaseDetail pcd on pcd.purchaseID = pc.id
join Ingredient i on i.id = pcd.ingredientID
where month(pc.date) % 2 = 0 and DATEPART(weekday, pc.date) between 2 and 5
group by i.name

--4
select [Staff First Name] = LEFT(s.name, CHARINDEX(' ', s.name)), [Transaction Count] = count(st.id), [Pax Sold] = sum(std.pax)
from Staff s
join ServiceTransaction st on st.staffID = s.id
join ServiceTransactionDetail std on std.serviceTransactionID = st.id
join Customer c on c.id = st.customerID
where RIGHT(s.id, 1) % 2 = 1 and RIGHT(c.id, 1) % 2 = 0
group by s.name

--5
select [Vendor Name] = SUBSTRING(v.name, 5, len(v.name)), [IngredientName] = i.name, [Ingredient Price] = 'Rp. ' + CONVERT(varchar, i.price)
from ( select averagePrice = avg(price)
	from Ingredient ) as [avg], Vendor v
join Purchase pc on pc.vendorID = v.id
join PurchaseDetail pcd on pcd.purchaseID = pc.id
join Ingredient i on i.id = pcd.ingredientID
group by v.name, i.name, i.price, [avg].averagePrice, i.stock
having i.price >= [avg].averagePrice and i.stock < 250

-- 6
select [CustomerName] = c.name, [TransactionDate] = CONVERT(varchar, st.date, 107), [MenuName] = m.name, [MenuPrice] = m.[price], [Brief Description] = left(m.description, CHARINDEX(' ', m.description)), [Pax] = std.pax, [Total Price] = m.price * std.pax
from ( select averagePrice = avg(price)
	from Menu ) AS [avg], Customer c
join ServiceTransaction st on  st.customerID = c.id
join ServiceTransactionDetail std on std.serviceTransactionID = st.id
join Menu m on m.id = std.menuID
where std.pax > 100
group by c.name, st.date, m.name, m.description, std.pax, m.price, [avg].averagePrice
having m.price > [avg].averagePrice

-- 7
select [Staff Name] = UPPER(s.[Name]), [Purchase Date] = CONVERT(varchar, pc.[Date], 107), [Quantity Bought] = CONVERT(varchar, pcd.Quantity) + ' pcs' 
from ( select maxPrice = max(price)
	from Ingredient ) AS [max], Staff s
join Purchase pc on pc.staffID = s.id
join PurchaseDetail pcd on pcd.purchaseID = pc.id
join Ingredient i on i.id = pcd.ingredientID
where month(pc.date) % 2 = 0
group by s.name, pc.date, [max].maxPrice, i.price, pcd.quantity
having i.price < [max].maxPrice

-- 8
select [CustomerName] = c.name, [Email] = SUBSTRING(c.email, 1, CHARINDEX('@', c.email) - 1), [Menu Name] = LOWER(m.name), [Pax Bought] = SUM(std.pax)  
from ( SELECT averagePax = avg(Pax)
	FROM ServiceTransactionDetail ) AS [avg], Customer c
join ServiceTransaction st on st.customerID = c.id
join ServiceTransactionDetail std on std.serviceTransactionID = st.id
join Menu m on m.id = std.menuID
where c.gender like 'Male'
group by c.name, c.email, m.name, [avg].averagePax, std.pax
having std.pax >= [avg].averagePax

-- 9
create view LoyalCustomerView as
select [CustomerName] = c.name, [Total Transaction] = COUNT(*), [Total Pax Purchased] = sum(std.pax), [Total Price] = SUM(std.pax * m.price)
from Customer c
join ServiceTransaction st on st.customerID = c.id
join ServiceTransactionDetail std on std.serviceTransactionID = st.id
join Menu m on m.id = std.menuID
where c.gender like 'Female'
group by c.name
having COUNT(*) > 2

--SELECT * FROM LoyalCustomerView

-- 10
create view VendorRecapView as
select [VendorName] = v.name, [Purchases Made] = COUNT(v.id), [Ingredients Purchased] = sum(pcd.quantity)
from Vendor v
join Purchase pc on pc.vendorID = v.id
join PurchaseDetail pcd on pcd.purchaseID = pc.id
join Ingredient i on i.id = pcd.ingredientID
where pcd.quantity > 150
group by v.name
having COUNT(v.id) > 1

--SELECT * FROM VendorRecapView