-- Escreva uma query para exibir o código e 
-- nome de todos os projetos que possuam em 
-- seu código o número 3. 
-- Ordene o resultado em ordem alfabética.
USE Scientists;
SELECT 
Code AS 'Código',
Name AS 'Nome dos projetos'
FROM Projects
WHERE Code LIKE '%3%'
ORDER BY Name ASC;