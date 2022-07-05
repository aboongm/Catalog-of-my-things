-- create Database

Create Database catalog_of_things;
Drop if exists catalog_of_things;

-- Games

CREATE TABLE games (
    id VARCHAR(255) NOT NULL primary key'
    multiplayer BOOlEAN,
    last_played_at DATE,
)

-- Authors
CREATE TABLE authors(
    id VARCHAR(100) NOT NULL,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    PRIMARY KEY(id)
)

----------------------------------