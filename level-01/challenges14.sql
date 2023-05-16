-- Escreva uma query para exibir todas as informações dos cinco projetos com a menor quantidade de horas.
USE Scientists;
SELECT
Code AS 'Código',
Name AS 'Nome do projeto',
Hours AS 'Quantidade de horas'
FROM Projects
ORDER BY Hours ASC
LIMIT 5;