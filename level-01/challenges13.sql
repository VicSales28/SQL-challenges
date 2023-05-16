-- Escreva uma query para exibir o nome
-- do segundo projeto com menor quantidade de horas.
USE Scientists;
SELECT
Name AS 'Segundo projeto com a maior qnt de horas'
FROM Projects
ORDER BY Hours DESC
LIMIT 1
OFFSET 1;