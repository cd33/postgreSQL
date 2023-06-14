CREATE TABLE contact.personne (
	personneid int GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
	nom varchar(50) NOT NULL UNIQUE,
	datedenaissance date,
	salaire decimal(10,2)
)