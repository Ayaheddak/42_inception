#!/bin/bash 
echo "hahahahahahhaahahahah"
mv /conf /etc/mysql/mariadb.conf.d/50-server.cnf
mysql_install_db --user=mysql --datadir=/var/lib/mysql/
if [ "$(ls -A /var/lib/mysql/${DBNAME})" ]; then 
echo "direc isnt empty"
else 
service mysql start
echo "testing"
mysql -u root -e "CREATE USER '${DBUSER}'@'%' IDENTIFIED BY '${DBPASS}'"
mysql -u root -e "CREATE DATABASE ${DBNAME}; use ${DBNAME}"
mysql -u root -e "GRANT ALL PRIVILEGES ON * TO '${DBUSER}'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DBROOT}';"
fi 
echo "Running mariadb in forground"
mysqld_safe --datadir='/var/lib/mysql/'