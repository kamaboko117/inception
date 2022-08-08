#!/bin/bash

if [ ! -f /var/lib/mysql/touched ]; then
    service mysql start
    echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mysql -u root
    echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_USER_PSWD';" | mysql -u root
    echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'root12345';" | mysql -u root
    touch /var/lib/mysql/touched
fi

exec "$@"