-- Faça uma query para exibir o número de vendas (sale)
-- feitas entre os dias 15/04/2018 e 30/07/2019.
USE store;
SELECT 
COUNT(*)
FROM sales
WHERE DATE(order_date) BETWEEN '2018-04-15' AND '2019-07-30';