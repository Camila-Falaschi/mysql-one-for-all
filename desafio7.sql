SELECT SpotifyClone.artistas.artista AS artista,
SpotifyClone.albuns.album AS album,
COUNT(SpotifyClone.seguindo_artista.usuario_id) AS seguidores
FROM SpotifyClone.albuns
INNER JOIN SpotifyClone.artistas
ON SpotifyClone.albuns.artista_id = SpotifyClone.artistas.id
INNER JOIN SpotifyClone.seguindo_artista
ON SpotifyClone.artistas.id = SpotifyClone.seguindo_artista.artista_id
GROUP BY album, SpotifyClone.seguindo_artista.artista_id
ORDER BY seguidores DESC, artista, album;