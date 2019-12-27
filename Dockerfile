FROM php:7.2-apache

RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli pdo_mysql
RUN apt-get update
RUN apt-get install nano
