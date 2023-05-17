-- Qual o valor total de pedidos que 
-- já foram realizados na nossa loja?
USE tinaModas;
SELECT
SUM(ip.quantidade * ip.preco_unitario) AS 'Valor total'
FROM itens_pedido AS ip;