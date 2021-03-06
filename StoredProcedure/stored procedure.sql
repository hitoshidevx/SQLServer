CREATE DATABASE exercicio;
GO

CREATE TABLE Aluno(
	IdAluno INT PRIMARY KEY IDENTITY NOT NULL,
	Nome	VARCHAR(100) NOT NULL
);
GO

USE exercicio;

INSERT INTO Aluno (Nome) VALUES ('Julia');

SELECT * FROM Aluno;

/*STORED PROCEDURES*/
CREATE PROCEDURE Busca
@CampoBusca VARCHAR(100)
AS
SELECT IdAluno, Nome
FROM Aluno
WHERE Nome = @CampoBusca

EXECUTE Busca 'Giulia';