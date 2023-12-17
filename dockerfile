FROM ubuntu:latest

LABEL "project"="audi"
LABEL "author"="Faraz"

RUN apt update
RUN apt install apache2 -y

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]

EXPOSE 80

WORKDIR /var/www/html
VOLUME /var/log/apache2

ADD faraz_audi.tar.gz /var/www/html
