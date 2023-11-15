-- Active: 1696918614352@@localhost@3306@cd
/*Выберите ФИО (== имя + фамилия) всех, кто покупал корты 1 и 2.*/

USE cd;
SELECT DISTINCT firstname, surname FROM members
JOIN bookings ON members.memid = bookings.memid
JOIN facilities ON facilities.facid = bookings.facid
WHERE facilities.facility LIKE '%Court 1%' OR facilities.facility LIKE '%Court 2%';
