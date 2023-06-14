SHOW search_path;

\c pachadataformation

CREATE SCHEMA pacha;
CREATE TABLE pacha.t1 (id int);
GRANT USAGE ON SCHEMA pacha TO pacha;
GRANT SELECT ON ALL TABLES IN SCHEMA pacha TO pacha;

SET search_path TO public;
