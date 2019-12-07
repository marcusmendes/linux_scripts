#!/bin/bash

sudo dnf distro-sync && sudo dnf update -y

echo "INSTALANDO PHP"
sudo dnf install -y \
    php \
    php-cgi \
    php-cli \
    php-common \
    php-curl \
    php-gd \
    php-json \
    php-ldap \
    php-dba \
    php-pdo \
    php-pgsql \
    php-mysqlnd \
    php-tidy \
    php-xml \
    php-xmlrpc \
    php-imap \
    php-intl \
    php-mbstring \
    php-soap \
    php-zip \
    php-xsl \
    php-xdebug

echo "INSTALANDO COMPOSER"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"

echo "FINISH"
