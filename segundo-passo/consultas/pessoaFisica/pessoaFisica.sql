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