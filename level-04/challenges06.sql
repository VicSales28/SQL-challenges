-- Escreva uma query para exibir todas as 
-- informações de todos os projetos cujas 
-- horas sejam maiores que 250 e menores que 800.
USE Scientists;
SELECT 
*
FROM Projects
WHERE Hours BETWEEN 251 AND 799;