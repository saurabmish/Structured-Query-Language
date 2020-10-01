CREATE TABLE office (
  id serial primary key,
  address varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  state varchar(50) NOT NULL
);


CREATE TABLE employee (
  id serial primary key,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  gender char(1) NOT NULL,
  department varchar(50) NOT NULL,
  job_title varchar(50) NOT NULL,
  salary int NOT NULL,
  reports_to int DEFAULT NULL,
  office_id int NOT NULL,
  CONSTRAINT fk_employees_managers FOREIGN KEY (reports_to) REFERENCES employee (id),
  CONSTRAINT fk_employees_offices FOREIGN KEY (office_id) REFERENCES office (id) ON UPDATE CASCADE
);
