-- Active: 1696918614352@@localhost@3306@cd
/*Составьте список имен и идентификаторов каждого участника, 
а также их первого бронирования после 1 сентября 2012 г. 
Упорядочите по идентификатору участника.*/
SELECT
    m.memid AS "ID",
    m.firstname AS "Имя участника",
    m.surname AS "Фамилия участника",
    MIN(b.starttime) AS "Первая дата бронирования"
FROM members m
LEFT JOIN bookings b ON m.memid = b.memid
WHERE DATE(b.starttime) > '2012-09-01'
GROUP BY m.memid, m.firstname, m.surname
ORDER BY m.memid;