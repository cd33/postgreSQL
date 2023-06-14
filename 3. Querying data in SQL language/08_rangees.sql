SELECT 
	sessionid,
	datedebut,
	duree,
	datedebut + duree - 1 as datefin,
	daterange(datedebut, datedebut + duree - 1)
	&& daterange('2011-09-20', '2011-09-27', '[]')
FROM stage.session
LIMIT 10;

SELECT '[2011-09-20,2011-09-27]'::daterange * '[2011-09-21,2011-09-22]'::daterange;