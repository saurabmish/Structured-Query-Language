INSERT INTO customer VALUES (DEFAULT,'Babara','MacCaffrey','1986-03-28','781-932-9754','0 Sage Terrace','Waltham','MA',2273);
INSERT INTO customer VALUES (DEFAULT,'Ines','Brushfield','1986-04-13','804-427-9456','14187 Commercial Trail','Hampton','VA',947);
INSERT INTO customer VALUES (DEFAULT,'Freddi','Boagey','1985-02-07','719-724-7869','251 Springs Junction','Colorado Springs','CO',2967);
INSERT INTO customer VALUES (DEFAULT,'Ambur','Roseburgh','1974-04-14','407-231-8017','30 Arapahoe Terrace','Orlando','FL',457);
INSERT INTO customer VALUES (DEFAULT,'Clemmie','Betchley','1973-11-07',NULL,'5 Spohn Circle','Arlington','TX',3675);
INSERT INTO customer VALUES (DEFAULT,'Elka','Twiddell','1991-09-04','312-480-8498','7 Manley Drive','Chicago','IL',3073);
INSERT INTO customer VALUES (DEFAULT,'Ilene','Dowson','1964-08-30','615-641-4759','50 Lillian Crossing','Nashville','TN',1672);
INSERT INTO customer VALUES (DEFAULT,'Thacher','Naseby','1993-07-17','941-527-3977','538 Mosinee Center','Sarasota','FL',205);
INSERT INTO customer VALUES (DEFAULT,'Romola','Rumgay','1992-05-23','559-181-3744','3520 Ohio Trail','Visalia','CA',1486);
INSERT INTO customer VALUES (DEFAULT,'Levy','Mynett','1969-10-13','404-246-3370','68 Lawn Avenue','Atlanta','GA',796);


INSERT INTO "order" VALUES (DEFAULT,6,'2019-01-30',1,NULL,NULL,NULL);
INSERT INTO "order" VALUES (DEFAULT,7,'2018-08-02',2,NULL,'2018-08-03',4);
INSERT INTO "order" VALUES (DEFAULT,8,'2017-12-01',1,NULL,NULL,NULL);
INSERT INTO "order" VALUES (DEFAULT,2,'2017-01-22',1,NULL,NULL,NULL);
INSERT INTO "order" VALUES (DEFAULT,5,'2017-08-25',2,'','2017-08-26',3);
INSERT INTO "order" VALUES (DEFAULT,10,'2018-11-18',1,'Aliquam erat volutpat. In congue.',NULL,NULL);
INSERT INTO "order" VALUES (DEFAULT,2,'2018-09-22',2,NULL,'2018-09-23',4);
INSERT INTO "order" VALUES (DEFAULT,5,'2018-06-08',1,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.',NULL,NULL);
INSERT INTO "order" VALUES (DEFAULT,10,'2017-07-05',2,'Nulla mollis molestie lorem. Quisque ut erat.','2017-07-06',1);
INSERT INTO "order" VALUES (DEFAULT,6,'2018-04-22',2,NULL,'2018-04-23',2);


INSERT INTO order_items VALUES (1,4,4,3.74);
INSERT INTO order_items VALUES (2,1,2,9.10);
INSERT INTO order_items VALUES (2,4,4,1.66);
INSERT INTO order_items VALUES (2,6,2,2.94);
INSERT INTO order_items VALUES (3,3,10,9.12);
INSERT INTO order_items VALUES (4,3,7,6.99);
INSERT INTO order_items VALUES (4,10,7,6.40);
INSERT INTO order_items VALUES (5,2,3,9.89);
INSERT INTO order_items VALUES (6,1,4,8.65);
INSERT INTO order_items VALUES (6,2,4,3.28);
INSERT INTO order_items VALUES (6,3,4,7.46);
INSERT INTO order_items VALUES (6,5,1,3.45);
INSERT INTO order_items VALUES (7,3,7,9.17);
INSERT INTO order_items VALUES (8,5,2,6.94);
INSERT INTO order_items VALUES (8,8,2,8.59);
INSERT INTO order_items VALUES (9,6,5,7.28);
INSERT INTO order_items VALUES (10,1,10,6.01);
INSERT INTO order_items VALUES (10,9,9,4.28);
-- NOTE: Create index after inserting data
CREATE INDEX fk_order_items_products_idx ON order_items (product_id);



INSERT INTO order_item_note (id, order_id, product_id, note) VALUES ('1', '1', '2', 'first note');
INSERT INTO order_item_note (id, order_id, product_id, note) VALUES ('2', '1', '2', 'second note');


INSERT INTO order_status VALUES (DEFAULT,'Processed');
INSERT INTO order_status VALUES (DEFAULT,'Shipped');
INSERT INTO order_status VALUES (DEFAULT,'Delivered');


INSERT INTO product VALUES (DEFAULT,'Foam Dinner Plate',70,1.21);
INSERT INTO product VALUES (DEFAULT,'Pork - Bacon,back Peameal',49,4.65);
INSERT INTO product VALUES (DEFAULT,'Lettuce - Romaine, Heart',38,3.35);
INSERT INTO product VALUES (DEFAULT,'Brocolinni - Gaylan, Chinese',90,4.53);
INSERT INTO product VALUES (DEFAULT,'Sauce - Ranch Dressing',94,1.63);
INSERT INTO product VALUES (DEFAULT,'Petit Baguette',14,2.39);
INSERT INTO product VALUES (DEFAULT,'Sweet Pea Sprouts',98,3.29);
INSERT INTO product VALUES (DEFAULT,'Island Oasis - Raspberry',26,0.74);
INSERT INTO product VALUES (DEFAULT,'Longan',67,2.26);
INSERT INTO product VALUES (DEFAULT,'Broom - Push',6,1.09);


INSERT INTO shipper VALUES (DEFAULT,'Hettinger LLC');
INSERT INTO shipper VALUES (DEFAULT,'Schinner-Predovic');
INSERT INTO shipper VALUES (DEFAULT,'Satterfield LLC');
INSERT INTO shipper VALUES (DEFAULT,'Mraz, Renner and Nolan');
INSERT INTO shipper VALUES (DEFAULT,'Waters, Mayert and Prohaska');
