-- Escreva uma query para exibir todas as informações 
-- de supplier que são empresas limitadas (LTDA). 
-- Ordene esses resultados em ordem alfabética decrescente.
USE store;
SELECT 
*
FROM suppliers
WHERE name LIKE '%LTDA%'
ORDER BY name DESC;