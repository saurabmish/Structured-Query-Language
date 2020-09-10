CREATE TABLE payment_method (
  id BIGSERIAL PRIMARY KEY,
  mode varchar(50) NOT NULL
);

CREATE TABLE client (
  id BIGSERIAL PRIMARY KEY,
  name varchar(50) NOT NULL,
  address varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  state char(2) NOT NULL,
  phone varchar(50)
);

CREATE TABLE invoice (
  id SERIAL PRIMARY KEY,
  number varchar(50) NOT NULL,
  client_id int NOT NULL,
  invoice_total decimal(9,2) NOT NULL,
  payment_total decimal(9,2) NOT NULL DEFAULT '0.00',
  purchase_date date NOT NULL,
  due_date date NOT NULL,
  payment_date date DEFAULT NULL,
  fk_client_id integer,
  CONSTRAINT fk_invoice_client
    FOREIGN KEY (fk_client_id)
    REFERENCES client (id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE payment (
  payment_id SERIAL PRIMARY KEY,
  client_id int NOT NULL,
  invoice_id int NOT NULL,
  payment_date date NOT NULL,
  amount decimal(9,2) NOT NULL,
  payment_method int NOT NULL,
  fk_client_id integer,
  fk_invoice_id integer,
  fk_payment_method integer,
  CONSTRAINT fk_payments_client FOREIGN KEY (fk_client_id) REFERENCES client (id) ON UPDATE CASCADE,
  CONSTRAINT fk_payments_invoice FOREIGN KEY (fk_invoice_id) REFERENCES invoice (id) ON UPDATE CASCADE,
  CONSTRAINT fk_payments_payment_method FOREIGN KEY (fk_payment_method) REFERENCES payment_method (id)
);
