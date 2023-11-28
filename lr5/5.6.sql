-- Active: 1696918614352@@localhost@3306@cd
/*Составьте список общего количества бронирований на каждый 
объект в месяц в 2012 году.*/
USE cd;

SELECT f.facility, MONTH(b.starttime) AS 'Месяц', SUM(b.slots) AS 'Количество бронирований' 
  FROM facilities f
    JOIN bookings b ON f.facid = b.facid
  WHERE YEAR(b.starttime) = "2012"
  GROUP BY f.facility, MONTH(b.starttime);