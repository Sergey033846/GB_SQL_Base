/*
Задание 3: Удаление данных и таблиц

Задание: 
Удалите все записи из таблицы EmployeeDetails, где Salary меньше 50000. 
Затем удалите таблицу EmployeeDetails из базы данных.
*/

DELETE FROM EmployeeDetails WHERE Salary < 50000;

SELECT * FROM EmployeeDetails;

DROP TABLE EmployeeDetails;