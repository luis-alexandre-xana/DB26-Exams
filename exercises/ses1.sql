-- sessão 1

SELECT DB_NAME() AS database_name, @@SPID AS session_id,
       @@TRANCOUNT AS transaction_count;

SELECT IIF((@@OPTIONS & 2) = 0, 'OFF', 'ON')
       AS implicit_transactions;       


SELECT * FROM teste.teste     

SET IMPLICIT_TRANSACTIONS ON;


INSERT INTO teste.teste
        (id,name,descricao)
    VALUES
        (2,'lock','só para experimentar um bloqueio')

COMMIT        

DELETE FROM teste.teste WHERE id = 2;

ROLLBACK