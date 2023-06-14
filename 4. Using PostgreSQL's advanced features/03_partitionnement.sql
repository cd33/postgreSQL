CREATE TABLE public.commande (
	commandeid int GENERATED ALWAYS AS IDENTITY NOT NULL,
	datecommande date NOT NULL DEFAULT (CURRENT_DATE),
	client varchar(50) NULL
) PARTITION BY RANGE (datecommande);

CREATE TABLE public.commande2022
PARTITION OF public.commande
FOR VALUES FROM ('2022-01-01') TO ('2022-12-31');

ALTER TABLE public.commande DETACH PARTITION public.commande2022;

