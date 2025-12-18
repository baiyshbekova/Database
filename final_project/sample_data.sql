INSERT INTO artists (name, country, birth_year, bio) VALUES
('Vincent van Gogh', 'Netherlands', 1853, 'Post-impressionist painter'),
('Claude Monet', 'France', 1840, 'Impressionist painter'),
('Pablo Picasso', 'Spain', 1881, 'Cubism and modern art'),
('Frida Kahlo', 'Mexico', 1907, 'Symbolism and self-portraits');

INSERT INTO artworks (artist_id, title, year_created, price, art_type, description) VALUES
(1, 'Starry Night', 1889, 2000000.00, 'Painting', 'Night sky painting'),
(2, 'Water Lilies', 1916, 1500000.00, 'Painting', 'Water lily series'),
(3, 'Les Demoiselles d’Avignon', 1907, 2500000.00, 'Painting', 'Cubist artwork'),
(4, 'The Two Fridas', 1939, 1200000.00, 'Painting', 'Double self-portrait');

INSERT INTO exhibitions (name, start_date, end_date, location) VALUES
('Impressionist Masters', '2024-03-01', '2024-04-01', 'Paris Gallery'),
('Modern Art Collection', '2024-05-15', '2024-06-15', 'New York Museum'),
('Latin American Art', '2024-07-10', '2024-08-10', 'Mexico City Art Center');

INSERT INTO exhibition_artworks (exhibition_id, artwork_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4);

INSERT INTO visitors (name, email, phone) VALUES
('Alice Johnson', 'alice@mail.com', '123456789'),
('Bob Smith', 'bob@mail.com', '987654321'),
('Carlos Perez', 'carlos@mail.com', '555666777');

INSERT INTO tickets (visitor_id, exhibition_id, price) VALUES
(1, 1, 25.00),
(2, 2, 30.00),
(3, 3, 20.00),
(1, 2, 30.00);

INSERT INTO sales (artwork_id, visitor_id, sale_price) VALUES
(1, 1, 2100000.00),
(3, 2, 2550000.00);

UPDATE artworks
SET sold = TRUE
WHERE artwork_id IN (1, 3);

