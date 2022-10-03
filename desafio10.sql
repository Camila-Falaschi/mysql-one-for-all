SELECT SpotifyClone.cancoes.cancao AS nome,
COUNT(DISTINCT SpotifyClone.usuarios.usuario) AS reproducoes
FROM SpotifyClone.historico_de_reproducoes
INNER JOIN SpotifyClone.usuarios
ON SpotifyClone.historico_de_reproducoes.usuario_id = SpotifyClone.usuarios.id
INNER JOIN SpotifyClone.cancoes
ON SpotifyClone.historico_de_reproducoes.cancao_id = SpotifyClone.cancoes.id
INNER JOIN SpotifyClone.planos
ON SpotifyClone.usuarios.plano_id = SpotifyClone.planos.id
WHERE SpotifyClone.planos.plano = 'gratuito' OR
SpotifyClone.planos.plano = 'pessoal'
GROUP BY nome
ORDER BY nome;