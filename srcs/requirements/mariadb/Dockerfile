FROM debian:buster

RUN apt-get update && apt-get install mariadb-server -y

COPY service-start.sh /tmp/

# RUN sh /tmp/service-start.sh

CMD [ "mysqld" ]