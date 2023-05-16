-- Escreva uma query que exiba as seguintes 
-- informações de cada funcionário: id, primeiro nome 
-- e mês no qual foi contratado (exiba somente o mês).
USE hr;
SELECT 
employee_id, 
first_name, 
MONTH(hire_date) AS 'hire_month'
FROM employees;