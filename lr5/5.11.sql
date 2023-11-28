-- Active: 1696918614352@@localhost@3306@cd
/*Составьте список общего количества часов, забронированных на 
один объект, помня, что интервал длится полчаса. Выходная таблица 
должна состоять из идентификатора объекта, имени и забронированных часов, 
отсортированных по идентификатору объекта. Попробуйте отформатировать 
часы с точностью до двух десятичных знаков.*/
USE cd;
SELECT
    f.facid AS "ID",
    f.facility AS "Name",
    ROUND(SUM(b.slots)/2,2) AS "Общее количество часов"
FROM facilities f
JOIN bookings b ON f.facid = b.facid
GROUP BY f.facid, f.facility
ORDER BY f.facid;