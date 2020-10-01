INSERT INTO office VALUES (1,'03 Reinke Trail','Cincinnati','OH');
INSERT INTO office VALUES (2,'5507 Becker Terrace','New York City','NY');
INSERT INTO office VALUES (3,'54 Northland Court','Richmond','VA');
INSERT INTO office VALUES (4,'08 South Crossing','Cincinnati','OH');
INSERT INTO office VALUES (5,'553 Maple Drive','Minneapolis','MN');
INSERT INTO office VALUES (6,'23 North Plaza','Aurora','CO');
INSERT INTO office VALUES (7,'9658 Wayridge Court','Boise','ID');
INSERT INTO office VALUES (8,'9 Grayhawk Trail','New York City','NY');
INSERT INTO office VALUES (9,'16862 Westend Hill','Knoxville','TN');
INSERT INTO office VALUES (10,'4 Bluestem Parkway','Savannah','GA');


INSERT INTO employee VALUES (37270,'Yovonnda','Magrannell','F','Engineering','Executive',63996,NULL,10);
INSERT INTO employee VALUES (37851,'Sayer','Matterson','M','Sales','Area Manager',98926,37270,1);
INSERT INTO employee VALUES (40448,'Mindy','Crissil','F','Sales','Regional Manager',94860,37270,1);
INSERT INTO employee VALUES (56274,'Keriann','Alloisi','F','Sales','General Manager',110150,37270,1);
INSERT INTO employee VALUES (63196,'Alaster','Scutchin','M','Engineering','Scrum Master',32179,37270,2);
INSERT INTO employee VALUES (67009,'North','Clerc','M','Marketing','VP Marketing',114257,37270,2);
INSERT INTO employee VALUES (67370,'Elladine','Rising','F','Engineering','Team Lead',96767,37270,2);
INSERT INTO employee VALUES (68249,'Nisse','Voysey','M','Engineering','Software Engineer',52832,37270,2);
INSERT INTO employee VALUES (72540,'Guthrey','Iacopetti','M','Marketing','AVP Marketing',117690,37270,3);
INSERT INTO employee VALUES (72913,'Kass','Hefferan','F','Finance','Associate',96401,37270,3);
INSERT INTO employee VALUES (75900,'Virge','Goodrum','M','Finance','Account Manager',54578,37270,3);
INSERT INTO employee VALUES (76196,'Mirilla','Janowski','F','Engineering','Senior Software Engineer',119241,37270,3);
INSERT INTO employee VALUES (80529,'Lynde','Aronson','F','Finance','Junior Executive',77182,37270,4);
INSERT INTO employee VALUES (80679,'Mildrid','Sokale','F','Finance','Analyst',67987,37270,4);
INSERT INTO employee VALUES (84791,'Hazel','Tarbert','F','Engineering','Scrum Master',93760,37270,4);
INSERT INTO employee VALUES (95213,'Cole','Kesterton','M','Engineering','Product manager',86119,37270,4);
INSERT INTO employee VALUES (96513,'Theresa','Binney','F','Engineering','VP IT',47354,37270,5);
INSERT INTO employee VALUES (98374,'Estrellita','Daleman','F','Marketing','SVP Marketing',70187,37270,5);
INSERT INTO employee VALUES (115357,'Ivy','Fearey','F','Marketing','Event Manager',92710,37270,5);

CREATE INDEX fk_employees_offices_idx ON employee (office_id);
CREATE INDEX fk_employees_employees_idx ON employee (reports_to);
