  
  /*Question 1*/

  SELECT C.CustomerID, OrderID, OrderDate
  FROM Orders 
		RIGHT JOIN (SELECT * FROM Customers) AS C 
			ON Orders.CustomerID = C.CustomerID

  /*Question 2*/

  SELECT C.CustomerID, (SELECT OrderID FROM Orders WHERE Orders.CustomerID = C.CustomerID ) AS OrderID, (SELECT OrderDate FROM Orders WHERE Orders.CustomerID = C.CustomerID) AS OrderDate 
  FROM Customers AS C 
  WHERE C.CustomerID NOT IN (SELECT CustomerID FROM Orders);
  
  /*Question 3*/

  SELECT Distinct(CustomerID), OrderID, OrderDate
  FROM Orders 
  WHERE YEAR(OrderDate) = '1997' AND MONTH(OrderDate) = '7';


  /*Question 4*/

  SELECT Distinct(CustomerID) AS customerID, (SELECT COUNT(*) FROM Orders WHERE Orders.CustomerID = C.CustomerID) AS totalorders
  FROM Customers C

  /*Question 5*/

SELECT EmployeeID, firstname, lastname 
FROM Employees CROSS JOIN (SELECT ProductID FROM Products) AS P 
WHERE P.ProductID <= 5 
ORDER BY EmployeeID asc;

  /*Question 6*/

SELECT * 
FROM Products 
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products);

/*Question 7*/
USE northwind
SELECT MAX(UnitPrice) AS secondMaxPrice 
FROM Products 
WHERE UnitPRice < (SELECT MAX(UnitPrice) FROM Products);

 /*Question 8*/


 SELECT Employees.EmployeeID, O.OrderDate AS Date 
 FROM Employees 
		CROSS JOIN (SELECT * FROM Orders) AS O 
 WHERE O.OrderDate <= '1997-08-04 00:00:00.000' AND O.OrderDate >= '1996-07-04 00:00:00.000';

  /*Question 9*/
SELECT DISTINCT O.CustomerID, (SELECT COUNT(OrderID) FROM Orders WHERE O.CustomerID = CustomerID) AS TotalOrder,
(SELECT SUM(Quantity) FROM [Order Details] AS OD JOIN Orders ON Orders.OrderID = OD.OrderID WHERE O.CustomerID = Orders.CustomerID) AS totalquantity 
FROM Orders AS O 
WHERE O.ShipCountry = 'USA';

 /*Question 10*/

SELECT C.CustomerID, C.CompanyName, ( SELECT Orders.OrderID FROM Orders WHERE Orders.CustomerID = C.CustomerID AND Orders.OrderDate = '1997-07-04') AS OrderID, ( SELECT Orders.OrderDate FROM Orders WHERE Orders.CustomerID = C.CustomerID AND Orders.OrderDate = '1997-07-04') AS OrderDate 
FROM Customers AS C;

 /*Question 11*/

 SELECT Employees.FirstName+ ' ' + Employees.LastName AS EmployeeName, DATEDIFF(hour,Employees.BirthDate,GETDATE())/8766 AS EmployeeAge, (SELECT DATEDIFF(hour,E1.BirthDate,GETDATE())/8766 FROM Employees AS E1 WHERE Employees.ReportsTo = E1.EmployeeID) AS ManagerAge  
 FROM Employees
 WHERE DATEDIFF(hour,Employees.BirthDate,GETDATE())/8766 > (SELECT DATEDIFF(hour,E1.BirthDate,GETDATE())/8766 FROM Employees AS E1 WHERE Employees.ReportsTo = E1.EmployeeID);


  /*Question 12*/

SELECT ProductName, (SELECT OrderDate FROM Orders WHERE Products.ProductID IN (SELECT ProductID FROM [Order Details] WHERE [Order Details].OrderID = Orders.OrderID) AND OrderDate = '08-08-1997') AS OrderDate 
FROM Products
WHERE Products.ProductID IN (SELECT ProductID FROM [Order Details] JOIN Orders ON Orders.OrderID = [Order Details].OrderID WHERE [Order Details].OrderID = Orders.OrderID AND Orders.OrderDate = '08-08-1997');

  /*Question 13*/
  
  SELECT ShipAddress AS Address, shipCity AS City, ShipCountry AS Country 
  FROM Orders
  WHERE Orders.EmployeeID IN (SELECT EmployeeID FROM Employees WHERE Employees.FirstName = 'Anne') AND Orders.ShippedDate > Orders.RequiredDate;

  /*Question 14*/

  SELECT DISTINCT ShipCountry AS Country 
  FROM Orders
  WHERE OrderID IN (SELECT OrderID FROM [Order Details] WHERE [Order Details].ProductID in (SELECT ProductID FROM Products WHERE Products.CategoryID = 1));



