-- Escreva um query que exiba média salarial e 
-- o número de funcionários de todos os departamentos 
-- com mais de dez funcionários.
USE hr;
SELECT
department_id,
ROUND(AVG(salary),2) AS 'average_salary',
COUNT(*) AS 'number_of_employees'
FROM employees
GROUP BY department_id
HAVING number_of_employees > 10;

-- Mais completa 
USE hr;
SELECT
e.department_id,
d.department_name,
ROUND(AVG(salary),2) AS 'average_salary',
COUNT(*) AS 'number_of_employees'
FROM employees AS e
INNER JOIN departments AS d
ON  d.department_id=e.department_id
GROUP BY department_id
HAVING number_of_employees > 10;