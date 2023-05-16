-- Escreva uma query que atualize a coluna 
-- phone_number, de modo que todos os telefones 
-- iniciados por 515 agora devem iniciar com 777.
USE hr;
-- Se o modo "safe mode" do MySQL estiver habilitado,
-- o MySQL não executa UPDATE ou DELETE.
-- Podemos desabilitar o "safe mode" com:
-- SET SQL_SAFE_UPDATES = 0;
-- e depois das modificações o habilitarmos novamente com:
-- SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;

UPDATE employees
SET phone_number = REPLACE(phone_number, '515', '777')
WHERE phone_number LIKE '515%';

SET SQL_SAFE_UPDATES = 1;