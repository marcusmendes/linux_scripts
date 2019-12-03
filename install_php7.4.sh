#!/bin/bash

sudo apt update && sudo apt upgrade -y

echo "INSTALANDO PHP 7.4"
sudo apt install -y \
    php7.4 \
    php7.4-cgi \
    php7.4-cli \
    php7.4-common \
    php7.4-curl \
    php7.4-gd \
    php7.4-json \
    php7.4-ldap \
    php7.4-mysql \
    php7.4-pgsql \
    php7.4-sqlite3 \
    php7.4-tidy \
    php7.4-xml \
    php7.4-xmlrpc \
    php7.4-imap \
    php7.4-intl \
    php7.4-mbstring \
    php7.4-soap \
    php7.4-zip \
    php7.4-xsl \
    php-xdebug

echo "INSTALANDO COMPOSER"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"

echo "FINISH"
