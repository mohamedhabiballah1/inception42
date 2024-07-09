FROM debian:buster

RUN apt -y update && apt install -y nginx && apt install openssl -y

RUN chmod 755 /var/www/html

COPY tools/nginx.sh /

RUN chmod +x nginx.sh

EXPOSE 443

CMD [ "/nginx.sh" ]