-- Escreva uma query que exiba a quantidade 
-- de dinheiro necessária para realizar o 
-- pagamento de todas as pessoas funcionárias.
USE hr;
SELECT 
SUM(salary)
FROM employees;