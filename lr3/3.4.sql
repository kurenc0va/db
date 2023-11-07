/*Выберите всех членов клуба и членов, которые их рекомендовали,  отсортировав их по имени и фамилии.*/


USE cd;
SELECT memb1.surname, memb1.firstname, memb2.surname, memb2.firstname
FROM members memb1
LEFT JOIN members memb2 ON memb1.recommendedby = memb2.memid
ORDER BY memb1.surname, memb1.firstname;
