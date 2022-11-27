CREATE TABLE Танець(
id_dance SERIAL int,
Назва varchar,
Країна varchar,
Інтенсивність int,
Додаткова_інформація varchar(1500),
id_dodatok int references Додаток(id_dodatok) ON DELETE CASCADE
);
