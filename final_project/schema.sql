CREATE TABLE artists (
    artist_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50),
    birth_year INT,
    death_year INT,
    bio TEXT
);

CREATE TABLE artworks (
    artwork_id SERIAL PRIMARY KEY,
    artist_id INT NOT NULL REFERENCES artists(artist_id) ON DELETE CASCADE,
    title VARCHAR(100) NOT NULL,
    year_created INT,
    price NUMERIC(10,2),
    art_type VARCHAR(50),
    description TEXT,
    sold BOOLEAN DEFAULT FALSE
);

CREATE TABLE exhibitions (
    exhibition_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE,
    location VARCHAR(100)
);

CREATE TABLE exhibition_artworks (
    exhibition_id INT REFERENCES exhibitions(exhibition_id) ON DELETE CASCADE,
    artwork_id INT REFERENCES artworks(artwork_id) ON DELETE CASCADE,
    PRIMARY KEY (exhibition_id, artwork_id)
);

CREATE TABLE visitors (
    visitor_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20)
);

CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY,
    visitor_id INT REFERENCES visitors(visitor_id) ON DELETE CASCADE,
    exhibition_id INT REFERENCES exhibitions(exhibition_id) ON DELETE CASCADE,
    purchase_date DATE DEFAULT CURRENT_DATE,
    price NUMERIC(8,2)
);

CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    artwork_id INT REFERENCES artworks(artwork_id),
    visitor_id INT REFERENCES visitors(visitor_id),
    sale_date DATE DEFAULT CURRENT_DATE,
    sale_price NUMERIC(10,2)
);

-- Indexes
CREATE INDEX idx_artist_name ON artists(name);
CREATE INDEX idx_exhibition_start_date ON exhibitions(start_date);
CREATE INDEX idx_artwork_type ON artworks(art_type);
CREATE INDEX idx_visitor_email ON visitors(email);

