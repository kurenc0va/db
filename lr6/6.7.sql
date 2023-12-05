-- Active: 1696918614352@@localhost@3306@cd
/*Подсчитайте количество участников, чья фамилия 
начинается на определенную букву, отсортировав по буквам в порядке убывания. */
USE cd;
SELECT COUNT(*) AS 'Кол-во людей c одной и той же первой буквой фамилии', LEFT(surname, 1) AS firstletter
FROM members
GROUP BY firstletter
ORDER BY firstletter DESC;
