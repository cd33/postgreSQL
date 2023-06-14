SELECT 
	EXTRACT(YEAR FROM datefacture) as annee,
	EXTRACT(MONTH FROM datefacture) as mois,
	SUM(montantht) as ca,
	SUM(SUM(montantht)) OVER f1 as ca_annuel,
	SUM(montantht) / SUM(SUM(montantht)) OVER f1 * 100
FROM inscription.facture
WHERE datefacture IS NOT NULL
GROUP BY EXTRACT(YEAR FROM datefacture), EXTRACT(MONTH FROM datefacture)
WINDOW f1 AS (PARTITION BY EXTRACT(YEAR FROM datefacture))
ORDER BY annee, mois;