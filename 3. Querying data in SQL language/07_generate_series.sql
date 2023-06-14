SELECT 
	sessionid,
	datedebut,
	duree,
	datedebut + duree - 1 as datefin,
	duree * interval '7 hour',
	generate_series(datedebut, datedebut + duree - 1, interval '1 day')::date as jour
FROM stage.session;

SELECT *
FROM generate_series(1, 10, 2);