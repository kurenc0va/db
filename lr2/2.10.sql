/* Сортируем 10 фамилий членов клуба без повтора*/
USE cd;
SELECT DISTINCT surname FROM members WHERE surname != 'Guest' ORDER BY surname LIMIT 10;