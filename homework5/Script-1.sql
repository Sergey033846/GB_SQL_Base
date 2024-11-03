/*
Задание 1: Создание таблицы и изменение данных

Задание: 
Создайте таблицу EmployeeDetails для хранения информации о сотрудниках. 
Таблица должна содержать следующие столбцы:
● EmployeeID (INTEGER, PRIMARY KEY)
● EmployeeName (TEXT)
● Position (TEXT)
● HireDate (DATE)
● Salary (NUMERIC)

После создания таблицы добавьте в неё три записи с произвольными данными о сотрудниках.
 */

CREATE TABLE EmployeeDetails (
    EmployeeID INTEGER PRIMARY KEY,
    EmployeeName TEXT,
    Position TEXT,
    HireDate DATE,
    Salary NUMERIC
);

INSERT INTO EmployeeDetails (EmployeeID, EmployeeName, Position, HireDate, Salary) VALUES (1, 'Ivanov Ivan', 'Director', '2023-02-15', 75000);
INSERT INTO EmployeeDetails (EmployeeID, EmployeeName, Position, HireDate, Salary) VALUES (2, 'Sidorov Petr', 'Seller', '2023-11-05', 65000);
INSERT INTO EmployeeDetails (EmployeeID, EmployeeName, Position, HireDate, Salary) VALUES (3, 'Petrov Vladimir', 'Programmer', '2024-10-19', 120000);

SELECT * FROM EmployeeDetails;