SELECT
    M.ID_Movimento,
    P.Nome AS Produto,
    C.Nome AS Comprador,
    M.Quantidade,
    M.PrecoUnitario,
    (M.Quantidade * M.PrecoUnitario) AS ValorTotal
FROM
    Movimento M
JOIN
    Produto P ON M.ID_Produto = P.ID_Produto
JOIN
    Pessoa C ON M.ID_Pessoa = C.ID_Pessoa
WHERE
    M.TipoMovimento = 'V'; -- Movimentações de saída