SELECT datedebut::timestamptz,
	datedebut + '1 hour'::interval,
	datedebut + interval '3 day'
FROM stage.session;