CREATE TABLE Застосунок_для_танців(
id_dodatok SERIAL PRIMARY KEY,
Назва varchar,
Тип varchar,
Розмір float,
Мінімальні_характеристики_для_запуску  varchar(300),
Зміст  varchar(300),
);


CREATE TABLE Танець(
id_dance SERIAL PRIMARY KEY,
Назва varchar,
Додаткова інформація varchar(1500),
id_dodatok int references Додаток(id_dodatok) ON DELETE CASCADE
);

CREATE TABLE Користувачка(
id_korystuvachka SERIAL PRIMARY KEY,
Прізвище varchar,
Імя varchar,
Вік int,
Інвалідність int,
Номер_телефону char,
id_dodatok int references Додаток(id_dodatok) ON DELETE CASCADE
);

CREATE TABLE Інформація(
id_informacion SERIAL PRIMARY KEY,
Дата_започаткування date,
Країна varchar,
Інтенсивність int,
Інвалідність int,
Тип танцю char,
Історія char(1500)
id_dance int references Танець(id_dance) ON DELETE CASCADE
);

CREATE TABLE Відео(
id_video SERIAL PRIMARY KEY,
Назва varchar,
Розмір_файлу int,
Формат char,
Тривалість int,
id_dance int references Танець(id_dance) ON DELETE CASCADE
);

CREATE TABLE КористувачкаВідео(
id_korystuvachka int references Користувачка(id_korystuvachka) ON DELETE CASCADE,
id_video int references Відео(id_video) ON DELETE CASCADE,
primary key(id_video, id_korystuvachka)
);

CREATE TABLE КористувачкаІнформація(
id_korystuvachka int references Користувачка(id_korystuvachka) ON DELETE CASCADE,
id_informacion int references Інформація(id_informacion) ON DELETE CASCADE,
primary key(id_informacion, id_korystuvachka)
);
