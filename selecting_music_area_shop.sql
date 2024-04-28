/*select s."name", t."name", a."name", a.release_year from albumsinger a_s
	join album a on a.id = a_s.album_id 
	join singer s on s.id = a_s.singer_id
	join track t on t.album_id = a.id */


---------------------------------------------------------------------------------------------------------------------------------------------
-- 																ЗАДАНИЕ 2
---------------------------------------------------------------------------------------------------------------------------------------------

-- 1. Название и продолжительность самого длительного трека
select s."name" as "singer", t."name" as "track", t.duration as "seconds" from track t, albumsinger a_s
	join singer s on s.id = a_s.singer_id 
	join album a on a.id = a_s.album_id 
		where t.duration = (select max(t_max.duration) from track t_max) and t.album_id = a_s.album_id 

-- 2. Название треков, продолжительность которых не менее 3,5 минут
select s."name" as "singer", t."name" as "track", t.duration as "seconds" from track t, albumsinger a_s
	join singer s on s.id = a_s.singer_id 
	join album a on a.id = a_s.album_id 
		where t.duration >= 210 and t.album_id = a_s.album_id 

-- 3. Названия сборников, вышедших В период с 2018 по 2020 год включительно
select sb."name", sb.release_year from songbook sb
	where sb.release_year between 2018 and 2020

-- 3[1]. Названия сборников, вышедших ВНЕ периода с 2018 по 2020 год включительно
select sb."name", sb.release_year from songbook sb
	where sb.release_year not between 2018 and 2020

-- 4. Исполнители, чьё имя состоит из одного слова
select s."name" from singer s 
	where trim(s."name") not like ('% %') 
	
-- 5. Название треков, которые содержат слово «мой» или «my»
select s."name" as "singer", t."name" as "track", t.duration as "seconds" from track t, albumsinger a_s
	join singer s on s.id = a_s.singer_id 
	join album a on a.id = a_s.album_id 
		where (upper(t."name") like ('%MY %') or upper(t."name") like ('%МОЙ %')) and t.album_id = a_s.album_id 

---------------------------------------------------------------------------------------------------------------------------------------------
-- 																ЗАДАНИЕ 3
---------------------------------------------------------------------------------------------------------------------------------------------

-- 1. Количество исполнителей в каждом жанре
select g."name" as "жанр", count(*) as "количество" from genresinger gs 
	join genre g on g.id = gs.genre_id
	group by g."name"
	order by g."name"
	

-- 2. Количество треков, вошедших в альбомы 2019–2020 годов
--			!!!		В БАЗЕ ДАННЫХ НЕ ОКАЗАЛОСЬ ПЕСЕН ИЗ АЛЬБОМОВ ДЛЯ УКАЗАННОГО ДИАПАЗОНА	!!!
--			!!!		ПРИ РЕШЕНИИ ЗАДАНИЯ БЫЛ ИЗМЕНЕН ВРЕМЕННОЙ ИНТЕРВАЛ	[2017-2022]			!!!
	
select t."name" as "track", a."name" as "album", a.release_year from track t 
	join album a on t.album_id = a.id
	where a.release_year between 2017 and 2022
	order by a.release_year desc 
	

-- 3. Средняя продолжительность треков по каждому альбому
	
--select s."name", t."name", a."name", t.duration as "seconds" from albumsinger a_s
select s."name" as "singer", a."name" as "album", round(avg(t.duration)) as "average[sec./track]" from albumsinger a_s
	join album a on a.id = a_s.album_id 
	join singer s on s.id = a_s.singer_id
	join track t on t.album_id = a.id
	group by s."name", a."name"
	order by s."name", a."name"
	

-- 4. Все исполнители, которые не выпустили альбомы в 2020 году
	
-- !!! ДЛЯ РЕШЕНИЯ ЗАДАНИЯ ГОД ВЫПУСКА АЛЬБОМА БЫЛ ИЗМЕНЕН НА 2023

select s."name" as "singer" from albumsinger a_s, album a, singer s
	where a_s.album_id = a.id and a_s.singer_id = s.id
	group by s."name"
except
select _s."name" as "singer" from albumsinger _a_s, album _a, singer _s
	where _a_s.album_id = _a.id and _a_s.singer_id = _s.id and _a.release_year in (2023)
	group by _s."name"


-- 5. Названия сборников, в которых присутствует конкретный исполнитель 
	
--	[Depeche mode]
select s."name" as "исполнитель", sb."name" as "сборник", sb.release_year from albumsinger a_s
	join album a on a.id = a_s.album_id 
	join singer s on s.id = a_s.singer_id 
	join track t on t.album_id = a.id 
	join songbooktrack sbt on sbt.track_id = t.id 
	join songbook sb on sb.id = sbt.songbook_id 
	where upper(s."name") like '%DEP%'
	group by sb."name", s."name", sb.release_year
	order by sb.release_year

---------------------------------------------------------------------------------------------------------------------------------------------
-- 																ЗАДАНИЕ 4
---------------------------------------------------------------------------------------------------------------------------------------------

-- 1. Названия альбомов, в которых присутствуют исполнители более чем одного жанра
	
-- !!! ДЛЯ РЕШЕНИЯ ЗАДАНИЯ КОЛИЧЕСТВО ЖАНРОВ БЫЛО ПРИНЯТО РАВНЫМ 3
	
select s."name" as "singer", a."name" as "album", count(*) as "genre_count" from genresinger gs
	join genre g ON g.id = gs.genre_id 
	join singer s on s.id = gs.singer_id 
	join albumsinger a_s on a_s.singer_id = s.id 
	join album a on a.id = a_s.album_id 
	group by s."name", a."name" 
	having count(*) > 3
	order by s."name"
	

-- 2. Наименования треков, которые не входят в сборники
	
select s."name" as "singer", t."name" as"track" from track t
	join albumsinger a on a.album_id = t.album_id 
	join singer s on s.id = a.singer_id 
where t.id not in (select distinct sbt.track_id from songbooktrack sbt)	
	
	
-- 3. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек

select s."name" as "singer", t."name" as "track", a."name" as "album", t.duration from track t 
	join albumsinger a_s on a_s.album_id = t.album_id 
	join album a on a.id = a_s.album_id 
	join singer s on s.id = a_s.singer_id 
	group by s."name", t."name", a."name", t.duration
	having t.duration <= (select min(_t.duration) from track _t)
	order by t.duration 


-- 4. Названия альбомов, содержащих наименьшее количество треков

select s."name" as "singer", a."name" as "album", count(*) from track t 
	join albumsinger a_s on a_s.album_id  = t.album_id 
	join album a on a.id = a_s.album_id 
	join singer s on s.id = a_s.singer_id 
	group by s."name", a."name"
	having count(*) <= (select count(*) from track _t group by _t.album_id order by count(*) limit 1) 
	order by count(*)
	

