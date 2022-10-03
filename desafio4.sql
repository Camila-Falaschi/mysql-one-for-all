SELECT DISTINCT SpotifyClone.usuarios.usuario AS usuario,
IF(MAX(YEAR(SpotifyClone.historico_de_reproducoes.data_reproducao)) >= 2021,
'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuarios
INNER JOIN SpotifyClone.historico_de_reproducoes
ON SpotifyClone.usuarios.id = SpotifyClone.historico_de_reproducoes.usuario_id
GROUP BY SpotifyClone.historico_de_reproducoes.usuario_id
ORDER BY SpotifyClone.usuarios.usuario;