FROM php:7.4-apache

WORKDIR /var/www/laravel_docker

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN apt update \
    && apt install -y \
    apt-utils \
    g++ \    
    libicu-dev \
    libpq-dev \
    llibfreetype6-dev libicu-dev libjpeg62-turbo-dev libpng-dev libpq-dev \
    libsasl2-dev libssl-dev libwebp-dev libxpm-dev libzip-dev \
    unzip \
    zip \
    zlib1g-dev \
&& docker-php-ext-install \
    intl \
    opcache \
    pdo \
    pdo_pgsql \
    pgsql \