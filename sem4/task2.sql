
-- 2. Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. 
-- В таблице должно быть четыре поля: id, name, age, address. Все поля в таблице обязательны для заполнения.

-- Необходимо добавить 5-10 одногруппников в данную таблицу.

-- Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), 
-- которые живут в Москве и их возраст находится в диапазоне [18, 30) лет.

-- Примечание:

-- Квадратные скобки при указании диапазона, означают "включительно", а круглые "не включительно", 
-- то есть диапазон (7, 9] означает "от 7, где 7 не попадает в данный диапазон, до 9 включительно". 
-- Такой синтаксис нельзя использовать в sql, вам нужно найти решение, как такое условие можно записать в sql 
-- по-другому.




CREATE TABLE groupmates (
mateid INTEGER PRIMARY KEY AUTO_INCREMENT,
name TEXT NOT NULL,
age INTEGER NOT NULL,
address TEXT NOT NULL
);

INSERT INTO groupmates(name, age, address) VALUES ('Alexey', 31, 'Moscow');
INSERT INTO groupmates(name, age, address) VALUES ('Adam', 19, 'New-York');
INSERT INTO groupmates(name, age, address) VALUES ('Shaley', 17, 'LA');
INSERT INTO groupmates(name, age, address) VALUES ('Mira', 20, 'Moscow');
INSERT INTO groupmates(name, age, address) VALUES ('Lila', 19, 'Lissabon');
INSERT INTO groupmates(name, age, address) VALUES ('Mandy', 18, 'New-York');
INSERT INTO groupmates(name, age, address) VALUES ('Derek', 26, 'Paris');
INSERT INTO groupmates(name, age, address) VALUES ('Ivan', 19, 'Novgorod');
INSERT INTO groupmates(name, age, address) VALUES ('Maria', 21, 'Moscow');
INSERT INTO groupmates(name, age, address) VALUES ('Svetlana', 27, 'Samara');

SELECT name AS 'Имя'
FROM groupmates
WHERE address = 'Moscow' AND (age >= 18 AND age < 30)
