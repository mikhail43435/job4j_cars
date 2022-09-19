-- creating table of price change subscribers
CREATE TABLE IF NOT EXISTS participates
(
    user_id INTEGER REFERENCES auto_user (id),
    post_id INTEGER REFERENCES auto_post (id)
);