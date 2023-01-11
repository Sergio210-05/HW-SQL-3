
CREATE TABLE IF NOT EXISTS Styles (
	id_style SERIAL PRIMARY KEY,
	style_name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists (
	id_artist SERIAL PRIMARY KEY,
	artist_name VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Styles_Artists (
	id_style INTEGER NOT NULL REFERENCES Styles(id_style),
	id_artist INTEGER NOT NULL REFERENCES Artists(id_artist),
	PRIMARY KEY(id_style, id_artist)
);

CREATE TABLE IF NOT EXISTS Albums (
	id_album SERIAL PRIMARY KEY,
	album_name VARCHAR(80) UNIQUE NOT NULL,
	year_produced integer NOT NULL CHECK(year_produced > 1900)
);

CREATE TABLE IF NOT EXISTS Artists_Albums (
	id_artist INTEGER NOT NULL REFERENCES Artists(id_artist),
	id_album INTEGER NOT NULL REFERENCES Albums(id_album),
	PRIMARY KEY(id_artist, id_album)
);

CREATE TABLE IF NOT EXISTS Tracks (
	id_track SERIAL PRIMARY KEY,
	track_name VARCHAR(100) NOT NULL,
	duration INTEGER NOT NULL CHECK(duration > 0),
	id_album INTEGER NOT NULL REFERENCES Albums(id_album)
);

CREATE TABLE IF NOT EXISTS Collections (
	id_collection SERIAL PRIMARY KEY,
	collection_name VARCHAR(80) UNIQUE NOT NULL,
	year_produced integer NOT NULL CHECK(year_produced > 1900)
);

CREATE TABLE IF NOT EXISTS Tracks_Collections (
	id_collection INTEGER NOT NULL REFERENCES Collections(id_collection),
	id_track INTEGER NOT NULL REFERENCES Tracks(id_track),
	PRIMARY KEY(id_collection, id_track)
);






