/*Выберите список бронирований на 14 сентября 2012 г., cтоимость 
которых более 30. Включите в выходные данные название заведения, имя 
участника, отформатированное как одиночное столбец и стоимость. 
Упорядочивайте по убыванию стоимости и не используйте подзапросы.
Помните, что у гостей разные затраты по сравнению с участниками 
(указанные затраты указаны за получасовой «интервал»), а идентификатор 
гостя всегда имеет идентификатор 0. */

USE cd;
SELECT DISTINCT CONCAT(f.facility, ' ', memb.firstname) AS "Facility and Name", 
CASE 
WHEN book.memid = 0 THEN f.guestcost * book.slots
ELSE f.membercost * book.slots 
END AS cost
FROM bookings book
JOIN facilities f ON book.facid = f.facid
JOIN members memb ON book.memid = memb.memid
WHERE DATE(book.starttime) = "2012-09-14" AND ((book.memid = 0 AND  f.guestcost * book.slots > 30) OR (book.memid != 0 AND f.membercost * book.slots > 30)) 
ORDER BY cost DESC;

 