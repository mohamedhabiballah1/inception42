FROM debian:buster

RUN apt-get update -y

RUN apt-get install php-fpm php-mysql mariadb-client -y

RUN apt-get install curl -y

COPY tools/script.sh /

RUN chmod +x script.sh

CMD [ "./script.sh" ]