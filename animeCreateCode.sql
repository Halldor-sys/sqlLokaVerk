CREATE TABLE animes (
    idAnime INTEGER PRIMARY KEY,
    title TEXT,
    episodes INT,
    seasons INT,
    releaseDate INT
);

CREATE TABLE studio (
    idStudio INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE animeStudios (
    idAnime INTEGER,
    idStudio INTEGER,
    PRIMARY KEY(idAnime, idStudio)
);

CREATE TABLE streamingServices (
    idService INTEGER PRIMARY KEY,
    name TEXT,
    link TEXT
);

CREATE TABLE genreAnimes (
    idGenre INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE animeGenres (
    idAnime INTEGER,
    idGenre INTEGER,
    PRIMARY KEY(idAnime, idGenre)
);

CREATE TABLE charactersAnime (
    idCharacter INTEGER PRIMARY KEY,
    firstName TEXT,
    lastName TEXT,
    age INT,
    dere TEXT,
    bloodType TEXT
);

CREATE TABLE animeCharacters (
    idAnime INTEGER,
    idCharacter INTEGER,
    PRIMARY KEY(idAnime, idCharacter)
);

CREATE TABLE voiceActors (
    idActor INTEGER PRIMARY KEY,
    firstName TEXT,
    lastName TEXT,
    birthday INT,
    birthplace TEXT,
    bloodType TEXT
);

CREATE TABLE characterActors (
    idCharacter INTEGER,
    idActor INTEGER,
    PRIMARY KEY (idCharacter, idActor)
)
