INSERT INTO pessoa (Nome, Telefone, Logradouro, Cidade, Estado, Email)
VALUES ('Joao', '1111-1111', 'Rua 12, casa 3, Quitanda', 'Riacho do Sul', 'PA', 'joao@riacho.com');

INSERT INTO pessoafisica (ID_Pessoa, CPF)
SELECT 2, '11111111211' FROM pessoa WHERE ID_Pessoa = 2;

SELECT
    P.ID_Pessoa,
    P.Nome,
    P.Telefone,
    P.Logradouro,
    P.Cidade,
    P.Estado,
    P.Email,
	PF.ID_Pessoa,
    PF.CPF
FROM Pessoa P
INNER JOIN PessoaFisica PF ON P.ID_Pessoa = PF.ID_Pessoa;