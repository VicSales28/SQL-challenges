-- Escreva uma query que exiba a quantidade 
-- de dinheiro necessária para efetuar 
-- o pagamento de cada profissão (job_id).
SELECT
job_id,
SUM(salary)
FROM employees
GROUP BY job_id;