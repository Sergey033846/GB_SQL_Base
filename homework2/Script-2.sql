/*
Задание №2: Анализ частоты заказа продуктов по категориям
Описание: Напишите запрос SQL для подсчета количества заказов продуктов по
каждой категории. Подсчитайте количество уникальных заказов (OrderID) для каждой
категории продуктов. Выведите результаты, включая:
● CategoryID
● Количество уникальных заказов (order_count)
Отсортируйте результаты по убыванию количества уникальных заказов
(order_count). Используйте таблицы Products, OrderDetails и Categories.
*/
SELECT 
	tP.CategoryID
    ,COUNT(DISTINCT tOD.OrderID) AS order_count
FROM OrderDetails tOD
JOIN Products tP ON tOD.ProductID = tP.ProductID
GROUP BY tP.CategoryID
ORDER BY order_count DESC