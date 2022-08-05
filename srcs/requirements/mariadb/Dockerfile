FROM debian:buster

RUN apt-get update && apt-get install mariadb-server -y

COPY service-start.sh /tmp/

# RUN sh /tmp/service-start.sh

EXPOSE 3306

RUN mkdir /etc/mysql/mariadb.conf.d/conf

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/conf/

CMD [ "mysqld" ]