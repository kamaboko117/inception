# inception
https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
http://nginx.org/en/docs/http/configuring_https_servers.html
https://www.youtube.com/watch?v=MP3Wm9dtHSQ
https://www.digitalocean.com/community/tutorials/understanding-and-implementing-fastcgi-proxying-in-nginx
https://www.skyminds.net/php-configurer-un-pool-php-pour-chaque-site/
http://geekyplatypus.com/dockerise-your-php-application-with-nginx-and-php7-fpm/
NGINX:
we run nginx with the "daemon off" option to prevent it from killing itself in its creation process, which would in turn kill the containers. default website is configured so as to pass every .php request to wordpress at port 9000.

wordpress+fpm:
we configure fpm so as to listen to port 9000. we also run fpm with flags to prevent it from killing itself.

https://www.linuxtricks.fr/wiki/print.php?id=559
Mariadb:
