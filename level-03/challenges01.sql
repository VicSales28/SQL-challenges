-- Faça uma consulta na tabela item que retorne
-- todos os dados em que a coluna name comece com as letras GR.
USE store;
SELECT * FROM itens
WHERE name LIKE 'GR%';