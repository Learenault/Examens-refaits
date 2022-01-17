/* INTERROGER LA BASE DE DONNEE */
 

1)  
SELECT CONCAT(emp_lastname, ' ', emp_firstname)AS Employé, emp_children AS Nombre_enfants 
FROM employees ORDER BY Nombre_enfants DESC,Employé ASC

2) 
SELECT cus_lastname, cus_firstname, cus_countries_id 
FROM customers
WHERE cus_countries_id != "FR"

3) 
 SELECT DISTINCT cus_city, cus_countries_id 
 FROM customers ORDER BY cus_city ASC

4) 
 SELECT cus_lastname, cus_update_date 
 FROM customers WHERE cus_update_date IS NOT NULL

5) 
 SELECT * 
 FROM customers WHERE cus_city LIKE '%divos%'

6) 
 SELECT MIN(pro_price) FROM products LIMIT 1


7)
select pro_id, pro_ref, pro_name 
from products
where pro_id not in (select ode_pro_id from orders_details where pro_id=ode_pro_id )

 
8) 
select pro_id, pro_ref, pro_color, pro_name, cus_id, cus_lastname, ode_id 
from orders 
JOIN customers 
ON ord_cus_id = cus_id 
JOIN orders_details 
ON ord_id = ode_ord_id 
JOIN products ON ode_pro_id = pro_id WHERE cus_lastname = 'Pikatchien'

9) 
SELECT cat_id, cat_name, pro_name 
FROM categories 
JOIN products 
ON cat_id = pro_cat_id ORDER BY cat_name ASC, pro_name ASC

11) 
SELECT pro_id, pro_name, ((ode_unit_price/100)*ode_discount) AS remise, ode_ord_id AS commande, ode_id as 'ligne commande' from products
JOIN orders_details ON ode_pro_id= pro_id
ORDER BY remise DESC
LIMIT 1

12) 
SELECT COUNT(cou_name) FROM countries JOIN customers ON cou_id = cus_countries_id WHERE cus_countries_id = 'CA'

13)
SELECT ode_id, ode_unit_price, ode_quantity, ode_ord_id, ode_pro_id, ord_order_date FROM gescom_afpa.orders_details
JOIN gescom_afpa.orders ON orders_details.ode_ord_id = orders.ord_id
WHERE year(ord_order_date)=2020;


14)SELECT DISTINCT sup_id, sup_name, sup_city, sup_name 
FROM suppliers 
JOIN products 
ON sup_id = pro_sup_id
JOIN orders_details
ON pro_id = ode_pro_id
WHERE ode_pro_id IS NOT NULL

15)
SELECT SUM(ode_unit_price * ode_quantity *(1 - ode_discount / 100)) as chiffre_affaires
FROM orders_details
JOIN orders
ON ode_ord_id = ord_id
WHERE year(ord_order_date)=2020;

16)
SELECT ord_id, cus_lastname, ord_order_date, ode_quantity, (ode_unit_price * ode_quantity) AS 'Total' FROM gescom_afpa.orders_details
JOIN gescom_afpa.orders ON orders.ord_id = orders_details.ode_ord_id 
JOIN gescom_afpa.customers ON customers.cus_id = orders.ord_cus_id
ORDER BY (ode_unit_price * ode_quantity) DESC

17)
SELECT AVG((ode_unit_price * ode_quantity) * (1 - (ode_discount/100)))FROM gescom_afpa.orders_details

18) UPDATE products SET pro_ref = 'Cambar', pro_price = pro_price*0.9 WHERE pro_name = "barb004"

19) UPDATE products
SET
pro_price = pro_price*(1+(1.1/100))
WHERE pro_cat_name = "parasols"


20)
select pro_id, pro_ref, pro_name 
from products
where pro_id not in (select ode_pro_id from orders_details where pro_id=ode_pro_id ) and pro_cat_id = 9