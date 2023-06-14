CREATE TABLE produit (
	produit_id int GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
	nom varchar(50) CONSTRAINT uq_produit_nom UNIQUE,
	prix numeric(7, 2) CHECK (prix > 0),
	prix_solde numeric(7, 2),
	rayon_id int REFERENCES rayon,
	CHECK (prix_solde < prix)
)