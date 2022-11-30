CREATE TABLE genre(
id SERIAL PRIMARY KEY,
name VARCHAR(220));

CREATE TABLE artist(
id SERIAL PRIMARY KEY,
name VARCHAR(220));

CREATE TABLE genre_artist(
artist_id integer references artist(id),
genre_id integer references genre(id));

CREATE TABLE album(
id SERIAL PRIMARY KEY,
name VARCHAR(220),
year integer);

CREATE TABLE artist_album(
id SERIAL PRIMARY KEY,
artist_id integer references artist(id),
album_id integer references album(id));

CREATE TABLE collection(
id SERIAL PRIMARY KEY,
name VARCHAR(220),
year integer);

CREATE TABLE track(
id SERIAL PRIMARY KEY,
name VARCHAR (220),
duration numeric,
album_id integer references album(id));

CREATE TABLE collection_track(
id SERIAL PRIMARY KEY,
collection_id integer references collection(id),
track_id integer references track(id));
