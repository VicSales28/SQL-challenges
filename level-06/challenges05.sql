-- Escreva uma query que exiba quatro informações: 
-- o maior salário, o menor salário, a soma de todos 
-- os salários e a média dos salários. 
-- Todos os valores devem ser formatados para ter apenas duas casas decimais.
USE hr;
SELECT 
ROUND(MAX(salary),2) AS 'Maior salário',
ROUND(MIN(salary),2)AS 'Menor salário',
ROUND(SUM(salary),2) AS 'Soma de todos salários',
ROUND(AVG(salary),2) AS 'Média dos salários'
FROM employees;

