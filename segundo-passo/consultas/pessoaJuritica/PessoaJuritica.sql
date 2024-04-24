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