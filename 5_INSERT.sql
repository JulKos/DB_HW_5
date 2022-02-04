INSERT INTO Performers (name, alias_name)
VALUES ('Ella Fitzgerald', 'Ella Fitzgerald'),
('Frank Sinatra', 'Frank Sinatra'),
('Caro Emerald', 'Caro Emerald'),
('Imany', 'Nadia Mladjao');

INSERT INTO Performers (name)
VALUES ('Adele'),
('OneRepublic'),
('Beatles'),
('Miles Davis');

INSERT INTO Genres (name)
VALUES ('Blues'), ('Jazz'), ('Rock'), ('Country'), ('Pop');

INSERT INTO Albums (title, release_date)
VALUES ('Easy Living', 1986),
('September of My Years', 1965),
('The Shocking Miss Emerald', 2018),
('The Shape of a Broken Heartg', 2011),
('21', 2011),
('Dreaming Out Loud', 2007),
('Abbey Road', 1969),
('On the Corner', 1972);

INSERT INTO Tracks (name, duration, album_id)
VALUES ('Dream A Little Dream Of Me', 3.14, 1),
('Summertime', 3.20, 1),
('It don''t mean a thing', 3.11, 1),
('Blue skies', 2.42, 1),
('Fly me to the moon', 2.40, 2),
('You make me feel so young', 3.42, 2),
('All or nothing at all', 1.42, 2),
('A night like this', 2.52, 3),
('That man', 2.00, 3),
('The other woman', 2.55, 3),
('Don''t be so shy', 2.45, 4),
('You will never know', 2.35, 4),
('Someone like you', 3.35, 5),
('Rolling in the deep', 3.45, 5),
('Set fire to the rain', 3.15, 5),
('I lived', 3.10, 6),
('Stop and stare', 3.18, 6),
('Apologize', 3.14, 6),
('Here comes the sun', 3.44, 7),
('Together', 2.44, 7),
('Something', 2.54, 7),
('So what', 2.58, 8),
('If i were a bell', 2.10, 8);

INSERT INTO Collection (name, release_date)
VALUES ('Best songs', 1988),
('Best New Year''s Eve Songs', 1999),
('Best of classic rock songs', 2020),
('The Best Jazz Songs of All Time', 2005),
('Gold Collection', 1989);

INSERT INTO performersgenres
VALUES (1, 2),
(2, 2),
(3, 4),
(4, 4),
(5, 5),
(6, 3),
(7, 3),
(8, 1);

INSERT INTO performersalbums
VALUES (1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO trackscollection
VALUES (1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 3),
(9, 3),
(10, 3),
(11, 4),
(12, 4),
(13, 5),
(14, 5),
(15, 5),
(16, 1),
(17, 2),
(18, 3),
(19, 4),
(20, 5),
(21, 1),
(22, 2),
(23, 3);

INSERT INTO performersgenres
VALUES(1, 1),
(2, 3),
(7, 4);

INSERT INTO tracks (name, duration, album_id)
VALUES ('One rose', 2.20, 2);