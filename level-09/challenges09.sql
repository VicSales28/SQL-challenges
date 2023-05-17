-- Ainda pensando em aumento de lucro, quais 
-- são os 3 produtos mais vendidos da loja 
-- durante toda sua existência?
USE tinaModas;
SELECT 
p.nome AS produto, 
SUM(ip.quantidade) AS 'Qtd vendida'
FROM itens_pedido AS ip
INNER JOIN pedidos AS pe 
ON ip.pedido_id = pe.id
INNER JOIN produtos AS p 
ON ip.produto_id = p.id
WHERE DATE(data_pedido)>='2020-12-20'
GROUP BY p.nome
ORDER BY SUM(ip.quantidade) DESC
LIMIT 3;