/*
Задание №3: Вывод наиболее популярных продуктов по количеству
заказов
Описание: Выведите список продуктов (название ProductName), отсортированных по
количеству заказов в порядке убывания. Подсчитайте общее количество заказов
(Quantity) для каждого продукта. Выведите результаты, включая:
● ProductName
● Общее количество заказов (total_quantity)
Отсортируйте результаты по убыванию общего количества заказов (total_quantity).
Используйте таблицы Products и OrderDetails.
*/
SELECT
	tP.ProductName
    ,SUM(tOD.Quantity) AS total_quantity
from Products tP
JOIN OrderDetails tOD ON tP.ProductID = tOD.ProductID
GROUP BY tP.ProductName
ORDER BY total_quantity DESC