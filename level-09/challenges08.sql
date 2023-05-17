-- Precisamos aumentar nosso lucro, para 
-- isso, precisamos saber qual foi o produto 
-- mais vendido dos últimos 2 meses?
USE tinaModas;
SELECT 
p.nome AS produto, 
SUM(ip.quantidade) AS 'Qtd vendida'
FROM itens_pedido AS ip
INNER JOIN pedidos AS pe 
ON ip.pedido_id = pe.id
INNER JOIN produtos AS p 
ON ip.produto_id = p.id
WHERE DATE(data_pedido)>='2023-03-15'
GROUP BY p.nome
ORDER BY SUM(ip.quantidade) DESC
LIMIT 1;