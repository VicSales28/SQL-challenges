-- Vamos mandar um cupom de desconto de 50% 
-- para um cliente que tenha apenas um pedido. 
-- Se houver mais clientes com apenas um pedido, 
-- vamos escolher o cliente com menor valor total 
-- gasto na loja. Qual é esse cliente?
USE tinaModas;
SELECT 
p.cliente_id, 
SUM(ip.quantidade * ip.preco_unitario) AS 'Total gasto'
FROM pedidos AS p
INNER JOIN itens_pedido AS ip
ON p.id = ip.pedido_id
WHERE p.cliente_id IN (
  SELECT p.cliente_id
  FROM pedidos AS p
  INNER JOIN clientes AS c ON p.cliente_id = c.id
  GROUP BY cliente_id
  HAVING COUNT(*) = 1)
GROUP BY p.cliente_id
ORDER BY SUM(ip.quantidade * ip.preco_unitario) ASC
LIMIT 1;