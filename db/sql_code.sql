CREATE DATABASE thejudge;

\c thejudge

CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  user_name VARCHAR(200) NOT NULL,
  email VARCHAR(200) NOT NULL,
  password_digest VARCHAR(400) NOT NULL,
  photo_id INTEGER,
);

CREATE TABLE outfit_advices (
  id SERIAL4 PRIMARY KEY,
  user_id INTEGER,
  appointment_id INTEGER
);

CREATE TABLE occasions (
  id SERIAL4 PRIMARY KEY,
  user_id INTEGER,
  photo INTEGER,
  start_datetime TIMESTAMPTZ,
  end_datetime TIMESTAMPTZ,
  stylist_id INTEGER,
);

CREATE TABLE photos (
  id SERIAL4 PRIMARY KEY,
  occasion_id INTEGER,
  key INTEGER,
  url VARCHAR(800),
);

CREATE TABLE ratings (
  id SERIAL4 PRIMARY KEY,
  user_id INTEGER,
  occasion_id INTEGER,
  positive INTEGER,
  negative VARCHAR(800),
);

CREATE TABLE outfits (
  id SERIAL4 PRIMARY KEY,
  user_id INTEGER,
  occasion_id INTEGER,
  ratings_id INTEGER,
);

CREATE TABLE stylists (
  id SERIAL4 PRIMARY KEY,
  user_name VARCHAR(400) NOT NULL,
  email VARCHAR(200) NOT NULL,
  password_digest VARCHAR(400) NOT NULL,
  rating_id INTEGER,
);
