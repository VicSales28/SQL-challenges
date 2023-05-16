-- Escreva uma query para exibir o nome e o código 
-- de todos os projetos cujo nome NÃO inicie com a letre A .
USE Scientists;
SELECT 
Name,
Code
FROM Projects
WHERE Name NOT LIKE 'A%';