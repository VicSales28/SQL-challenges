-- Escreva uma query que exiba a string “O projeto Name precisou de Hours
-- horas para ser concluído.” para cada projeto.
USE Scientists;
SELECT CONCAT('O projeto ', Name,' precisou de ', Hours, ' horas para ser concluído') 
AS Answers
FROM Projects;
