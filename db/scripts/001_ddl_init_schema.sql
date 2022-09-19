-- creating table for users
CREATE TABLE IF NOT EXISTS auto_user
(
    id          SERIAL PRIMARY KEY,
    name        TEXT NOT NULL UNIQUE,
    email       TEXT NOT NULL UNIQUE,
    password    TEXT NOT NULL
);
-- creating table for posts
CREATE TABLE IF NOT EXISTS auto_post(
    id              SERIAL PRIMARY KEY,
    text            TEXT,
    created         TIMESTAMP NOT NULL,
    auto_user_id    INTEGER REFERENCES auto_user (id)
);
