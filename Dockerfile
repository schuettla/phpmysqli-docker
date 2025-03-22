FROM php:8.2-apache

# Install necessary dependencies for the mysqli module (MySQL client libraries)
RUN apt-get update && apt-get install -y libmariadb-dev --no-install-recommends

# Enable the mysqli PHP module
RUN docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli