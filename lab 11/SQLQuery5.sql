--Creation Of user Created Procedure
CREATE PROCEDURE ussp_get_all_rows_from_employees_table
AS
BEGIN
SELECT * FROM Employees
END
	--Returing All Records
EXECUTE ussp_get_all_rows_from_employees_table
	--RENAME Procedure
EXEC sp_rename 'ussp_get_all_rows_from_employees_table', 'sp_get_all_rows_from_employees'

---SELECT query SP with parameters
CREATE PROC udsp_get_customers_by_city
@City nvarchar(15)
as
BEGIN 
SELECT * FROM Customers WHERE City = @City
END
	--GET Result Through Parameters Query
EXEC udsp_get_customers_by_city 'London'


--Update Procedure
CREATE PROCEDURE sp_update_shippers
@ShipperId int,
@company_name nvarchar(40),
@Phoneno nvarchar(24)
AS
BEGIN
UPDATE Shippers
SET CompanyName = @company_name , Phone = @Phoneno WHERE ShipperID = @ShipperId
END
	--RUN Update Procedure
EXECUTE sp_update_shippers 1,Speedy,'3333-77'

--DELETE PROCEDURE
CREATE PROCEDURE sp_dlt_Customers_by_customerId
@CustomerID nchar(5)
AS
BEGIN
DELETE FROM Customers
WHERE CustomerID = @CustomerID
END
	--RUN DLETE PROCEDURE 
EXECUTE sp_dlt_Customers_by_customerId ''
SELECT * FROM Customers

--ALTER PROCEDURE
CREATE PROCEDURE get_all_employees
AS
BEGIN 
SELECT * FROM Employees
END
EXECUTE get_all_employees

ALTER Proc get_all_employees
AS 
BEGIN 
SELECT Employees.EmployeeID,EmployeeTerritories.TerritoryID
FROM Employees JOIN EmployeeTerritories ON Employees.EmployeeID = EmployeeTerritories.EmployeeID
END
