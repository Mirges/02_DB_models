\! cls

DROP TABLE IF EXISTS design.addressbook;

CREATE TABLE IF NOT EXISTS design.addressbook
(
  id      INT         NOT NULL AUTO_INCREMENT,
  nachname    VARCHAR(45) NOT NULL,
  vorname VARCHAR(45) NOT NULL,
  plz     INT         NOT NULL,
  ort     VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
);

DESCRIBE design.addressbook;

INSERT INTO design.addressbook (nachname, vorname, plz, ort)
VALUES  ('Mueller', 'Peter', 12991, 'Berlin'),
        ('Ay', 'Yildiz', 63325, 'Langen'),
        ('Sommer', 'Petra', 70137, 'Stuttgart');

SELECT 
    nachname AS 'Name',
    vorname AS 'Vorname',
    plz AS 'Postleitzahl',
    ort AS 'Ort'
FROM design.addressbook;
-- WHERE vorname LIKE "Pet%";