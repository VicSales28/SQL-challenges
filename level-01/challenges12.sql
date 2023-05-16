-- Escreva uma query para exibir o nome
-- do projeto com maior quantidade de horas.
USE Scientists;
SELECT
Name AS 'Projeto com a maior qnt de horas'
FROM Projects
ORDER BY Hours DESC
LIMIT 1;