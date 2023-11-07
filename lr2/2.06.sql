/*Выбрать объекты, включаящие слово 'Tennis'.*/

USE cd;
/*Проверяем, содержит ли каждая из строк facility в себе слово Tennis и выбираем их*/
SELECT facility FROM facilities WHERE facility LIKE "%Tennis%";