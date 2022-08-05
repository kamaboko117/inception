FROM debian:buster

RUN apt-get update && apt-get install wget -y \
    #somehow needed for apt-key
    gnupg

RUN wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add -

RUN apt-get install -y \
    php7.3 \
    php-mysqli \ 
    php-fpm

#get wordpress
RUN wget http://wordpress.org/latest.tar.gz -P /var/www/
RUN tar xfz /var/www/latest.tar.gz -C /var/www/
RUN mv /var/www/wordpress /var/www/html
RUN rm -f /var/www/latest.tar.gz

#needed for php-fpm to bind listening socket
RUN mkdir run/php

COPY wp-config.php /var/www/html/wp-config.php

EXPOSE 9000

#-F: force to stay on foreground. -R: run as root
ENTRYPOINT [ "php-fpm7.3", "-F", "-R"] 