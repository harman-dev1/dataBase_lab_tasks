SELECT *
FROM Student

SELECT RegNo,FirstName,GPA
From Student



SELECT *
From Student
WHERE GPA >= 3.5;


SELECT *
From Student
WHERE GPA <= 3.5;


SELECT *
From Student
WHERE GPA >= 3.5 or GPA < 3.5 or GPA IS NULL;


SELECT FirstName + LastName as FullName
FROM Student;

SELECT DISTINCT FirstName
FROM Student;

SELECT *
FROM Student
ORDER BY RegNo


SELECT *
FROM Student
Where GPA >3
ORDER BY GPA 

SELECT * 
FROM Student
Order By FirstName Asc


SELECT TOP (3)*
FROM Student
Where GPA IS NULL
ORDER BY GPA DESC


