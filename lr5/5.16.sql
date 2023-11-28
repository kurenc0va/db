/*Составьте список трех крупнейших объектов, приносящих доход (включая связи).
 Вывод названия и ранга объекта, отсортированный по рангу и названию объекта.
Примечание: используйте функцию ранжирования*/
USE cd;
SELECT f.facility, RANK() OVER (ORDER BY SUM(IF(b.memid = 0, f.guestcost * b.slots, f.membercost * b.slots)) DESC) as rankk
FROM facilities f
JOIN bookings b ON f.facid = b.facid GROUP BY f.facility ORDER BY rankk, f.facility
LIMIT 3;