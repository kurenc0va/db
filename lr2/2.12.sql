/*Найдите дату последней регистрации члена клуба.*/

USE cd;
/*выбираем максимальное значение joindate через функцию MAX*/
SELECT MAX(joindate) FROM members;