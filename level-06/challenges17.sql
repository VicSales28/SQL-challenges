-- Escreva uma query que exiba o sobrenome e 
-- a data de contratação de todos os funcionários 
-- contratados em julho de 1987.
USE hr;
SELECT 
last_name,
MONTH(hire_date) AS 'hire_month',
YEAR(hire_date) AS 'hire_year'
FROM employees
WHERE MONTH(hire_date)=7 AND YEAR(hire_date)=1987;