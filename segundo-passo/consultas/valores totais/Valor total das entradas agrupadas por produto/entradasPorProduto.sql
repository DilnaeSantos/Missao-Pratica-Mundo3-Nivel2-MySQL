SELECT
    P.Nome AS Produto,
    SUM(M.Quantidade * M.PrecoUnitario) AS ValorTotalEntradas
FROM
    Movimento M
JOIN
    Produto P ON M.ID_Produto = P.ID_Produto
WHERE
    M.TipoMovimento = 'C' -- Movimentações de entrada
GROUP BY
    P.Nome;
