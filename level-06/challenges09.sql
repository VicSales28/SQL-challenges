-- Escreva uma query que exiba em ordem decrescente 
-- a média salarial de todos os cargos, exceto das 
-- pessoas programadoras (it_prog).
SELECT
job_id,
ROUND(AVG(salary),2) AS 'Média salarial'
FROM employees
WHERE job_id <> 'it_prog'
GROUP BY job_id
ORDER BY 'Média salarial' DESC;