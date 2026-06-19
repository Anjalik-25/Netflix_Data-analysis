-- 15 Business Problems & Solutions

----1. Count the number of Movies vs TV Shows

select distinct type,
count(*)
from netflix_title
group by type;

---2. Find the most common rating for movies and TV shows

select type,rating
from netflix_title
group by type;

----3. List all movies released in a specific year (e.g., 2020)

select *
from netflix_title
where type='Movie' and release_year='2020';

----4. Find the top 5 countries with the most content on Netflix
select country,
count(*) as content_produced
from netflix_title
where country is not NULL
group by country
order by content_produced desc
limit 5;
