CREATE DATABASE catalog;

CREATE TABLE IF NOT EXISTS labels (
  id SERIAL PRIMARY KEY,
  label_title TEXT,
  label_color TEXT
);

CREATE TABLE IF NOT EXISTS books (
  id SERIAL PRIMARY KEY,
  title TEXT,
  publisher TEXT,
  cover_state TEXT,
  publish_date DATE,
  archived BOOLEAN,
  label_id INTEGER,
  FOREIGN KEY (label_id) REFERENCES labels(id)
);

CREATE TABLE IF NOT EXISTS music_albums(
  id SERIAL PRIMARY KEY,
  publish_date DATE,
  archived VARCHAR,
  on_spotify BOOLEAN,
  genre_id SERIAL,
  FOREIGN KEY(genre_id) REFERENCES genres.id
)

CREATE TABLE IF NOT EXISTS genres(
  id SERIAL PRIMARY KEY,
  name VARCHAR
)