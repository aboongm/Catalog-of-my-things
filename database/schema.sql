CREATE DATABASE catalog;

CREATE TABLE IF NOT EXISTS labels (
  id SERIAL PRIMARY KEY,
  label_title TEXT,
  label_color TEXT
);
