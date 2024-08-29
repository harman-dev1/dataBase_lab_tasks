--Advanced Tasks
--Q1
Use northwind
SELECT *
FROM Shippers S1
JOIN 
Shippers S2
ON S1.ShipperID = S2.ShipperID

SELECT *
FROM Shippers S1
CROSS JOIN 
Shippers S2

SELECT *
FROM Orders
LEFT JOIN 
[Order Details]
ON Orders.OrderID = [Order Details].OrderID

SELECT *
FROM Orders
Right JOIN 
[Order Details]
ON Orders.OrderID = [Order Details].OrderID

SELECT *
FROM Orders
FULL OUTER JOIN 
[Order Details]
ON Orders.OrderID = [Order Details].OrderID

--Q2
SELECT *
FROM Shippers S1
CROSS JOIN 
Shippers S2

SELECT *
FROM Categories
CROSS JOIN 
Shippers

--Q3
SELECT Customers.CustomerID, Customers.companyname, Orders.orderid, Orders.orderdate
FROM Customers 
INNER JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID;

--Q4
Use northwind
SELECT Customers.CustomerID,OrderID,OrderDate
FROM Customers LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
--Q5
SELECT Customers.CustomerID,OrderID,OrderDate
FROM Customers 
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE OrderID IS NULL;

--Q6
SELECT Orders.CustomerID,OrderID,OrderDate
FROM Customers JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID
WHERE YEAR(OrderDate) = 1997;

--Q7
SELECT Customers.CustomerID,COUNT(OrderDate) AS totalorders
FROM Customers LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID;

--Q8
SELECT
    E.EmployeeID,
    E.FirstName,
    E.LastName
FROM
    Employees E
CROSS JOIN
    (SELECT 1 AS n UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5) AS Numbers;


--Q9
SELECT EmployeeID,OrderDate
FROM Orders
WHERE OrderDate > '04-07-1996' AND OrderDate < '04-08-1997';

--Q10
SELECT Orders.CustomerID,COUNT([Order Details].OrderID) AS Totalorders,SUM([Order Details].Quantity) AS totalquantity
FROM Customers JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID
JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID
WHERE Country = 'USA'
GROUP BY Orders.CustomerID
ORDER BY Orders.CustomerID;

--Q11
SELECT Orders.CustomerID,Customers.CompanyName,OrderID,OrderDate
FROM Customers
JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderDate = '1997-07-04';

--Q12
SELECT *
FROM Employees E1 JOIN Employees E2
ON E1.ReportsTo = E2.EmployeeID
WHERE E2.Title LIKE '%Manager%' AND E1.BirthDate > E2.BirthDate;

--Q13
SELECT E1.FirstName + ' ' + E1.LastName As EmployeeName , 2024 - YEAR(E1.BirthDate) AS Age , 2024 - YEAR(E2.BirthDate) AS [Manager Age]
FROM Employees E1 
JOIN
Employees E2 ON E1.ReportsTo = E2.EmployeeID;

--Q14
SELECT ProductName,Orders.OrderDate
FROM [Orders]
JOIN 
[Order Details] ON Orders.OrderID = [Order Details].OrderID
JOIN 
Products ON [Order Details].ProductID = Products.ProductID
WHERE OrderDate = '1997-08-08';

--Q15
SELECT Orders.ShipAddress AS Address,Orders.ShipCity AS City,Orders.ShipCountry AS Country
FROM Orders 
JOIN 
[Order Details] ON Orders.OrderID = [Order Details].OrderID
JOIN 
Products ON [Order Details].ProductID = Products.ProductID 
JOIN 
Suppliers ON Products.SupplierID = Suppliers.SupplierID 
WHERE ShippedDate > RequiredDate AND Suppliers.ContactName LIKE '%Anne%'

--Q16
SELECT DISTINCT(ShipCountry) 
FROM Orders
JOIN
[Order Details] ON Orders.OrderID = [Order Details].OrderID
JOIN
Products ON [Order Details].ProductID = Products.ProductID
JOIN 
Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName = 'Beverages';


