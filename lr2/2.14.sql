/* Выберите самый дорогой и самый дешевый объект.*/

USE cd;
/*выбираем объекты с максимальной(MAX) или минимальной(MIN) стоимостью*/
SELECT facility, initialoutlay FROM facilities WHERE initialoutlay = (SELECT min(initialoutlay) FROM facilities) OR (initialoutlay = (SELECT max(initialoutlay) FROM facilities));