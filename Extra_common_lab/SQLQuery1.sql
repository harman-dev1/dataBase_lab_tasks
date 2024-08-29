--Q1
use 
SELECT ContactTitle,Region,Country
FROM Customers
GROUP BY ContactTitle,Region,Country
HAVING COUNT(ContactTitle) > 1


--Q2
SELECT LEFT(ProductName,1) as FirstletterofProduct,COUNT(ProductName) as totalProducts
FROM Products
GROUP BY LEFT(ProductName,1)
ORDER BY LEFT(ProductName,1)


--Q3
SELECT *
FROM Customers

--Q4
SELECT OrderID,SUM(UnitPrice * Quantity) AS saleprice
FROM [Order Details]
WHERE UnitPrice*Quantity > 1000
GROUP By OrderID




