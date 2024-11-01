/*Задание №2: Клиенты из Бразилии
Определите количество клиентов, которые проживают в Бразилии*/
SELECT COUNT(*) AS Brazil_Customers
FROM Customers 
WHERE Country = 'Brazil'