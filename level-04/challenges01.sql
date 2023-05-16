-- Escreva uma query para exibir todas as informações 
-- de todos os cientistas que possuam a letra e em seu nome.
USE Scientists;
SELECT 
*
FROM Scientists
WHERE Name LIKE '%e%';