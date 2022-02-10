CREATE VIEW top_2_hits_do_momento AS SELECT
song AS cancao,
COUNT(ph.song_id) AS reproducoes
FROM SpotifyClone.songs AS sgs
INNER JOIN SpotifyClone.play_history AS ph
ON sgs.song_id = ph.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao 
LIMIT 2;