#!/bin/bash

sudo apt update && sudo apt upgrade -y

echo "INSTALANDO PHP 7.3"
sudo apt install -y \
    php7.3 \
    php7.3-cgi \
    php7.3-cli \
    php7.3-common \
    php7.3-curl \
    php7.3-gd \
    php7.3-json \
    php7.3-ldap \
    php7.3-mysql \
    php7.3-pgsql \
    php7.3-sqlite3 \
    php7.3-tidy \
    php7.3-xml \
    php7.3-xmlrpc \
    php7.3-imap \
    php7.3-intl \
    php7.3-mbstring \
    php7.3-soap \
    php7.3-zip \
    php7.3-xsl \
    php-apcu \
    php-xdebug

echo "INSTALANDO COMPOSER"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"

echo "FINISH"
