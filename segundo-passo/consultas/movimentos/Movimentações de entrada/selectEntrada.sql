SELECT
    M.ID_Movimento,
    P.Nome AS Produto,
    F.Nome AS Fornecedor,
    M.Quantidade,
    M.PrecoUnitario,
    (M.Quantidade * M.PrecoUnitario) AS ValorTotal
FROM
    Movimento M
JOIN
    Produto P ON M.ID_Produto = P.ID_Produto
JOIN
    Pessoa F ON M.ID_Pessoa = F.ID_Pessoa
WHERE
    M.TipoMovimento = 'C'; -- Movimentações de entrada
