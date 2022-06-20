FROM php:7.4-fpm

# Set working directory
WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip\
    vim \
    wget \
    nodejs \
    npm 
  
# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- \ 
  --install-dir=/usr/local/bin --filename=composer && chmod +x /usr/local/bin/composer


