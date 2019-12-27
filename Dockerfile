FROM php:7.2-apache

RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli pdo_mysql
RUN apt-get update
RUN apt-get install nano
RUN mkdir /app \
 && mkdir /app/moe-php-mysql-demo \
 && mkdir /app/moe-php-mysql-demo/www

COPY app/ /app/moe-php-mysql-demo/www/

RUN cp -r /app/moe-php-mysql-demo/www/* /var/www/html/.
