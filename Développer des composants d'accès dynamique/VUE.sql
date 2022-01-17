/* Exercice 1 sur les vues */


CREATE VIEW produits
AS
SELECT pro_id, pro_ref, pro_name, cat_id, cat_name FROM products
JOIN categories ON pro_cat_id = cat_id



/* Exercice 2 sur les procédures */

BEGIN 

SELECT (ord_id) AS Numero_Commande,(pro_name) AS Produits,(ode_unit_price) AS Prix, (ode_quantity)AS Quantite, (ode_discount) AS reduction, ode_unit_price * ode_quantity AS Montant
FROM products
JOIN orders_details
ON pro_id = ode_pro_id
JOIN orders
ON ode_ord_id = ord_id 
WHERE ord_id = p_numero_commande;

SELECT  (ord_id) AS Numero_Commande, (CONCAT(cus_lastname," ",cus_firstname)) AS Client, (ord_order_date) AS Date_Commande, SUM(ode_unit_price * ode_quantity) as p_total, SUM((ode_unit_price -ode_discount) * ode_quantity) as p_total_reduction_comprise 
FROM orders_details as ode
JOIN orders  as ord 
ON ord.ord_id = ode.ode_ord_id
JOIN customers as c 
ON c.cus_id = ord.ord_cus_id
WHERE ord.ord_id = p_numero_commande;

END


/* Exercice 3 sur les triggers */
CREATE TRIGGER Mise_a_jour_stock

DELIMITER ;
BEGIN 

DECLARE v_codart INT;
SET v_codart = (SELECT codart FROM commander_article WHERE codart = NEW.pro_id);

IF (NEW.pro_stock < NEW.pro_stock_alert) 
THEN 
if ISNULL(v_codart) 
THEN 
INSERT INTO commander_article (codart, qte, date) VALUES (new.pro_id, new.pro_stock_alert - new.pro_stock, now()); 
ELSE UPDATE commander_article SET qte = new.pro_stock_alert - new.pro_stock , date = now() WHERE codart = v_codart; 
END IF; 
END IF;

IF (NEW.pro_stock > NEW.pro_stock_alert)
DELETE INTO commander_article(codart, qte, date)VALUES (new.pro_id, new.pro_stock_alert - new.pro_stock, now());  
END IF;

END |

 DELIMITER ;





/* Exercice 4 sur les transactions */
START TRANSACTION; 
INSERT INTO `posts` (`pos_id`, `pos_libelle`) VALUES (NULL, 'retraite');
UPDATE employees SET emp_pos_id = 
    (SELECT pos_libelle 
        FROM posts 
        ORDER BY `pos_id` DESC LIMIT 1)
        WHERE emp_pos_id = "HANNAH"
UPDATE employees SET emp_pos_id = 2 where 
(SELECT MIN(emp_enter_date)AND emp_pos_id = 14)


