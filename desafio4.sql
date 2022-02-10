CREATE VIEW top_3_artistas AS SELECT
artist AS artista,
COUNT(user_id) AS seguidores
FROM SpotifyClone.artists AS arts
INNER JOIN SpotifyClone.followers AS flws
ON arts.artist_id = flws.artist_id
GROUP BY artist
ORDER BY seguidores DESC, artista 
LIMIT 3;