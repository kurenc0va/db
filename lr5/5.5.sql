-- Active: 1696918614352@@localhost@3306@cd
/* Рассчитайте количество аренд каждого из объектов клуба за 
сентябрь 2012 года.*/
USE cd;
SELECT facility, sum(b.slots) AS 'Количество аренд' FROM facilities fac
INNER JOIN bookings AS b ON b.facid = fac.facid GROUP BY fac.facid;