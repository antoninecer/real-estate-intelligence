CREATE TABLE listings (
    id SERIAL PRIMARY KEY,
    external_id TEXT NOT NULL,
    source TEXT NOT NULL,
    title TEXT,
    price INTEGER,
    area INTEGER,
    url TEXT,
    description TEXT,
    first_seen TIMESTAMP DEFAULT now(),
    last_seen TIMESTAMP,
    last_price INTEGER,
    hard_score INTEGER,
    ai_score INTEGER,
    final_score INTEGER,
    parking BOOLEAN,
    balcony BOOLEAN,
    noise_risk TEXT,
    risks TEXT,
    raw_json JSONB
);

CREATE UNIQUE INDEX idx_listing_unique
ON listings (external_id, source);

CREATE INDEX idx_listing_price ON listings(price);
CREATE INDEX idx_listing_score ON listings(final_score);
CREATE INDEX idx_listing_last_seen ON listings(last_seen);
