FROM php:fpm

RUN apt-get update && apt-get upgrade -y
RUN apt-get install libpq-dev
    
RUN docker-php-ext-install pdo_pgsql pgsql