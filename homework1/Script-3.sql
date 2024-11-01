/*Задание №3: Средняя цена и количество товаров в категории 5
Посчитайте среднюю цену и общее количество товаров в категории с идентификатором 5.*/
SELECT AVG(Price) AS Avg_Price, COUNT(*) AS count_products
FROM Products 
WHERE CategoryID = '5'
