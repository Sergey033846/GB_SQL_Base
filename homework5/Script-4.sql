/*
Задание 4: Создание хранимой процедуры

Задание: Создайте хранимую процедуру GetProductSales с одним параметром ProductID. 

Эта процедура должна возвращать список всех заказов, в которых
участвует продукт с заданным ProductID, включая следующие столбцы:
● OrderID (идентификатор заказа),
● OrderDate (дата заказа),
● CustomerID (идентификатор клиента).
 */

/*
диалект: MS SQL Server
*/

CREATE PROCEDURE GetProductSales(@ProductID INTEGER) AS
BEGIN
    SELECT
        o.OrderID
        ,o.OrderDate
        ,o.CustomerID
    FROM Orders o
    JOIN OrderDetails od ON o.OrderID = od.OrderID
    WHERE od.ProductID = @ProductID
END;

EXEC GetProductSales @ProductID = 75;