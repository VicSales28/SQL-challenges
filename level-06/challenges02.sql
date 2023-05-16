-- Escreva uma query que exiba a diferença entre o maior e o menor salário.
USE hr;
SELECT MAX(salary) - MIN(salary)
FROM employees;