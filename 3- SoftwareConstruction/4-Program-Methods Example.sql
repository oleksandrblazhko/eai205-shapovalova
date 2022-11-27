CREATE OR REPLACE TYPE BODY Застосунок_для_танців AS

    CONSTRUCTOR FUNCTION Застосунок_для_танців(Назва varchar)
        RETURN SELF AS RESULT,
    IS
        k_id_dodatok Застосунок_для_танців.id_dodatok%TYPE;
    BEGIN
        SELECT id_dodatok INTO k_id_dodatok
        FROM Застосунок_для_танців
        WHERE 
            Назва = k_Назва;
        SELF.id_dodatok := k_id_dodatok
        SELF.Назва := k_Назва;
        RETURN;
    EXCEPTION WHEN NO_DATA_FOUND THEN
        INSERT INTO Застосунок_для_танців (Назва)
            VALUES ( k_Назва)
        RETURNING id_dodatok INTO k_id_dodatok;
        SELF.id_dodatok := k_id_dodatok;
        SELF.Назва := k_Назва;
        RETURN;
    END Застосунок_для_танців;
    
        /* Процедура зміни значень атрибутів */
	      MEMBER PROCEDURE formar_Застосунок_для_танців(id_dodatok int, Назва varchar )
	      IS
	      BEGIN
        UPDATE Застосунок_для_танців SET Назва = k_Назва
		      WHERE id_dodatok = k_id_dodatok;
		      SELF.Назва := k_Назва;;
	      END formar_Застосунок_для_танців;
    
        /* Функції отримання значень атрибутів */
	      /* get_order_id */
        MEMBER FUNCTION id_dodatok
	        RETURN int
	      IS
        BEGIN
          RETURN SELF.id_dodatok;
        END get_id_dodatok;
        
        /* get_date_order */
        MEMBER FUNCTION get_Назва
	        RETURN Varchar
	      IS
        BEGIN
          RETURN SELF.Назва;
        END get_Назва;

        /* Процедура виводу на екран значень атрибутів */
        MEMBER PROCEDURE display 
        IS
        BEGIN 
          dbms_output.put_line('id_dodatok: ' || id_dodatok);
          dbms_output.put_line('Назва: ' || Назва);
        END display;
END; 
/
