-- Utilizando a query anterior, faça as 
-- alterações para que seja exibido somente 
-- a quantidade de dinheiro necessária para 
-- cobrir a folha de pagamento das pessoas programadoras (it_prog).
SELECT
job_id,
SUM(salary)
FROM employees
WHERE job_id='it_prog';