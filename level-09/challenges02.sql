-- Obtenha o email de todos os clientes que já fizeram pedidos na loja.
USE tinaModas;
SELECT
DISTINCT
c.email AS 'Emails'
FROM pedidos AS p
INNER JOIN clientes AS c
ON p.cliente_id = c.id;