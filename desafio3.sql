SELECT SpotifyClone.usuarios.usuario AS usuario,
COUNT(SpotifyClone.historico_de_reproducoes.cancao_id) AS qt_de_musicas_ouvidas,
ROUND(SUM(SpotifyClone.cancoes.duracao_segundos)/60, 2) AS total_minutos
FROM SpotifyClone.usuarios
INNER JOIN SpotifyClone.historico_de_reproducoes
ON SpotifyClone.usuarios.id = SpotifyClone.historico_de_reproducoes.usuario_id
INNER JOIN SpotifyClone.cancoes
ON SpotifyClone.historico_de_reproducoes.cancao_id = SpotifyClone.cancoes.id
GROUP BY SpotifyClone.usuarios.id
ORDER BY SpotifyClone.usuarios.usuario