CREATE DATABASE IF NOT EXISTS Sales;

USE Sales;

CREATE TABLE Sales 
(
	purchase_number INT NOT NULL AUTO_INCREMENT,
	date_of_purchase DATE NOT NULL,
	customer_id INT,
	item_code VARCHAR(10) NOT NULL,
PRIMARY KEY(purchase_number)
);

CREATE TABLE Customers
(
	customer_id INT,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	email_address VARCHAR(255) NOT NULL,
	number_of_complaints INT NOT NULL DEFAULT(0),
PRIMARY KEY(customer_id) 
);

CREATE TABLE Items 
(
	item_code VARCHAR(255),
    item VARCHAR(255),
    unit_price NUMERIC(10,2),
    company_id VARCHAR(255),
PRIMARY KEY(item_code)
);

CREATE TABLE Companies
(
	company_id VARCHAR(255),
    company_name VARCHAR(255),
    headquarters_phone_number INT(12),
PRIMARY KEY(company_id)
);

ALTER TABLE Sales
ADD FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE,
ADD FOREIGN KEY (item_code) REFERENCES Items(item_code) ON DELETE CASCADE;

ALTER TABLE Items
ADD FOREIGN KEY (company_id) REFERENCES Companies(company_id) ON DELETE CASCADE;

DROP TABLE Sales, Customers, Items, Companies;

ALTER TABLE departments_dup

DROP COLUMN dept_manager;

 

ALTER TABLE departments_dup

CHANGE COLUMN dept_no dept_no CHAR(4) NULL;

 
ALTER TABLE departments_dup

CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;



DROP TABLE IF EXISTS dept_manager_dup;

CREATE TABLE dept_manager_dup (

  emp_no int(11) NOT NULL,

  dept_no char(4) NULL,

  from_date date NOT NULL,

  to_date date NULL

  );

 

INSERT INTO dept_manager_dup

select * from dept_manager;

 

INSERT INTO dept_manager_dup (emp_no, from_date)

VALUES                (999904, '2017-01-01'),

                                (999905, '2017-01-01'),

                               (999906, '2017-01-01'),

                               (999907, '2017-01-01');

 

DELETE FROM dept_manager_dup

WHERE

    dept_no = 'd001';

INSERT INTO departments_dup (dept_name)

VALUES                ('Public Relations');

 

DELETE FROM departments_dup

WHERE

    dept_no = 'd002'; 


