SELECT * 
FROM contact.contact c
JOIN inscription.inscription i USING(contactid)

SELECT * 
FROM contact.contact c
INNER JOIN LATERAL (
	SELECT * FROM inscription.inscription i 
	WHERE i.contactid = c.contactid) AS ins ON true