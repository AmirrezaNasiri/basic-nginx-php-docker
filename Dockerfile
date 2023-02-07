FROM php:8.1-fpm

RUN apt-get update \
    # Install MySQL drivers
    && apt-get install -y --no-install-recommends mariadb-client git \
    && docker-php-ext-install pdo pdo_mysql \
    #
    # Redis
    #&& pecl install redis-5.1.1 \
    #&& docker-php-ext-enable redis \
    #
    # OpCache
    #&& docker-php-ext-install opcache \
    #
    # BCMath
    && docker-php-ext-install bcmath \
    #
    # Cleanup
    && rm -rf /var/lib/apt/lists/*

# Install composer from the official image
COPY --from=composer /usr/bin/composer /usr/bin/composer