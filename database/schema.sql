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


CREATE TABLE IF NOT EXISTS authors (
  id INT GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  PRIMARY key (id)
)

CREATE TABLE IF NOT EXISTS games (
  id INT,
  games_id INT,
  multiplayer BOOLEAN,
  last_played_at DATE,
  FOREIGN KEY (games_id) REFERENCES authors (id)
);
