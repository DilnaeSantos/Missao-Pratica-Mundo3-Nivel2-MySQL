SELECT
    Produto.ID_Produto,
    Produto.Nome,
    SUM(Movimento.Quantidade * Movimento.PrecoUnitario) / SUM(Movimento.Quantidade) AS ValorMedioVenda
FROM
    Movimento
JOIN
    Produto ON Movimento.ID_Produto = Produto.ID_Produto
WHERE
    Movimento.TipoMovimento = 'V'
GROUP BY
    Produto.ID_Produto, Produto.Nome;