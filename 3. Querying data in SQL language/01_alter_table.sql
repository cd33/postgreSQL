ALTER TABLE contact.contact 
ADD COLUMN IF NOT EXISTS datedenaissance date NULL,
ADD COLUMN ville varchar(50) NULL;

ALTER TABLE contact.contact 
DROP COLUMN IF EXISTS datedenaissance;

ALTER TABLE contact.contact 
ALTER COLUMN datedenaissance SET DEFAULT '2000-01-01'

ALTER TABLE contact.contact 
RENAME COLUMN datedenaissance TO ddn;

ALTER TABLE contact.contact 
ALTER COLUMN nom TYPE varchar(100);

ALTER TABLE contact.contact 
SET SCHEMA public;
