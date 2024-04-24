SELECT
    U.ID_Usuario,
    U.Login,
    SUM(M.Quantidade * M.PrecoUnitario) AS ValorTotalEntrada
FROM
    Movimento M
JOIN
    Usuario U ON M.ID_Usuario = U.ID_Usuario
WHERE
    M.TipoMovimento = 'C' -- Movimentações de entrada
GROUP BY
    U.ID_Usuario, U.Login;
