SELECT regexp_replace(
		telephone,
		'(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})',
		'\1 \2 \3 \4 \5'
	)
FROM contact.contact
WHERE telephone ~ '^0[12]\d{8}$'

SELECT nom
FROM contact.contact
WHERE nom ~* '^garcia$'