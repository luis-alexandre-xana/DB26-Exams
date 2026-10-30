CREATE SCHEMA teste;
GO

CREATE TABLE teste.teste(
    id  INT NOT NULL,
    name    VARCHAR(50) NOT NULL,
    descricao    VARCHAR(200) NOT NULL
);

ALTER TABLE teste.teste ADD
    CONSTRAINT fk_teste PRIMARY KEY (id)

SELECT * FROM teste.teste    

INSERT INTO teste.teste
        (id,name,descricao)
    VALUES
        (1,'teste','só para esperimentar')

SELECT * FROM teste.teste

DROP TABLE teste.teste

DROP SCHEMA teste