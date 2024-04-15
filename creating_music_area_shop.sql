CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(25) NOT NULL
);

CREATE TABLE IF NOT EXISTS Singer (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	release_year NUMERIC(4) CHECK (release_year > 0) NOT NULL
);

CREATE TABLE IF NOT EXISTS Popularity (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES Album(id),
	name VARCHAR(40) NOT NULL,
	duration INTEGER CHECK (duration > 0) NOT NULL
);

CREATE TABLE IF NOT EXISTS SongBook (
	id SERIAL PRIMARY KEY,
	track_id INTEGER NOT NULL REFERENCES Track(id),
	name VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS GenreSinger (
	genre_id INTEGER REFERENCES Genre(id),
	singer_id INTEGER REFERENCES Singer(id),
	popularity_id INTEGER REFERENCES Popularity(id),
	CONSTRAINT pk_genre_singer PRIMARY KEY (genre_id, singer_id)
);

CREATE TABLE IF NOT EXISTS AlbumSinger (
	album_id INTEGER REFERENCES Album(id),
	singer_id INTEGER REFERENCES Singer(id),
	CONSTRAINT pk_album_singer PRIMARY KEY (album_id, singer_id)
);

CREATE TABLE IF NOT EXISTS SongbookSinger (
	track_id INTEGER REFERENCES	Track(id),
	songbook_id INTEGER REFERENCES SongBook(id),
	CONSTRAINT pk_track_songbook PRIMARY KEY (track_id, songbook_id)
)