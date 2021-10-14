# Catering-delVia

Catering delVia is a catering services managed by your friend, Via. Via manage all of activities that belongs to Catering delVia like providing catering services to customer and purchasing ingredients from vendors.

To improve Catering delVia’s management, Via hired you as a database administrator are required to analyze and design a database for Bob’s shop using SQL Server Management Studio.

	Every staff that hired by Catering delVia have a task to serve a customer who use the service and purchase an ingredient from a vendor.
  
  The tasks that I must do was:
a.	Create Entity Relationship Diagram to maintain services and purchase transactions.
b.	Create a database system using DDL syntax that relevant with services and purchase transactions.
c.	Create query using DML syntax to fill the tables in database systems with data based on the following conditions:
•	Master table must be filled with more than or equals 10 data.
•	Transaction table must be filled with more than or equals 15 data.
•	Transaction detail table must be filled with more than or equals 25 data.
•	For the Staff Position table, the table must be filled with the following data:
d.	Create query using DML syntax to simulate the transactions process for services and purchase transactions. 
Note: DML syntax to fill database and DML syntax to simulate the transactions process should be a different query.

e.	To support database management process in Catering delVia, Rika asked you to provide some query that resulting important data. The requirements that asked from her are:
1.	Display StaffName, StaffPositionName, and Total Activity (obtained by counting the services and purchase transaction made by the staff) for every staff whose salary is between 1000000 and 4000000 and has total activity of more than 2.

2.	Display CustomerID, CustomerName, and Pax Bought (obtained by calculating the sum of pax in each transaction) for every male customer and every transaction that occurred within the first half of the year. 

3.	Display IngredientName, Ingredient Bought (obtained by calculating the sum of quantity of each purchase), Purchase Count (obtained by counting the number of purchase), and Total Expenses (obtained by calculating the sum of quantity * ingredient price) for every ingredient that is purchased in even month and happened in day between 2 and 5 of the week.

4.	Display Staff First Name (obtained from staff’s first name), Transaction Count (obtained by counting the number of transaction), and Pax Sold (obtained by calculating the sum of pax sold from each transaction) for every staff that has odd id and serves customer with even id. 

5.	Select Vendor Name (obtained from VendorName without ‘PT. ’), IngredientName, and Ingredient Price (obtained by adding ‘Rp. ’ to IngredientPrice) for every purchase with ingredient price more than or equal to the average of all ingredient, and ingredient stock lower than 250. 
(alias subquery)

6.	Display CustomerName, TransactionDate (obtained from PurchaseDate with ‘Mon dd, yyyy’ format), MenuName, MenuPrice, Brief Description (obtained from the first 2 words from MenuDescription), Pax, Total Price (obtained by calculating MenuPrice times Pax) for every menu with price more than the average of all menu and pax sold more than 100 in each transaction.  
(alias subquery)

7.	Display Staff Name (obtained from StaffName in uppercase letter), Purchase Date (obtained Purchase date in ‘Mon dd, yyyy’ format), Quantity Bought (obtained by calculating sum of quantity and adding ‘ pcs’ at the end) for every purchase that occurred in even month with ingredient that has price lower than the maximum price of all ingredient. 
(alias subquery)

8.	Display CustomerName, Email (obtained from CustomerEmail before ‘@’), Menu Name (obtained from MenuName in lowercase), and Pax Bought (obtained by calculating the sum of pax) for every transaction that serves male customer and pax more than or equal to the average of all pax.
(alias subquery)

9.	Create a view named ‘LoyalCustomerView’ to display CustomerName, Total Transaction (obtained by counting the customer id), Total Pax Purchased (obtained by calculating the sum of pax), and Total price (obtained by calculating the sum of pax times menuPrice) for every female customer that that has made a transaction more than two times.

10.	Create a view named ‘VendorRecapView’ to display VendorName, Purchases Made (obtained by counting the vendorID), and Ingredients Purchased (obtained by calculating the sum of quantity) for every vendor that has made a transaction more than once and ingredients with stock more than 150.
