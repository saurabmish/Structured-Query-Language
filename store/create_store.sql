CREATE TABLE customer (
  id SERIAL PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  birth_date date DEFAULT NULL,
  phone varchar(50) DEFAULT NULL,
  address varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  state char(2) NOT NULL,
  points int NOT NULL DEFAULT '0'
);


CREATE TABLE "order" (
  id SERIAL PRIMARY KEY,
  customer_id integer NOT NULL,
  order_date date NOT NULL,
  order_status integer NOT NULL DEFAULT '1',
  comments varchar(2000) DEFAULT NULL,
  shipped_date date DEFAULT NULL,
  shipper_id integer DEFAULT NULL,
  fk_client_id integer,
  fk_shipper_id integer,
  fk_order_status_id integer,
  CONSTRAINT fk_orders_customers FOREIGN KEY (fk_client_id) REFERENCES customer (id) ON UPDATE CASCADE,
  CONSTRAINT fk_orders_order_statuses FOREIGN KEY (fk_shipper_id) REFERENCES order_status (id) ON UPDATE CASCADE,
  CONSTRAINT fk_orders_shippers FOREIGN KEY (fk_order_status_id) REFERENCES shipper (id) ON UPDATE CASCADE
);


CREATE SEQUENCE order_items_seq;
CREATE TABLE order_items (
  order_id int NOT NULL DEFAULT NEXTVAL ('order_items_seq'),
  product_id int NOT NULL,
  quantity int NOT NULL,
  unit_price decimal(4,2) NOT NULL,
  PRIMARY KEY (order_id,product_id),
  CONSTRAINT fk_order_items_orders FOREIGN KEY (order_id) REFERENCES "order" (id) ON UPDATE CASCADE,
  CONSTRAINT fk_order_items_products FOREIGN KEY (product_id) REFERENCES product (id) ON UPDATE CASCADE
);
-- NOTE:
/*
It is much more efficient to load data first and only then create index.
Reason for this is that index updates during insert are expensive.
If you create index after all data is there, it is much faster.

It goes even further - if you need to import large amount of data into
existing indexed table, it is often more efficient to drop existing
index first, import the data, and then re-create index again.

One downside of creating index after importing is that table must be locked, and that may take long time (it will not be locked in opposite scenario). But, in PostgreSQL 8.2 and later, you can use CREATE INDEX CONCURRENTLY, which does not lock table during indexing (with some caveats).
*/


CREATE TABLE order_item_note (
  id serial primary key,
  order_id integer not null,
  product_id integer not null,
  note varchar(250) not null
);


CREATE TABLE order_status (
  id SERIAL PRIMARY KEY,
  order_name varchar(50) NOT NULL
);


CREATE TABLE product (
  id SERIAL PRIMARY KEY,
  name varchar(50) NOT NULL,
  stock_quantity int NOT NULL,
  unit_price decimal(4,2) NOT NULL
);


CREATE TABLE shipper (
  id SERIAL PRIMARY KEY,
  name varchar(50) NOT NULL
);
