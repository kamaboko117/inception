FROM debian:buster

RUN apt-get update && apt-get install -y \
    nginx \
    openssl

RUN mkdir /etc/nginx/ssl

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
	-out /etc/nginx/ssl/localhost.pem \
	-keyout /etc/nginx/ssl/localhost.key \
	-subj "/C=FR/ST=Paris/L=Paris/O=42 School/OU=kama/CN=localhost"

COPY nginx.conf etc/nginx/
COPY default etc/nginx/sites-available/
ENTRYPOINT [ "nginx", "-g" , "daemon off;" ]
EXPOSE 443
