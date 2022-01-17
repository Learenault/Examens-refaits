
-------- creation utilisateurs-------------


CREATE USER 'learnt'@'%' IDENTIFIED BY 'Learnt23';



-------- visibiliter des utilisateurs-------------
SELECT * FROM mysql.user; 



------- creation du role ---------------
CREATE ROLE marketing



------- attribution privilege role -------------
GRANT INSERT, UPDATE, DELETE 
ON gescom_afpa.products, gescom_afpa.categories, gescom_afpa.orders 
TO 'marketing'@'localhost' 



-------- droits pour la lecture des commandes et des clients---------
GRANT SELECT
ON gescom_afpa.orders, gescom_afpa.orders_details, gescom_afpa.customers
TO 'marketing'@'localhost';


-------- accorder à un utilisateur le role ---------
GRANT marketing
TO 'learnt'@'localhost'

