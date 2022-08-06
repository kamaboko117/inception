service mysql start

echo "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mysql -u root
echo "GRANT ALL ON *.* TO 'kama'@'asaboure.42.fr' IDENTIFIED BY '123';" | mysql -u root
echo "GRANT ALL ON wordpress.* TO 'wordpress_user'@'asaboure.42.fr' IDENTIFIED BY 'password';" | mysql -u root
