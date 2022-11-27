
CREATE OR REPLACE TYPE Інформація AS OBJECT (
 d_informacion SERIAL INT,
Дата_започаткування date,
Країна varchar,
Інтенсивність int,
Інвалідність int,
Тип_танцю char,
Історія char(1500),
      OVERRIDING MEMBER PROCEDURE display 
);
CREATE OR REPLACE TYPE Відео AS OBJECT (
  id_video SERIAL INT,
Назва varchar,
Розмір_файлу int,
Формат char,
Тривалість int,
      MEMBER PROCEDURE display
); 

CREATE OR REPLACE TYPE Користувачка AS OBJECT (
  id_korystuvachka SERIAL PRIMARY KEY,
Прізвище varchar,
Імя varchar,
Вік int,
Інвалідність int,
Номер_телефону char,
  
      MEMBER PROCEDURE display
); 
CREATE OR REPLACE TYPE Танець UNDER Інформація (
 id_dance SERIAL PRIMARY KEY,
Назва varchar,
Додаткова_інформація varchar(1500),
      OVERRIDING MEMBER PROCEDURE display 
);
CREATE OR REPLACE TYPE Застосунок_для_танців UNDER Танець AS OBJECT (
  id_dodatok SERIAL INT,
Назва varchar,
Тип varchar,
Розмір float,
Мінімальні_характ_для_запуску  varchar(300),
Зміст  varchar(300),
      MEMBER PROCEDURE display
  )
