/*Обращаемся к базе "WORLD"*/
use world;
/*Оттуда выбираем базу "City"*/
select name from city;
/*Выбираем города на букву "a"*/
select name from city where name like "a%";