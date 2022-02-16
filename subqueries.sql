-- Problem 1
SELECT *
FROM invoice_line 
WHERE unit_price IN(
    SELECT unit_price WHERE  unit_price > .99
);

-- Problem 2
SELECT *
FROM playlist_track
WHERE playlist_id IN(
    SELECT playlist_id FROM playlist WHERE  name = 'Muisc'
);

-- Problem 3
SELECT *
FROM track
WHERE track_id IN(
    SELECT track_id FROM playlist_track WHERE playlist_id = 5
);

-- Problem 4
SELECT *
FROM track
WHERE genre_id IN(
    SELECT genre_id FROM genre WHERE name = 'Comedy'
);

-- Problem 5
SELECT * 
FROM track
WHERE album_id IN(
    SELECT album_id FROM album WHERE title = 'Fireball' 
);

-- Problem 6
SELECT *
FROM track
WHERE album_id IN(
    SELECT album_id FROM album WHERE artist_id IN(
       SELECT artist_id FROM artist WHERE name = 'Queen'
    )
);