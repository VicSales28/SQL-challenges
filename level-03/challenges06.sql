-- Escreva uma query para exibir de supplies, 
-- itens que custam mais de R$15,00 e menos de $40,00.
-- Ordene os resultados por ordem crescente.
USE store;
SELECT 
*
FROM supplies
WHERE price BETWEEN 16 AND 39
ORDER BY price;