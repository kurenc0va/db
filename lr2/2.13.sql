
/* Выберите имя, фамилию и дату вступления в клуб последних из всех вступивших*/

USE cd;
/*выбираем объект с максимальной датой регистрации*/
SELECT firstname, surname, joindate FROM members WHERE joindate = (SELECT MAX(joindate)FROM members);