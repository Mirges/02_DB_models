\! cls

DROP TABLE IF EXISTS productlist;


CREATE TABLE IF NOT EXISTS productlist
(
  id       INT          NOT NULL AUTO_INCREMENT COMMENT 'PK',
  product  VARCHAR(45)  NOT NULL,
  category VARCHAR(45)  NOT NULL,
  price    DECIMAL(6,2) NOT NULL,
  in_stock INT          NOT NULL,
  PRIMARY KEY (id)
);


DESCRIBE productlist;
INSERT INTO productlist(product, category, price, in_stock)
    VALUES  ("DELL XP1", "Computer", 520.00, 200),
            ("AKOYA ZD217", "Computer", 430.00, 10),
            ("WD 1020", "External Memory", 115.00, 40),
            ("CISCO 2050T", "Network Components", 245.00, 10);

SELECT
    product AS "Ware",
    price AS "Preis"
FROM productlist
WHERE category = "Computer"
ORDER BY price DESC;
