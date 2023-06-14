CREATE OR REPLACE PROCEDURE contact.ajoute_contact (
	nom varchar(50),
	adressepostaleid int
)
LANGUAGE SQL
AS $$
	INSERT INTO contact.contact
	(nom, adressepostaleid)
	VALUES (nom, adressepostaleid);
$$

CALL contact.ajoute_contact ('simon', 1)