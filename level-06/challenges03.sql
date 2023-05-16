-- Escreva uma query que exiba a média salarial 
-- de cada job_id, ordenando pela média salarial 
-- em ordem decrescente.
USE hr;
SELECT 
job_id, 
ROUND(AVG(salary),2) AS 'Média salarial'
FROM employees
GROUP BY job_id
ORDER BY 'Média salarial' DESC;
