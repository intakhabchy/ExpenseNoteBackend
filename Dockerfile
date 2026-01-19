# Base PHP image
FROM php:8.2-cli

# Set working directory
WORKDIR /var/www

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git unzip libzip-dev zip \
    && docker-php-ext-install pdo pdo_mysql zip

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Copy Laravel code
COPY . /var/www

# Install Laravel dependencies
RUN composer install

# Expose port for dev server
EXPOSE 8000

# Start Laravel dev server
CMD php artisan serve --host=0.0.0.0 --port=8000