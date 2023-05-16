-- Escreva uma query que exiba os nomes dos funcionários em letra maiúscula.
USE hr;
SELECT 
UPPER(CONCAT(first_name, ' ', last_name)) AS 'full_name'
FROM employees;