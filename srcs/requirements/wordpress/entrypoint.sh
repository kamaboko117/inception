#!/bin/bash

chown -R 755 /var/www/*

if [ ! -f /var/www/html/wp-config.php ]; then
    wget http://wordpress.org/latest.tar.gz -P /var/www/
    tar xfz /var/www/latest.tar.gz -C /var/www/
    rm -rf /var/www/html/*
    mv /var/www/wordpress /var/www/html
    rm -f /var/www/latest.tar.gz
    mv /var/www/wp-config.php /var/www/html/wp-config
fi

exec "$@"