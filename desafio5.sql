SELECT SpotifyClone.cancoes.cancao AS cancao,
COUNT(SpotifyClone.historico_de_reproducoes.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes
INNER JOIN SpotifyClone.historico_de_reproducoes
ON SpotifyClone.cancoes.id = SpotifyClone.historico_de_reproducoes.cancao_id
GROUP BY SpotifyClone.historico_de_reproducoes.cancao_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;