SELECT COUNT(SpotifyClone.cancoes.cancao) AS cancoes,
COUNT(DISTINCT SpotifyClone.albuns.album) AS albuns,
COUNT(DISTINCT SpotifyClone.artistas.artista) AS artistas
FROM SpotifyClone.cancoes
INNER JOIN SpotifyClone.albuns
ON SpotifyClone.cancoes.album_id = SpotifyClone.albuns.id
INNER JOIN SpotifyClone.artistas
ON SpotifyClone.albuns.artista_id = SpotifyClone.artistas.id