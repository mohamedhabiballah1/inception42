#!/bin/bash

service mysql start

sleep 5

sed -i 's/bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
sed -i 's/^#port\s*=\s*3306/port = 3306/' /etc/mysql/mariadb.conf.d/50-server.cnf

mysql -e "CREATE DATABASE IF NOT EXISTS $db_name;"
mysql -e "CREATE USER IF NOT EXISTS '$db_user'@'%' IDENTIFIED BY '$db_pwd';"
mysql -e "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'%' IDENTIFIED BY '$db_pwd';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '';"
mysql -e "FLUSH PRIVILEGES;"
mysqladmin -u root -p1234 shutdown
exec mysqld_safe
