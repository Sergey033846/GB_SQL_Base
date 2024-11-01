/*
Задание 2: Средняя и максимальная сумма кредита по месяцам
Задание: Рассчитайте среднюю сумму кредита (AvgCreditAmount) для каждого
кластера в каждом месяце и сравните её с максимальной суммой кредита
(MaxCreditAmount) за тот же месяц. Используйте таблицу Clusters.
*/
WITH 
AvgCredit AS (
    SELECT 
        month
        ,cluster
        ,AVG(credit_amount) AS avg_credit_amount
    from Clusters
    GROUP by month, cluster
),
MaxCredit AS (
    SELECT
        month
        ,MAX(credit_amount) AS max_credit_amount
    FROM Clusters
    GROUP BY month
)
SELECT
	ac.month
    ,ac.cluster
    ,ac.avg_credit_amount
    ,mc.max_credit_amount
FROM AvgCredit ac
JOIN MaxCredit mc ON ac.month = mc.month
ORDER BY ac.month, ac.cluster