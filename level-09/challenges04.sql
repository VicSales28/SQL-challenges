-- Obtenha o  id, nome e email dos clientes com apenas um pedido. 
USE tinaModas;
SELECT 
p.cliente_id,
c.nome,
c.email
FROM pedidos AS p
INNER JOIN clientes AS c
ON p.cliente_id = c.id
GROUP BY cliente_id
HAVING COUNT(*) = 1;