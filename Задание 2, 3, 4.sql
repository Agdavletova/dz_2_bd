--Задание 2

--1
select title,duration from song 
where duration = (select max(duration) from song);

--2
select title from song where duration >= 3.5;

--3
select title from collection where year BETWEEN '2018-01-01' AND '2020-12-31';

--4
select * from artist where name like '_';

--5
select title from song where title like  '%my%' or title like  '%мой%';

--Задание 3

--1
select count(artist_id) from listartists 
group by genre_id;

--2
SELECT count(s.title) from album a 
JOIN listsongs l ON a.album_id = l.album_id
join song s on l.song_id  = s.song_id
where a.year between '2019-01-01' and '2020-12-31';


--3
SELECT a.title, avg(distinct s.duration) from album a
JOIN listsongs l ON a.album_id = l.album_id
join song s on l.song_id  = s.song_id
group by a.title;

--4
SELECT distinct ar.name  from album a
JOIN listalbums l ON a.album_id = l.album_id
join artist ar on l.artist_id  = ar.artist_idwhere a.year not between '2020-01-01' and '2020-12-31'

--5
select distinct c.title as collection_title from collection c 
join collectionssongs c2 ON c2.collection_id = c.collection_id 
join song s on s.song_id = c2.song_id 
join listsongs l on l.song_id = s.song_id 
join album a on a.album_id = l.album_id 
join listalbums l2 ON l2.album_id = a.album_id 
join artist a2 on a2.artist_id = l2.artist_id 
where a2.name like '%Dima Bilan%' ;

--Задание 4

--1
SELECT a.title AS album_title FROM album a
JOIN listalbums la ON la.album_id = a.album_id
JOIN artist ar ON ar.artist_id = la.artist_id
join listartists l on l.artist_id = ar.artist_id 
join genre g on g.genre_id = l.genre_id 
group by a.title 
having COUNT(distinct g.title) > 1;

--2
select s.title from song s 
full join collectionssongs c2 on c2.song_id = s.song_id 
full join collection c on c.collection_id = c2.collection_id 
where c.title is null ;

--3
select distinct s.title as title_song, s.duration, ar.name as artist_name from song s 
join listsongs l on l.song_id = s.song_id 
join listalbums l2 on l2.album_id = l.album_id 
join artist ar on ar.artist_id = l2.album_id 
where s.duration = (select min(duration) from song);

--4
SELECT a.title, COUNT(s.title) AS count_song FROM album a 
JOIN listsongs l ON l.album_id = a.album_id 
JOIN song s ON s.song_id = l.song_id 
GROUP BY a.title
HAVING COUNT(s.title) = (
    SELECT MIN(cnt)
   FROM (
        SELECT COUNT(song_id) AS cnt
        FROM listsongs
        GROUP BY album_id
    ) AS min_count
)




