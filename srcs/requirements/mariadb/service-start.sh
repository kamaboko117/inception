service mysql start

echo "GRANT ALL ON *.* TO 'kama'@'localhost' IDENTIFIED BY '123'" | mysql -u root
echo "GRANT ALL ON wordpress.* TO 'wordpress_user'@'localhost' IDENTIFIED BY 'password';" | mysql -u root
echo "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mysql -u root

# exec makes it start as PID 1 
exec mysqld