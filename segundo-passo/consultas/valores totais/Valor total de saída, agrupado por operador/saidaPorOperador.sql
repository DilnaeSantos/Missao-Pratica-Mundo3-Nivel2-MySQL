SELECT
    U.ID_Usuario,
    U.Login,
    SUM(M.Quantidade * M.PrecoUnitario) AS ValorTotalSaida
FROM
    Movimento M
JOIN
    Usuario U ON M.ID_Usuario = U.ID_Usuario
WHERE
    M.TipoMovimento = 'V' -- Movimentações de saída
GROUP BY
    U.ID_Usuario, U.Login;
