-- Active: 1696918614352@@localhost@3306@cd
/*Для каждого дня августа 2012 года рассчитайте скользящее среднее общего дохода за предыдущие 15 дней.
Вывод должен содержать столбцы даты и дохода, отсортированные по дате. 
Не забудьте учесть возможность того, что в день будет нулевой доход. 
Примечание: используйте DATE_ADD для генерации серии дат.*/
USE cd;
WITH RECURSIVE DateRange AS (
    SELECT '2012-08-01' AS Date
    UNION ALL
    SELECT DATE_ADD(Date, INTERVAL 1 DAY) 
    FROM DateRange 
    WHERE Date < '2012-08-31'
),
TotalRevenue AS(
SELECT DateRange.Date, 
SUM(CASE 
		WHEN(DATE(b.starttime) != Date) THEN 0
		WHEN (b.memid = 0) THEN f.guestcost * b.slots
		ELSE f.membercost * b.slots
	END) AS total_revenue,
(SUM(IF(b.memid = 0, f.guestcost * b.slots, f.membercost * b.slots) / 15)) AS moving_average
    FROM DateRange
    LEFT JOIN bookings b ON DATE_ADD(Date, INTERVAL -14 day) <= DATE(b.starttime) AND DATE(b.starttime) <= Date
    LEFT JOIN facilities f ON b.facid = f.facid
    GROUP BY Date
)
SELECT * FROM TotalRevenue
ORDER BY Date;