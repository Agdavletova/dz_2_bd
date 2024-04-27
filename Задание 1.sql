insert into genre(genre_id, title) values (1, 'Pop');
insert into genre(genre_id, title) values (2, 'Rock');
insert into genre(genre_id, title) values (3, 'Rap');

insert into artist values (1, 'Dima Bilan');
insert into artist values (2, 'Scriptonite');
insert into artist values (3, 'Selena Gomez');
insert into artist values (4, 'Skillet');
insert into artist values (5, 'Y');

insert into album values (1, 'Believe', '2009-04-21');
insert into album values (2, '7', '2023-05-21');
insert into album values (3, 'Rare', '2020-03-19');
insert into album values (4, 'Rise', '2013-01-01');
insert into album values (5, 'yy', '2016-01-01');

insert into song values (1, 'Believe', '3.05');
insert into song values (2, 'Position', '2.17');
insert into song values (3, 'Space', '3.57');
insert into song values (4, 'People You Know', '3.42');
insert into song values (5, 'Single Soon', '3.13');
insert into song values (6, 'Rise', '4.07');
insert into song values (7, 'Not Gonna Die', '4.11');
insert into song values (8, 'No no no', '5.19');
insert into song values (9, 'my love', '3.19');
insert into song values (10, 'мой ненаглядный', '4.41');

insert into collection values (1, 'Love', '2024-04-25');
insert into collection values (2, 'Sadness', '2024-01-01');
insert into collection values (3, 'Outside', '2023-04-25');
insert into collection values (4, 'Night', '2023-10-11');
insert into collection values (5, 'Collection number one', '2020-10-11');
insert into collection values (6, 'Sun', '2019-11-11');

insert into listartists values (3, 1);
insert into listartists values (1, 1);
insert into listartists values (1, 3);
insert into listartists values (2, 4);
insert into listartists values (3, 2);
insert into listartists values (1, 5);
insert into listartists values (2, 5);

insert into listalbums values (1, 1);
insert into listalbums values (2, 2);
insert into listalbums values (3, 3);
insert into listalbums values (4, 4);
insert into listalbums values (1, 2);
insert into listalbums values (4, 3);
insert into listalbums values (5, 5);

insert into listsongs values (1, 1);
insert into listsongs values (2, 2);
insert into listsongs values (2, 3);
insert into listsongs values (3, 4);
insert into listsongs values (3, 5);
insert into listsongs values (4, 6);
insert into listsongs values (4, 7);
insert into listsongs values (4, 8);
insert into listsongs values (5, 9);
insert into listsongs values (5, 10);

insert into collectionssongs values (1, 1);
insert into collectionssongs values (1, 3);
insert into collectionssongs values (2, 7);
insert into collectionssongs values (2, 5);
insert into collectionssongs values (3, 6);
insert into collectionssongs values (4, 2);
insert into collectionssongs values (4, 4);
insert into collectionssongs values (1, 4);
insert into collectionssongs values (2, 6);
insert into collectionssongs values (5, 9);
insert into collectionssongs values (6, 9);