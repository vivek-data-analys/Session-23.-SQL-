CREATE TABLE restaurants4(
 name varchar(100),
 average_rating decimal(10,2),
 location varchar(100),
 number_of_votes decimal(10,2)
);


insert into restaurants4(name,average_rating,location,number_of_votes)
values
('Dominos Pizza', 4.2, 'Koramangala', 150),
('McDonalds', 4.0, 'Koramangala', 200),
('Pizza Hut', 4.5, 'Koramangala', 180),
('Burger King', 3.9, 'Koramangala', 120),
('Subway', 4.1, 'Koramangala', 100),
('KFC', 4.4, 'Indiranagar', 220),
('Bikanervala', 4.0, 'Indiranagar', 140),
('Haldirams', 4.1, 'Whitefield', 160),
('Theobroma', 4.7, 'Koramangala', 190),
('Cafe Coffee Day', 3.8, 'Whitefield', 90);

SELECT name, average_rating,location,number_of_votes
FROM restaurants4
WHERE location =  'Koramangala'
order by average_rating DESC
limit 5;
