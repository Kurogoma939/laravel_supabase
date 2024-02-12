# Dockerfile

FROM php:8.2-fpm

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer
ENV PATH $PATH:/composer/vendor/bin

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer

RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    libpq-dev \
    && docker-php-ext-install zip pdo pdo_pgsql

WORKDIR /app

CMD ["php-fpm"]


