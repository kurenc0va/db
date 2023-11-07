/*Также как в задании 3,4 с добавлением объединение двух условий с помощью 'and'*/
USE cd;
SELECT facility FROM facilities WHERE membercost <= monthlymaintenance / 50 AND membercost !=0;