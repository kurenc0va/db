/* Выбрать объекты, пользование которых бесплатно для членов клуба.*/


USE cd;
/*выводим нужные столбцы и  строки для которых membercost равен 0 с помощью условия после функции WHERE*/
SELECT facility FROM facilities WHERE membercost = 0 ;