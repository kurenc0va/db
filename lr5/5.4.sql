-- Active: 1696918614352@@localhost@3306@cd
/* Рассчитайте количество аренд каждого из объектов клуба.*/
USE cd;
/* Выбираем идентификатор объекта, название объекта и количество бронированных слотов для каждого объекта*/
SELECT
    fac.facid AS Facid,
    fac.facility AS Facility,
    SUM(b.slots) AS reccommend
FROM facilities fac
JOIN bookings b ON b.facid = fac.facid
GROUP BY fac.facid, fac.facility;