FROM debian:buster

RUN apt-get update && apt-get install wget -y \
    #somehow needed for apt-key
    gnupg

RUN wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add -
RUN echo "deb https://packages.sury.org/php/ buster main" | tee /etc/apt/sources.list.d/php.list

# php-mysql required by wordpress
RUN apt-get update && apt-get install -y \
    php \
    php-fpm \
    php-mysql

#needed for php-fpm to bind listening socket
RUN mkdir run/php

COPY fpm.conf etc/php/8.1/fpm/pool.d/www.conf
COPY entrypoint.sh /
COPY wp-config.php /var/www/

RUN chmod +x /entrypoint.sh

EXPOSE 9000

ENTRYPOINT [ "/entrypoint.sh" ]
#-F: force to stay on foreground. -R: run as root
CMD [ "php-fpm8.1", "-F", "-R"] 