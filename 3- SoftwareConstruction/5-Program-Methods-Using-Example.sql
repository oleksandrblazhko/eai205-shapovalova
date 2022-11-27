DECLARE
    pr1 Танець ;
BEGIN 
    pr1:= NEW Танць(1,'Фламенко');
	    dbms_output.put_line('get get_dance_id: ' || pr1.get_dance_id);
	    dbms_output.put_line('get get_Назва: ' || pr1.get_Назва);
    pr1.display();
END;
/

/* Приклад роботи з класами Product, My_user */
DECLARE 
    pr1 Танець;
    us1 Користувачка;
BEGIN 
    pr1:= Танець(1,'Фламенко',);
	pr1.display();
    us1:= Користувачка(1, 'Шаповалова Вікторія Валеріївна', "+380815402635");
    us1.display();
END;
