/*Обращаемся к базе "WORLD"*/
USE world;
/*Оттуда выбираем базу "City"*/
SELECT name from city;
/*Выбираем города на букву "a"*/
SELECT name from city where name like "a%";