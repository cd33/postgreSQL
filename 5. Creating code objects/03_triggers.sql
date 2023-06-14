CREATE TABLE contact.audit_prospectus (
	prenom varchar(50),
	nom varchar(50),
	date_suppression timestamp(0)
)

CREATE OR REPLACE FUNCTION contact.audit_prospectus_delete()
  RETURNS TRIGGER 
  LANGUAGE PLPGSQL
  AS
$$
BEGIN
	INSERT INTO contact.audit_prospectus(prenom, nom, date_suppression)
	VALUES(OLD.prenom,OLD.nom, CURRENT_TIMESTAMP);

	RETURN NEW;
END;
$$

CREATE OR REPLACE TRIGGER test1
AFTER DELETE ON contact.prospectus
FOR EACH ROW
EXECUTE FUNCTION contact.audit_prospectus_delete()

SELECT *
FROM contact.prospectus
LIMIT 1;

DELETE FROM contact.prospectus
WHERE email = 'vjjnyp.kpww@rsfxy.vjbuym.com';

SELECT *
FROM contact.audit_prospectus;