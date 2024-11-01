/*
Задание №1: Анализ влияния категорий продуктов на общий доход
Описание: Вам необходимо проверить, как различные категории продуктов влияют на
общий доход (общую сумму заказов) в таблице OrderDetails. Подсчитайте общее
количество заказов (сумму количества) и общий доход (сумму количества * цену) для
каждой категории продуктов. Выведите результаты, включая:
● CategoryID
● Общее количество заказов (total_quantity)
● Общий доход (total_revenue)
Отсортируйте результаты по убыванию общего дохода (total_revenue). Используйте
таблицы Products, OrderDetails и Categories.
*/

SELECT 
	tP.CategoryID
    ,SUM(tOD.Quantity) AS total_quantity
    ,SUM(tOD.Quantity * tP.Price) AS total_revenue
from OrderDetails tOD
JOIN Products tP ON tOD.ProductID = tP.ProductID
GROUP BY tP.CategoryID
ORDER BY total_revenue DESC