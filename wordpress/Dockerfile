FROM debian:buster

RUN apt-get update
RUN apt-get upgrade

RUN apt-get install wget -y
#somehow needed for apt-key
RUN apt-get install gnupg -y

RUN wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add -
RUN apt-get install php php-fpm -y

#get wordpress
RUN wget http://wordpress.org/latest.tar.gz -P /var/www/html/
RUN tar xfz /var/www/html/latest.tar.gz
# RUN mv wordpress/* /var/www/html/
# RUN rm -f /var/www/html/latest.tar.gz