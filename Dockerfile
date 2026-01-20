# Use official PHP image with CLI (good for dev)
FROM php:8.2-cli

# Set working directory inside container
WORKDIR /var/www

# Install system dependencies required by Laravel
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    zip \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    default-mysql-client \
    && docker-php-ext-install pdo pdo_mysql mbstring zip exif pcntl

# Install Composer (official way)
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Copy project files (will be overridden by volume, but needed for build)
COPY . .

# Expose Laravel dev server port
EXPOSE 8000

# Start command:
# 1. If vendor/ not found → run composer install
# 2. Run migrations only if needed (safe to comment if you want manual)
# 3. Start Laravel server
CMD sh -c "\
    if [ ! -d vendor ]; then composer install --no-interaction; fi && \
    php artisan serve --host=0.0.0.0 --port=8000 \
"
