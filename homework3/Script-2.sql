/*
Задание 2: Количество заказов по регионам
Задание:
Определите количество заказов, размещенных клиентами из различных стран, за
каждый месяц.
*/
SELECT
	c.Country
    ,YEAR(o.OrderDate) AS Year
    ,MONTH(o.OrderDate) AS Month
    ,COUNT(o.OrderID) AS Count_Orders
from Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.Country, YEAR(o.OrderDate), MONTH(o.OrderDate)