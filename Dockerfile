FROM ubuntu:latest

RUN apt-get update -yqq
RUN DEBIAN_FRONTEND="noninteractive" apt-get install apache2 libapache2-mod-auth-openidc -yqq
RUN a2enmod auth_openidc

ADD 000-default.conf /etc/apache2/sites-available/000-default.conf

RUN mkdir -p /var/www/html/example

RUN echo "Hello World!!!" > /var/www/html/example/index.html
