CREATE VIEW perfil_artistas AS SELECT
artist AS artista,
album AS album,
COUNT(flws.user_id) AS seguidores 
FROM SpotifyClone.artists AS arts
INNER JOIN SpotifyClone.albums AS albs 
ON arts.artist_id = albs.artist_id
INNER JOIN SpotifyClone.followers AS flws
ON flws.artist_id = arts.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;