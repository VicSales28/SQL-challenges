-- Vamos mandar um cupom de desconto de 20% 
-- para os clientes cadastrados que ainda não 
-- fizeram pedidos na loja. Quais são esses clientes?
-- Forneça o id,nome e email desses clientes.
USE tinaModas;
SELECT
DISTINCT
c.id,
c.nome,
c.email
FROM clientes AS c
WHERE c.id NOT IN (
SELECT
DISTINCT
p.cliente_id
FROM pedidos AS p
);
