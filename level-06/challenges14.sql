-- Escreva uma query que exiba as seguintes informações 
-- de cada funcionário: id, primeiro nome e dia do mês 
-- no qual foi contratado (exiba somente o dia).
USE hr;
SELECT 
employee_id, 
first_name, 
DAY(hire_date) AS 'hire_day'
FROM employees;