FROM debian:buster

RUN apt-get update && apt-get install -y \
    nginx \
    openssl

RUN mkdir /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=FR/ST=Paris/L=Paris/O=wordpress/CN=asaboure.42.fr";

COPY nginx.conf etc/nginx/
COPY default etc/nginx/sites-available/

EXPOSE 443

ENTRYPOINT [ "nginx", "-g" , "daemon off;" ]
