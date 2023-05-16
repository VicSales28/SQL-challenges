-- Escreva uma query para exibir todas as informações 
-- de todos os projetos com mais de 500 horas.
USE Scientists;
SELECT 
*
FROM Projects
WHERE Hours > 500;