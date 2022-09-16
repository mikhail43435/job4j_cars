-- creating table for price history info
CREATE TABLE IF NOT EXISTS price_history
(
    id          SERIAL PRIMARY KEY,
    before      BIGINT NOT NULL,
    after       BIGINT NOT NULL,
    created     TIMESTAMP WITHOUT TIME ZONE DEFAULT now()
);