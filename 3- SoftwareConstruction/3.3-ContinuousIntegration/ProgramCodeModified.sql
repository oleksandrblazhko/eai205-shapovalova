CREATE TABLE Користувачка(
id_korystuvachka int,
Прізвище varchar,
Імя varchar,
Вік int,
Інвалідність int,
Номер_телефону char,
id_dodatok int references Додаток(id_dodatok) ON DELETE CASCADE
);
