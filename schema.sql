DROP DATABASE IF EXISTS satchsupply_2;
CREATE DATABASE satchsupply_2;
USE satchsupply_2;


CREATE TABLE dept(
    dept_id TINYINT UNSIGNED AUTO_INCREMENT NOT NULL,
    dept VARCHAR (30),
    CONSTRAINT pk_dept PRIMARY KEY (dept_id)
);


CREATE TABLE employee(
    employee_id SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    title VARCHAR(40),
    emp_num VARCHAR(25) NOT NULL,
    dept_id TINYINT UNSIGNED NOT NULL,
    emp_tier TINYINT NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    date_hired DATE,
    emp_status BOOLEAN NOT NULL DEFAULT TRUE,
    CONSTRAINT pk_employee PRIMARY KEY (employee_id),
    CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES dept (dept_id)
);

CREATE TABLE transaction(
    transaction_id SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL,
    employee_id SMALLINT UNSIGNED NOT NULL,
    products_sold SMALLINT UNSIGNED NOT NULL,
    amount DECIMAL(5,2) NOT NULL,
    transaction_date DATETIME,
    CONSTRAINT pk_transaction PRIMARY KEY (transaction_id),
    CONSTRAINT fk_employee FOREIGN KEY (employee_id) REFERENCES employee (employee_id)
);

CREATE TABLE contract(
    contract_id SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL,
    employee_id SMALLINT UNSIGNED NOT NULL,
    client VARCHAR(40),
    amount VARCHAR(20),
    contract_date DATE,
    completion_date DATE,
    CONSTRAINT pk_contract PRIMARY KEY (contract_id),
    CONSTRAINT fk_employee_ct FOREIGN KEY (employee_id) REFERENCES employee (employee_id)
);

