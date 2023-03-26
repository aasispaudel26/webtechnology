DROP DATABASE IF EXISTS SQLJOINS;
CREATE DATABASE SQLJOINS;
USE SQLJOINS;
CREATE TABLE Movies(
	mov_id int primary key auto_increment,
    mov_title varchar(50) NOT NULL,
    mov_category varchar(50) NOT NULL
);

CREATE TABLE Viewers(
	viw_id int primary key auto_increment,
    viw_fname varchar(50) NOT NULL,
    viw_lname varchar(50) NOT NULL,
    mov_id int,
    foreign key (mov_id) references Movies(mov_id)
    ON DELETE cascade
);

INSERT INTO Movies(mov_title, mov_category)
VALUES ('ASSASSIN’S CREED: EMBERS', 'Animations'),
		('Real Steel(2012)', 'Animations'),
		('Alvin and the Chipmunks', 'Animations'),
		('The Adventures of Tin Tin', 'Animations'),
		('Safe (2012)', 'Action'),
		('Safe House(2012)', 'Action'),
		('Marley and me', 'Romance'),
		('GIA', '18+'),
		('Deadline 2009', 'Deadline 2009');

INSERT INTO Viewers(viw_fname, viw_lname, mov_id)
VALUES ('Adam', 'Smith', 1),
		('Ravi', 'Kumar', 2),
		('Susan', 'Davidson', 5),
		('Jenny', 'Adrianna', 8),
        ('Harry', 'Dekoor', null),
		('Lee', 'Pong', 9);

SELECT * FROM movies;
SELECT * FROM viewers;

-- Cross JOIN
-- Cross JOIN is a simplest form of JOINs which matches each row from one database table to all rows of another.

-- SELECT * FROM movies CROSS JOIN viewers;
-- SELECT * FROM viewers CROSS JOIN movies;

-- INNER JOIN
-- The inner JOIN is used to return rows from both tables that satisfy the given condition.

-- SELECT * FROM viewers
-- INNER JOIN movies
-- ON movies.mov_id = viewers.viw_id;

-- RIGHT OUTER JOIN
-- SELECT * FROM viewers
-- RIGHT JOIN movies
-- ON movies.mov_id = viewers.viw_id;

-- LEFT OUTER JOIN
-- SELECT * FROM viewers
-- LEFT JOIN movies
-- ON movies.mov_id = viewers.viw_id;

