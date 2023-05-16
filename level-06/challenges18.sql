-- Escreva uma query que exiba as seguintes 
-- informações de cada funcionário: nome, sobrenome, 
-- tempo que trabalha na empresa (em dias)
USE hr;
SELECT
first_name,
last_name,
DATEDIFF(CURRENT_DATE() , hire_date) AS 'days_worked'
FROM employees;