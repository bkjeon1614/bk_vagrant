#!/bin/sh
echo "**************************"
echo "Installing Build-Essential"
echo "**************************"

# Install Modules (PHP 7.1.X)

# apt-get
echo "**************************"
echo "Install apt-get update.."
echo "**************************"
sudo apt-get -y update
sudo apt-get -y upgrade

# APACHE2
# sudo a2enmod rewrite
echo "**************************"
echo "Install apache2.."
echo "**************************"
sudo apt-get -y install apache2

# php7.0
# sudo apt-cache search php7-* -> php7 modules search
echo "**************************"
echo "Install php7.."
echo "**************************"
sudo apt-get -y install python-software-properties
sudo add-apt-repository ppa:ondrej/php
sudo apt-get -y update
sudo apt-get install -y php7.0

# mcrypt
echo "**************************"
echo "Install mcrypt.."
echo "**************************"
sudo apt-get -y install php7.0-mcrypt

# mysql
echo "**************************"
echo "Install mysql.."
echo "**************************"
sudo apt-get -y install php7.0-mysql

# curl
echo "**************************"
echo "Install curl.."
echo "**************************"
sudo apt-get -y install php7.0-curl

# php config setting
echo "**************************"
echo "php config setting.."
echo "**************************"
short_open_tag = On
sed "s/short\_open\_tag\ \=\ Off/short\_open\_tag\ \=\ On/g" /etc/php/7.0/apache2/php.ini > php.ini
yes | mv php.ini /etc/php/7.0/apache2/php.ini

date.timezone = Asia/Seoul
sed "s/\;date\.timezone\ \=/date\.timezone\ \=\ Asia\/Seoul/g" /etc/php/7.0/apache2/php.ini > php.ini
yes | mv php.ini /etc/php/7.0/apache2/php.ini

sudo a2enmod rewrite
