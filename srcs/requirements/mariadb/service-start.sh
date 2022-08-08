service mysql start

echo "CREATE DATABASE IF NOT EXISTS wordpress;" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress_user'@'%' IDENTIFIED BY 'password';" | mysql -u root
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'root12345';" | mysql -u root
