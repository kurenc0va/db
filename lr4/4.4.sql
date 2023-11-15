/*Реальные затраты на создание корта 2 (facid =1) составили 
10000. Обновите данные в таблице, чтобы учесть это изменение*/

USE cd;
UPDATE facilities
SET initialoutlay = 10000
/*Вводим новое значение параметра initialoutlay в строке с facid = 1*/
WHERE facid = 1;
SELECT * FROM facilities;