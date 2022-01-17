
INSERT INTO `subcategory` (`Id_subcategory`, `sub_cat_name`, `cat_parent`) VALUES
(1, 'categorie1', NULL),
(2, 'categorie2', NULL),
(3, 'categorie3', NULL),
(4, 'sous_categorie1', 1),
(5, 'sous_categorie2', 2),
(6, 'sous_categorie3', 1),
(7, 'sous_categorie4', 2);


INSERT INTO `supplier` (`supp_id`, `sup_name`, `sup_sales_name`, `sup_adress`, `sup_zipcode`, `sup_city`, `sup_country`, `sup_phone`) VALUES (NULL, 'Jolierose', 'Maxime', '26 avenue de Gaulle', '80000', 'Amiens', 'France', '0651252525'), 
(NULL, 'Popolenne', 'Jean Louis', '29 avenue de Gaulle', '80000', 'Amiens', 'France', '0405020102'),(NULL, 'FleurIdile', 'Lola', '56 avenue de Gaulle', '80000', 'Amiens', 'France', '0651292929');

INSERT INTO `employe` (`Id_emp`, `emp_name`, `emp_surname`, `emp_service`, `emp_seniority`, `emp_pay`, `emp_job`, `emp_gender`, `emp_store`, `emp_children`, `emp_sup_id`) VALUES
(1, 'Renault', 'Lea', 'Informatique', '2021-09-01', 20000, 'Developpeuse', 'F', NULL, 1, NULL),
(2, 'Spodhad', 'Matthieu', 'Commercial', '2021-05-21', 25000, 'Commercial', 'M', NULL, 0, NULL),
(5, 'Ghahe', 'Julie', 'Administratif', '2021-09-12', 45000, 'Secretaire', 'F', NULL, 0, NULL),
(6, 'Aoe', 'Nathan', 'RH', '2021-09-05', 50000, 'Manager Ressources Humaines', 'M', NULL, 0, NULL);

INSERT INTO `customers` (`Id_customers`, `cus_name`, `cus_surname`, `cus_passeword`, `cus_address`, `cus_city`, `cus_phone_number`, `cus_zipcode`, `cus_country`, `cus_date`) VALUES (NULL, 'Jhehd', 'David', '14652', '5 rue Lamarck', 'Amiens', '0522125123', '80000', 'France', '2021-09-22'), 
(NULL, 'Renault', 'Gaelle', '45125', '2 avenue du Havre', 'Le Havre', '25145112', '78450', 'Gonfreville', '2021-09-10'),(NULL, 'Lomi', 'Karine', '45145', '2 avenue de la paix', 'Paris', '065284215', '78000', 'France', '2021-09-15');



INSERT INTO `orders` (`Id_orders`, `ord_num`, `ord_payment`, `ord_delivery`, `ord_price`, `Id_customers`) VALUES (NULL, '56214', '2021-09-03 09:37:14.000000', '2021-09-10', '250', '3'), (NULL, '48541', '2021-09-03 09:37:14.000000', '2021-09-25', '450', '2'),
 (NULL, '4871', '2021-09-03 09:37:14.000000', '2021-09-14', '47', '2');