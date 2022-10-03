SELECT COUNT(SpotifyClone.historico_de_reproducoes.data_reproducao) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducoes
INNER JOIN SpotifyClone.usuarios
ON SpotifyClone.historico_de_reproducoes.usuario_id = SpotifyClone.usuarios.id
WHERE SpotifyClone.usuarios.usuario = 'Barbara Liskov';