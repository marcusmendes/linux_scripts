#!/bin/bash

sudo apt update && sudo apt upgrade -y

echo "INSTALANDO PHP 7.2"
sudo apt install -y \
    php7.2 \
    php7.2-cgi \
    php7.2-cli \
    php7.2-common \
    php7.2-curl \
    php7.2-gd \
    php7.2-json \
    php7.2-ldap \
    php7.2-mysql \
    php7.2-pgsql \
    php7.2-sqlite3 \
    php7.2-tidy \
    php7.2-xml \
    php7.2-xmlrpc \
    php7.2-imap \
    php7.2-intl \
    php7.2-mbstring \
    php7.2-soap \
    php7.2-zip \
    php7.2-xsl \
    php-xdebug

echo "INSTALANDO COMPOSER"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'a5c698ffe4b8e849a443b120cd5ba38043260d5c4023dbf93e1558871f1f07f58274fc6f4c93bcfd858c6bd0775cd8d1') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"

echo "FINISH"
