--Q1
SELECT ProductName
FROM Products
where  UnitPrice > (SELECT AVG(UnitPrice)  FROM Products);

--Q2
SELECT ShippedDate,COUNT(ShippedDate) AS numberoforders
FROM Orders
WHERE ShippedDate IS NOT NULL
GROUP BY ShippedDate
Order By ShippedDate

--Q3
SELECT Country 
FROM Suppliers
GROUP BY Country
HAVING COUNT ( Country ) > 1

--Q4
SELECT MONTH(ShippedDate),count(ShippedDate)
FROM Orders
WHERE ShippedDate > RequiredDate
GROUP BY MONTH(ShippedDate)
ORDER BY MONTH(ShippedDate)

--Q5
SELECT OrderID,SUM(Discount) as Discount 
FROM [Order Details]
WHERE Discount != 0
GROUP BY OrderID
ORDER BY OrderID;

--Q6
SELECT ShipCity as [Ship City] , COUNT(ShipCity)as [Number Of Orders]
FROM Orders
WHERE ShipCountry = 'USA' AND YEAR(ShippedDate) = 1997
GROUP BY ShipCity
ORDER BY ShipCity

--Q7
SELECT ShipCountry as Country , COUNT (ShipCountry)
FROM Orders
WHERE RequiredDate < ShippedDate
Group BY ShipCountry

--Q8
SELECT OrderID,SUM(Discount) as Discount,SUM(UnitPrice) as [Total Price]
FROM [Order Details]
GROUP BY OrderID
HAVING SUM(Discount) != 0
ORDER BY OrderID

--Q9
SELECT *
FROM Orders
WHERe YEAR(ShippedDate)= 1997
Order By ShipCity


