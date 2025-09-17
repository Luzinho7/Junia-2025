# Utilise l'image officielle PHP-FPM
FROM php:7.4-fpm

# Installe les extensions PHP nécessaires
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Définit le répertoire de travail
WORKDIR /var/www/html

# Expose le port par défaut de PHP-FPM
EXPOSE 9000
