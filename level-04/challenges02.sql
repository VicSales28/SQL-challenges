-- Escreva uma query para exibir o nome de todos os projetos
-- que inicie com a letra A . 
-- Ordene o resultado em ordem alfabética.
USE Scientists;
SELECT 
Name AS 'Nome dos projetos com A'
FROM Projects
WHERE Name LIKE 'A%'
ORDER BY Name ASC;