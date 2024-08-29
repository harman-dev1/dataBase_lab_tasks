SELECT
CASE 
WHEN COUNT(*) > 0 THEN 'YES'
ELSE 'NO'
END AS RESULT
FROM Employees
WHERE ReportsTo IS NULL;

select * from Employees;
update Employees set ReportsTo = NULL where EmployeeID  = 2;

--exec sp_columns Employees

SELECT * 
FROM Categories;

SELECT ProductName
FROM Products
WHERE Discontinued = 1;

SELECT OrderID
FROM [Order Details]
WHERE Discount = 0;

SELECT ContactName
FROM Customers
WHERE Region is NULL;

SELECT ContactName,Phone
FROM Customers
WHERE Country = 'USA' OR Country = 'UK';

SELECT CompanyName
FROM Suppliers
WHERE HomePage IS Not NULL;

SELECT ShipCountry
FROM Orders
WHERE ShippedDate IS NOT NULL AND YEAR(ShippedDate) = 1997 ;

SELECT CustomerID
FROM Orders
WHERE ShippedDate IS NULL;

SELECT SupplierID,CompanyName,City
FROM Suppliers;

SELECT  COUNT(DISTINCT Country) as Distinct_Countries
FROM Employees

SELECT *
FROM Employees
WHERE City = 'London';


SELECT ProductName
FROM Products
WHERE Discontinued = 0;

SELECT OrderID
FROM [Order Details]
WHERE Discount <= 0.1;

SELECT EmployeeID,FirstName,LastName,HomePhone,Extension
FROM Employees
WHERE Region IS NULL;

SELECT COUNT(DISTINCT Country) as No_of_Countries
FROM Employees




SELECT *
FROM Orders
WHERE ShippedDate > RequiredDate




