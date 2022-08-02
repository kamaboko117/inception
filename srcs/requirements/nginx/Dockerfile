FROM debian:buster

RUN apt-get update && apt-get install -y \
    nginx \
    open-ssl
    
COPY nginx.conf etc/nginx/
COPY default etc/nginx/sites-available/
ENTRYPOINT [ "nginx", "-g" , "daemon off;" ]
EXPOSE 443
