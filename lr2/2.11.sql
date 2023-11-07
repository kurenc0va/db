/*создаём новый столбец под названием 'Name or Facilities', объединяем данные в таблицу с одним столбцом с помощью 'UNION'*/
USE cd;
SELECT firstname AS 'Name or Facilities'  FROM members
UNION ALL
SELECT facility  FROM facilities;