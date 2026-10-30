-- sessão 2

SELECT DB_NAME() AS database_name, @@SPID AS session_id,
       @@TRANCOUNT AS transaction_count;

SELECT IIF((@@OPTIONS & 2) = 0, 'OFF', 'ON')
       AS implicit_transactions;       


SELECT * FROM teste.teste  NOLOCK     

SET IMPLICIT_TRANSACTIONS ON;

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;