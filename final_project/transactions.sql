BEGIN;

SELECT sold
FROM artworks
WHERE artwork_id = 4
FOR UPDATE;

INSERT INTO sales (artwork_id, visitor_id, sale_price)
VALUES (4, 3, 1250000.00);

UPDATE artworks
SET sold = TRUE
WHERE artwork_id = 4;

COMMIT;

