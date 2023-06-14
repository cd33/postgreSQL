-- première connexion
psql -- client interactif
sudo psql
pgrep -u postgres -fa
sudo -i -u postgres psql
-- # = root
\? -- aide
toutes les commandes commencent avec un backslash
q -- pour quitter l'aide
\q -- quitter psql
\ -- métacommandes
terminer les commandes sql par un ;
beaucoup de métacommandes acceptent un pattern

CREATE DATABASE test;
\l ou \list
\c test (connect) 
\dt
\c postgres
drop database test;
\l