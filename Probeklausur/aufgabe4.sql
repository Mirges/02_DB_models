\! cls

DROP TABLE IF EXISTS design.customers;
DROP TABLE IF EXISTS design.orders;

CREATE TABLE IF NOT EXISTS design.customers
(
  id            INT         NOT NULL AUTO_INCREMENT COMMENT 'PK',
  cst_name      VARCHAR(45) NOT NULL,
  cst_firstname VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
);


DESCRIBE design.customers;

CREATE TABLE IF NOT EXISTS design.orders
(
  id           INT          NOT NULL AUTO_INCREMENT COMMENT 'PK',
  amount       DECIMAL(6,2) NOT NULL,
  customers_id INT          NOT NULL COMMENT 'FK',
  PRIMARY KEY (id)
);

DESCRIBE design.orders;