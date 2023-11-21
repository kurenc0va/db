-- Active: 1696918614352@@localhost@3306@cd
/* Рассчитайте для каждого члена количество рекомендаций, 
данных этим членом клуба, искючив членов, которые не давали 
рекомендаций.*/
USE cd;

/*Выбираем идентификатор участника, имя, фамилию и количество рекомендаций для каждого участника*/
SELECT
    mem.memid AS membersID,
    mem.firstname AS firstname,
    mem.surname AS lastname,
    COUNT(mem2.memid) AS reccom_count
FROM
    members mem
JOIN
    members mem2 ON mem.memid = mem2.recommendedby
GROUP BY
    mem.memid, mem.firstname, mem.surname;