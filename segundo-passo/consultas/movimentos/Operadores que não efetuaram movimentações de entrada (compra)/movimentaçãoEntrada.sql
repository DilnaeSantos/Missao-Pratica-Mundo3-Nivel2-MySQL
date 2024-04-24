SELECT
    U.ID_Usuario,
    U.Login
FROM
    Usuario U
LEFT JOIN
    Movimento M ON U.ID_Usuario = M.ID_Usuario AND M.TipoMovimento = 'C'
WHERE
    M.ID_Movimento IS NULL;