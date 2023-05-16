-- Faça uma consulta para exibir item_id, price 
-- e supplier_id de supplies em que o valor de supplier_id tenha a letra N.
USE store;
SELECT 
item_id, price, supplier_id
FROM supplies
WHERE supplier_id LIKE '%N%';