INSERT INTO pessoa (Nome, Telefone, Logradouro, Cidade, Estado, Email)
VALUES ('JJC', '1212-1212', 'Rua 1, Centro', 'Riacho do Norte', 'PA', 'jjc@riacho.com');

INSERT INTO pessoajuridica(ID_Pessoa, CNPJ)
SELECT ID_Pessoa, '22222222222222' FROM pessoa;

SELECT
    P.ID_Pessoa,
    P.Nome,
    P.Telefone,
    P.Logradouro,
    P.Cidade,
    P.Estado,
    P.Email,
	PJ.ID_Pessoa,
    PJ.CNPJ
FROM Pessoa P
INNER JOIN PessoaJuridica PJ ON P.ID_Pessoa = PJ.ID_Pessoa;