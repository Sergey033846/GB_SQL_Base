/*Задание №1: Уникальные страны клиентов
Определите, сколько уникальных стран представлено среди клиентов*/
SELECT COUNT(DISTINCT Country) AS Countries
FROM Customers 