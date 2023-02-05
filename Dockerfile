FROM php:fpm

RUN apt-get update && apt-get upgrade -y
RUN apt-get install libpq-dev

# Install database PDO driver
RUN docker-php-ext-install pdo_pgsql pgsql

# Install Composer
#RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer