FROM debian:buster

RUN apt-get update && apt-get install wget -y \
    #somehow needed for apt-key
    gnupg

RUN wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add -
RUN apt-get install php php-fpm -y

#get wordpress
RUN wget http://wordpress.org/latest.tar.gz -P /var/www/
RUN tar xfz /var/www/latest.tar.gz -C /var/www/
RUN mv /var/www/wordpress /var/www/html
RUN rm -f /var/www/latest.tar.gz