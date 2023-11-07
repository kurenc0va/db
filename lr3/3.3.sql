/*Выберите членов клуба, которые рекомендовали других членов для вступления.*/

USE cd;
SELECT DISTINCT memb1.surname, memb2.firstname
FROM members memb1, members memb2
WHERE memb1.memid = memb2.recommendedby;