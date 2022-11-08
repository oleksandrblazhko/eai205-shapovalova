CREATE OR REPLACE TYPE Танець UNDER Інформація and Відео (
 id_dance SERIAL PRIMARY KEY,
Назва varchar,
Додаткова_інформація varchar(1500),
      OVERRIDING MEMBER PROCEDURE display 
);
CREATE OR REPLACE TYPE Інформація (
 d_informacion SERIAL PRIMARY KEY,
Дата_започаткування date,
Країна varchar,
Інтенсивність int,
Інвалідність int,
Тип_танцю char,
Історія char(1500),
      OVERRIDING MEMBER PROCEDURE display 
);
CREATE OR REPLACE TYPE Відео AS OBJECT (
  id_video SERIAL PRIMARY KEY,
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
CREATE OR REPLACE TYPE Застосунок_для_танців UNDER Танець AS OBJECT (
  id_dodatok SERIAL PRIMARY KEY,
Назва varchar,
Тип varchar,
Розмір float,
Мінімальні_характ_для_запуску  varchar(300),
Зміст  varchar(300),
      MEMBER PROCEDURE display
  CONSTRUCTOR FUNCTION Відео(Назва varchar)
          RETURN SELF AS RESULT,
        /* Функції отримання значень атрибутів */
    MEMBER FUNCTION get_Informacion RETURN NUMBER,
    MEMBER FUNCTION get_Video RETURN VARCHAR,
    MEMBER FUNCTION get_price RETURN NUMBER,
  /* Процедура виводу на екран значень атрибутів */
      MEMBER PROCEDURE display
); 

