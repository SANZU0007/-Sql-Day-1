-------CREATE A MOVIE TABLE-----------

CREATE TABLE MOVIES(
    movie_id INT PRIMARY KEY,
    title VARCHAR(30),
    teaser TEXT,
    image TEXT,
    genre TEXT,
    reviews_id TEXT,
    artists_id TEXT
);

INSERT INTO MOVIES (movie_id, title, teaser, image, genre, reviews_id, artists_id)
VALUES (01, 'ironman-1', 'https://www.youtube.com/watch?v=8ugaeA-nMTc', 'https://wallpapercave.com/wp/wp2547005.jpg', 'Action,Sci-fi', '1,2', '1,2,3,4');

INSERT INTO MOVIES (movie_id, title, teaser, image, genre, reviews_id, artists_id)
VALUES (02, 'spiderman-1', 'https://www.youtube.com/watch?v=t06RUxPbp_c', 'https://m.media-amazon.com/images/M/MV5BMTQyMzE0ODI0NF5BMl5BanBnXkFtZTYwNjY3NTY3._V1_.jpg', 'Action,Sci-fi', '1,2', '1,2,3,4');

INSERT INTO MOVIES (movie_id, title, teaser, image, genre, reviews_id, artists_id)
VALUES (03, 'captain marvel', 'https://www.youtube.com/watch?v=Z1BCujX3pw8', 'https://wallpaperaccess.com/full/2155558.jpg', 'Action,Sci-fi', '1,2', '1,2,3,4');

-- Fetch 
SELECT * FROM MOVIES;

----------CREATE A REVIEW TABLE----------

CREATE TABLE REVIEWS(
    review_id int primary key,
    movie_id int,
    user varchar(30),
    review text
);

INSERT INTO REVIEWS(review_id, movie_id, user, review) 
VALUES (01, 0001, 'ganesh', 'Innovative and charismatic');

INSERT INTO REVIEWS(review_id, movie_id, user, review) 
VALUES (02, 01, 'vinoth', 'Action-packed brilliance');

INSERT INTO REVIEWS(review_id, movie_id, user, review) 
VALUES (03, 02, 'arun', 'Stunningly entertaining..');

INSERT INTO REVIEWS(review_id, movie_id, user, review) 
VALUES (04, 02, 'mani', 'Unforgettable adventure.');

INSERT INTO REVIEWS(review_id, movie_id, user, review) 
VALUES (05, 03, 'venkat', 'Entertaining and iconic.');

INSERT INTO REVIEWS(review_id, movie_id, user, review)
VALUES (06, 03, 'ram', 'Epic adventure');

SELECT * FROM REVIEWS;


----------CREATE A ARTISTS TABLE---------

CREATE TABLE ARTISTS(
    artists_id int PRIMARY KEY,
    artists_name varchar(30),
    movie_id int,
    skill text,
    role text
);

INSERT INTO ARTISTS (artists_id, artists_name, movie_id, skill, role) VALUES (01, 'Robert Downey Jr', 01, 'fighting', 'tony stark');
INSERT INTO ARTISTS (artists_id, artists_name, movie_id, skill, role) VALUES (02, 'Tom Holland ', 02, 'fighting', 'peter');
INSERT INTO ARTISTS (artists_id, artists_name, movie_id, skill, role) VALUES (03, 'Brie Larson ', 03, 'fighting', 'Carol Danvers');

SELECT * FROM ARTISTS;

------------------QUERY-------------------

1.SELECT title,teaser,image,genre, review_id, user, review, artists_name,skill,role
FROM MOVIES
INNER JOIN REVIEWS ON REVIEWS.movie_id = MOVIES.movie_id
INNER JOIN ARTISTS ON ARTISTS.movie_id = MOVIES.movie_id

2.SELECT title, artists_name, role
from MOVIES
inner join ARTISTS on  ARTISTS.movie_id=MOVIES.movie_id

3.SELECT title,REVIEWS.movie_id,user,review
FROM MOVIES
INNER JOIN REVIEWS ON REVIEWS.movie_id = MOVIES.movie_id;
-------------------------------------------
