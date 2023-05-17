-- Vamos fazer compras com nosso fornecedor, 
-- por isso precisamos saber quais dos nossos 
-- produtos possuem menor estoque?
USE tinaModas;
SELECT
p.nome,
p.estoque
FROM produtos AS p
ORDER BY p.estoque ASC
LIMIT 1;