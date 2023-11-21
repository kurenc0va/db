-- Active: 1696918614352@@localhost@3306@cd
/* Рассчитайте для каждого члена количество рекомендаций, 
данных этим членом клуба, искючив членов, которые не давали 
рекомендаций.*/
USE cd;

/*Выбираем идентификатор участника, имя, фамилию и количество рекомендаций для каждого участника*/
USE cd;

SELECT CONCAT(m1.surname, ' ', m1.firstname) AS 'ФИО', COUNT(m2.memid) AS 'Количество рекомендаций'
  FROM members m1
  JOIN members AS m2 ON m2.recommendedby = m1.memid
  GROUP BY m1.memid;