sudo apt install postgresql-client postgresql-contrib

find /usr/lib/postgresql/ -name pg_ctl

SELECT current_setting('cluster_name'), current_setting('server_version');

show cluster_name;

SELECT name, setting 
FROM pg_settings
WHERE name = 'cluster_name';

SELECT name, setting FROM pg_settings;

find /usr/lib/postgresql/ -name oid2name
sudo -i -u postgres /usr/lib/postgresql/14/bin/oid2name

select oid, datname from pg_database;