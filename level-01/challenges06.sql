-- Escreva uma query para exibir o nome como “Nome do Projeto” e 
-- as horas como “Tempo de Trabalho” de cada projeto.
USE Scientists;
SELECT 
Name AS 'Nome do Projeto',
Hours AS 'Tempo de Trabalho'
FROM Projects;
