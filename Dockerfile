# Base image
FROM php:8.2-cli

# Set working directory inside container
WORKDIR /var/www

# Install system dependencies needed by Laravel
RUN apt-get update && apt-get install -y \
    git unzip libzip-dev zip \
    && docker-php-ext-install pdo pdo_mysql zip

# Install composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Copy Laravel code into container
COPY . /var/www

# Install PHP dependencies
RUN composer install

# Expose port for Laravel dev server
EXPOSE 8000

# Start Laravel server
CMD php artisan serve --host=0.0.0.0 --port=8000
