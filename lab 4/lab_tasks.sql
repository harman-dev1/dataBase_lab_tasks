SELECT AVG(UnitPrice)
FROM Products

SELECT MIN(UnitPrice)
FROM Products

SELECT MAX(UnitPrice)
FROM Products

SELECT SUM(UnitPrice)
FROM Products

SELECT City as cit
FROM Customers
GROUP BY City


SELECT COUNT(UnitPrice)
FROM Products

SELECT SupplierID,COUNT(*)
FROM Products
GROUP BY SupplierID
HAVING  COUNT(*) > 1

SELECT *
FROM Products



