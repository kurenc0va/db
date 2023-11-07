/* Выберите список всех членов, включая человека, который их 
рекомендовал (если таковой имеется), без использования каких-либо 
объединений. Исключите в списке дубликаты, упорядочите лист по ФИО (==   
имя + фамилия).*/

USE cd;
SELECT CONCAT(memb.firstname, ' ', memb.surname) AS FullFio,
(SELECT CONCAT(reccomend.firstname, ' ', reccomend.surname) FROM members reccomend
WHERE reccomend.memid = memb.recommendedby) AS RecommendFio FROM members  memb WHERE memb.memid != 0

ORDER BY FullFio;