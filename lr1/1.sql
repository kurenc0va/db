/*Обращаемся к базе "WORLD"*/
USE world;
/*Оттуда выбираем базу "City"*/
SELECT name FROM city;
/*Выбираем города на букву "a"*/
SELECT name FROM city WHERE name like "a%";