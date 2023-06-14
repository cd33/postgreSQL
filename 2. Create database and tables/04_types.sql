CREATE TYPE age AS ENUM ('jeune', 'adulte', 'senior');

CREATE TABLE contact.personne (
	personneid int GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
	nom varchar(50) NOT NULL UNIQUE,
	datedenaissance date,
	salaire decimal(10,2),
	active boolean default 'yes',
	age_courant age,
	adresse_ip inet,
	situation point
)