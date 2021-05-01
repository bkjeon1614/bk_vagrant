#!/bin/sh
echo "**************************"
echo "Installing Build-Essential"
echo "**************************"

# Install Modules (PHP 7.1.X)

# apt-get
echo "**************************"
echo "Install apt-get update.."
echo "**************************"
sudo apt-get -y upgrade
sudo apt-get -y update

# APACHE2
echo "**************************"
echo "Install apache2.."
echo "**************************"
sudo apt-get -y install apache2

# php7.1
# sudo apt-cache search php7-* -> php7 modules search
echo "**************************"
echo "Install php7.."
echo "**************************"
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update -y
sudo apt-get install php7.1 -y

# curl
echo "**************************"
echo "Install curl.."
echo "**************************"
sudo apt-get -y install php7.1-curl

# mcrypt
echo "**************************"
echo "Install mcrypt.."
echo "**************************"
sudo apt-get -y install php7.1-mcrypt

# intl
echo "**************************"
echo "Install intl.."
echo "**************************"
sudo apt-get -y install php7.1-intl

# xml
echo "**************************"
echo "Install xml.."
echo "**************************"
sudo apt-get -y install php7.1-xml

# mbstring
echo "**************************"
echo "Install mbstring.."
echo "**************************"
sudo apt-get -y install php7.1-mbstring

# mysql module
echo "**************************"
echo "Install mysql.."
echo "**************************"
sudo apt-get -y install php7.1-mysql

# zip
echo "**************************"
echo "Install zip.."
echo "**************************"
sudo apt-get -y install zip

# composer
echo "**************************"
echo "Install composer.."
echo "**************************"
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
composer -V
PATH=$PATH:/usr/local/bin/
export COMPOSER_ALLOW_SUPERUSER=1
echo "export COMPOSER_ALLOW_SUPERUSER=1" >> ~/.bashrc
cat ~/.bashrc | grep export
sudo composer self-update

# php config setting
echo "**************************"
echo "php config setting.."
echo "**************************"
# short_open_tag = On
sed "s/short\_open\_tag\ \=\ Off/short\_open\_tag\ \=\ On/g" /etc/php/7.1/apache2/php.ini > php.ini
yes | mv php.ini /etc/php/7.1/apache2/php.ini

# date.timezone = Asia/Seoul
sed "s/\;date\.timezone\ \=/date\.timezone\ \=\ Asia\/Seoul/g" /etc/php/7.1/apache2/php.ini > php.ini
yes | mv php.ini /etc/php/7.1/apache2/php.ini

sudo a2enmod rewrite
