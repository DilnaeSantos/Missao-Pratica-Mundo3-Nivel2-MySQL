SELECT
    P.Nome AS Produto,
    SUM(M.Quantidade * M.PrecoUnitario) AS ValorTotalSaidas
FROM
    Movimento M
JOIN
    Produto P ON M.ID_Produto = P.ID_Produto
WHERE
    M.TipoMovimento = 'V' -- Movimentações de saída
GROUP BY
    P.Nome;
