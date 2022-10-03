SELECT SpotifyClone.artistas.artista AS artista,
SpotifyClone.albuns.album AS album
FROM SpotifyClone.albuns
INNER JOIN SpotifyClone.artistas
ON SpotifyClone.albuns.artista_id = SpotifyClone.artistas.id
WHERE artista = 'Elis Regina'
ORDER BY artista, album;