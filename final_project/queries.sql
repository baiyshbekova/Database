-- List all artworks with artist names
SELECT a.title, ar.name AS artist, a.price, a.sold
FROM artworks a
JOIN artists ar ON a.artist_id = ar.artist_id;

-- Most popular artist (by sold artworks)
SELECT ar.name, COUNT(s.sale_id) AS total_sales
FROM artists ar
JOIN artworks aw ON ar.artist_id = aw.artist_id
JOIN sales s ON s.artwork_id = aw.artwork_id
GROUP BY ar.name
ORDER BY total_sales DESC
LIMIT 1;

-- Total visitors per exhibition
SELECT e.name, COUNT(t.ticket_id) AS total_visitors
FROM exhibitions e
LEFT JOIN tickets t ON e.exhibition_id = t.exhibition_id
GROUP BY e.name;

-- Average sale price by art type
SELECT a.art_type, AVG(s.sale_price) AS average_price
FROM artworks a
JOIN sales s ON a.artwork_id = s.artwork_id
GROUP BY a.art_type;

-- Unsold artworks
SELECT title, price
FROM artworks
WHERE sold = FALSE;

