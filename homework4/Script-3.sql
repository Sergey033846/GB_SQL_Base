/*
Задание 3: Разница в суммах кредита по месяцам
Задание: Создайте таблицу с разницей (Difference) между суммой кредита и
предыдущей суммой кредита по месяцам для каждого кластера. Используйте таблицу
Clusters.
*/
WITH PrevCredit AS (
    SELECT
        month
        ,cluster
        ,credit_amount
        ,LAG(credit_amount) OVER (PARTITION BY cluster order BY month) AS prev_credit_amount
    from Clusters
)
SELECT
	month
    ,cluster
    ,credit_amount
    ,prev_credit_amount
    ,COALESCE(credit_amount - prev_credit_amount, 0) AS diff
FROM PrevCredit