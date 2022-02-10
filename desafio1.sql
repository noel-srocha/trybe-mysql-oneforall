DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE plans(
plan_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
plan VARCHAR(50) NOT NULL,
plan_cost DECIMAL(5,2) NOT NULL
);

CREATE TABLE users(
user_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
plan_id INT NOT NULL,
`user` VARCHAR(50) NOT NULL,
age INT NOT NULL,
FOREIGN KEY(plan_id) REFERENCES plans(plan_id)
);

CREATE TABLE artists(
artist_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
artist VARCHAR(50) NOT NULL
);

CREATE TABLE albums(
album_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
artist_id INT NOT NULL,
album  VARCHAR(50) NOT NULL,
FOREIGN KEY(artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE songs(
song_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
album_id INT NOT NULL,
song VARCHAR(50) NOT NULL,
FOREIGN KEY(album_id) REFERENCES albums(album_id)
);

CREATE TABLE play_history(
user_id INT NOT NULL,
song_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(user_id, song_id),
FOREIGN KEY(user_id) REFERENCES users(user_id),
FOREIGN KEY(song_id) REFERENCES songs(song_id)
);

CREATE TABLE followers(
user_id INT NOT NULL,
artist_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(user_id, artist_id),
FOREIGN KEY(user_id) REFERENCES users(user_id),
FOREIGN KEY(artist_id) REFERENCES artists(artist_id)
);

INSERT INTO plans(plan, plan_cost) VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO users(plan_id, `user`, age) VALUES
(1, 'Thati', 23),
(2, 'Cintia',35),
(3, 'Bill',20),
(1, 'Roger', 45);

INSERT INTO artists(artist) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albums(artist_id, album) VALUES
(1, 'Envious'),
(1, 'Exuberant'),
(2, 'Hallowed Steam'),
(3, 'Incandescent'),
(4, 'Temporary Culture');

INSERT INTO songs(album_id, song) VALUES
(1, 'Soul For Us'),
(1, 'Reflections Of Magic'),
(1, 'Dance With Her Own'),
(2, 'Troubles Of My Inner Fire'),
(2, 'Time Fireworks'),
(3, 'Magic Circus'),
(3, 'Honey, So Do I'),
(3, 'Sweetie, Let''s Go Wild'),
(3, 'She Knows'),
(4, 'Fantasy For Me'),
(4, 'Celebration Of More'),
(4, 'Rock His Everything'),
(4, 'Home Forever'),
(4, 'Diamond Power'),
(4, 'Honey, Let''s Be Silly'),
(5, 'Thang Of Thunder'),
(5, 'Words Of Her Life'),
(5, 'Without My Streets');

INSERT INTO play_history(user_id, song_id) VALUES
(1,1),
(1,6),
(1,14),
(1,16),
(2,13),
(2,17),
(2,2),
(2,15),
(3,4),
(3,16),
(3,6),
(4,3),
(4,18),
(4,11);

INSERT INTO followers(user_id, artist_id) VALUES
(1,1),
(1,4),
(1,3),
(2,1),
(2,3),
(3,2),
(3,1),
(4,4);