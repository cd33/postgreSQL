CREATE OR REPLACE FUNCTION contact.initiales (
	prenom varchar(50),
	nom varchar(50)
) RETURNS varchar(4)
LANGUAGE SQL
IMMUTABLE
RETURN SUBSTRING(prenom, 1, 1) || '.' || SUBSTRING(nom, 1, 1) || '.';

SELECT contact.initiales(prenom, nom)
FROM contact.contact;