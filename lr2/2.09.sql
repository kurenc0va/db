/*происходит выбор всех членов клуба начиная с 2012 года*/
USE cd;
SELECT surname, firstname FROM members WHERE joindate > '2012-08-31';