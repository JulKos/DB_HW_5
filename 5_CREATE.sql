psql -U postgres

CREATE database hw_3_1;
CREATE user Jul with password '1234';

ALTER database hw_3_1 owner to Jul;
exit

psql -U Jul -d hw_3_1

CREATE TABLE if not exists Collection (
id serial primary key,
name varchar(120) not null,
release_date integer
);

CREATE TABLE if not exists Genres(
id serial primary key,
name varchar(120) unique not null
);

CREATE TABLE if not exists Performers(
id serial primary key,
name text not null,
alias_name text unique
);

CREATE TABLE if not exists PerformersGenres(
performer_id integer references Performers(id),
genre_id integer references Genres(id),
constraint PK primary key (performer_id, genre_id)
);

CREATE TABLE if not exists Albums(
id serial primary key,
title varchar(120) not null,
release_date integer
);

CREATE TABLE if not exists PerformersAlbums(
performer_id integer references Performers(id),
album_id integer references Albums(id),
constraint PK_2 primary key (performer_id, album_id)
);

CREATE TABLE if not exists Tracks(
id serial primary key,
name varchar(120) not null,
duration numeric check(duration>0),
album_id integer references Albums(id)
);

CREATE TABLE if not exists TracksCollection(
track_id integer references Tracks(id),
collection_id integer references Collection(id),
constraint PK_3 primary key (track_id, collection_id)
);