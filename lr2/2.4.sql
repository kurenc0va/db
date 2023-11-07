/*выводим нужные столбцы и  строки для которых membercost не равен 0 с помощью условия после функции WHERE*/
USE cd;
SELECT facility FROM facilities WHERE membercost != 0 ;