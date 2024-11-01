/*
Задание 1: Анализ прибыли по категориям продуктов
Задание: Определите общую прибыль для каждой категории продуктов,
используя таблицы OrderDetails, Orders и Products. Для расчета прибыли
умножьте цену продукта на количество, а затем суммируйте результаты по
категориям.
*/
SELECT
	c.CategoryName
	,SUM(p.Price * od.Quantity) AS Revenue
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP by c.CategoryName