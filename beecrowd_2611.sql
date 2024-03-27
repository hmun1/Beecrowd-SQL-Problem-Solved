CREATE DATABASE beecrowd_2611;

use beecrowd_2611;

CREATE TABLE movies (
id INT PRIMARY KEY,
name varchar(50),
id_genres int, 
foreign key(id_genres) references genres(id));

create table genres(
id int primary key,
description varchar(50));

insert into movies(id, name, id_genres)
values 
(1, 'Batman', 3),
(2, 'The Battle of the Dark River', 3),
(3, 'White Duck', 1),
(4, 'Breaking Barriers', 4),
(5, 'The Two Hours', 2);

insert into genres(id, description)
values
(1, 'Animation'),
(2, 'Horror'),
(3, 'Action'),
(4, 'Drama'),
(5, 'Comedy');

select movies.id, movies.name from movies
inner join genres on movies.id_genres = genres.id
where genres.description = 'Action';