/*Выведите наименования всех объектов клуба заглавными буквами, 
если они содержат в названии слово ‘Tennis’*/
USE cd;
SELECT UPPER(facility) AS 'Наименования c заглавными буквами' 
FROM facilities 
WHERE BINARY facility LIKE '%Tennis%';