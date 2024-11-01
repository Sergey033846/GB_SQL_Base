/*
Задание 1: Ранжирование продуктов по средней цене
Задание: Ранжируйте продукты в каждой категории на основе их средней цены
(AvgPrice). Используйте таблицы OrderDetails и Products.
Результат: В результате запроса будут следующие столбцы:
● CategoryID: идентификатор категории продукта,
● ProductID: идентификатор продукта,
● ProductName: название продукта,
● AvgPrice: средняя цена продукта,
● ProductRank: ранг продукта внутри своей категории на основе средней цены в
порядке убывания.
*/

--смысл средней цены продукта здесь не понятен, она фиксированная (прайс)

WITH ProdAvgPrice AS (
    select 
        p.CategoryID
        ,p.ProductID
        ,p.ProductName
        , AVG(price) as AvgPrice
    FROM Products p
    GROUP by p.CategoryID, p.ProductID, p.ProductName
)
select 
	CategoryID
    ,ProductID
    ,ProductName
    ,AvgPrice
    ,RANK() OVER (PARTITION BY CategoryID ORDER BY AvgPrice DESC) AS ProdRank
FROM ProdAvgPrice