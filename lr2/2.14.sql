/* Выберите самый дорогой и самый дешевый объект.*/

USE cd;
/*выбираем объекты с максимальной(MAX) или минимальной(MIN) стоимостью*/
SELECT facility, membercost FROM facilities WHERE initialoutlay = (SELECT min(initialoutlay) FROM facilities)
UNION
SELECT facility, membercost FROM facilities WHERE initialoutlay = (SELECT max(initialoutlay) FROM facilities);