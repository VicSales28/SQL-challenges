-- Vamos focar nossa divulgação em produtos 
-- que não são campeões de vendas, para isso, 
-- preciso saber qual é quantidade total de itens 
-- vendidos do nosso segundo produto mais vendido? 
-- Se houver empate, considere o nome do produto em ordem 
-- alfabética decrescente.
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
ORDER BY SUM(ip.quantidade) DESC, p.nome DESC
LIMIT 1
OFFSET 1;