/*Выберите количество аренд объектов клуба в каждый месяц.*/USE cd;USE cd;
USE cd;
SELECT YEAR(b.starttime) AS 'Год', MONTH(b.starttime) AS 'Месяц', f.facility AS 'Объект', COUNT(*) AS 'Количество аренд'
FROM bookings b
JOIN facilities f ON b.facid = f.facid
GROUP BY YEAR(b.starttime), MONTH(b.starttime), f.facility ORDER BY Год, Месяц;