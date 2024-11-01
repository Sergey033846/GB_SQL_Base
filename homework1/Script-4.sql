/*Задание №4: Средний возраст сотрудников на 2024-01-01
Вычислите средний возраст сотрудников на дату 2024-01-01.*/
SELECT AVG(TIMESTAMPDIFF(YEAR, BirthDate, '2024-01-01')) AS AverageAge
FROM Employees