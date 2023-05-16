-- Escreva uma query para exibir o código
-- de todos os projetos da tabela AssignedTo
-- sem que haja repetições.
USE Scientists;
SELECT
DISTINCT
Project
FROM AssignedTo;
