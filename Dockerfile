# Dockerfile

FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    libpq-dev \
    && docker-php-ext-install zip pdo pdo_pgsql

WORKDIR /app

CMD ["php-fpm"]
