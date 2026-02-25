create table if not exists Genre(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

create table if not exists Artist (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    genre_id INT NOT NULL,
    FOREIGN KEY (genre_id) REFERENCES Genre(id)
);


create table if not exists Album (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    release_year INT NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES Artist(id)
);


create table if not exists Track (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    duration INTERVAL NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Album(id)
);

create table if not exists Compilation (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    release_year INT NOT NULL
);

create table if not exists CompilationTrack (
    compilation_id INT NOT NULL,
    track_id INT NOT NULL,
    PRIMARY KEY (compilation_id, track_id),
    FOREIGN KEY (compilation_id) REFERENCES Compilation(id),
    FOREIGN KEY (track_id) REFERENCES Track(id)
    );
	


