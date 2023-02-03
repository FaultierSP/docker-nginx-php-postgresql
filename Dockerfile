FROM php:8.2-fpm

RUN apt update && apt install libpq-dev -y

RUN docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql && docker-php-ext-install pdo_pgsql pgsql