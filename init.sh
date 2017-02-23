#!/bin/sh
echo "**************************"
echo "Installing Build-Essential"
echo "**************************"

# Install Modules (PHP 5.X.X)

# apt-get
echo "**************************"
echo "Install apt-get update.."
echo "**************************"
sudo apt-get -y update
sudo apt-get -y upgrade

# APACHE2
echo "**************************"
echo "Install apache2.."
echo "**************************"
sudo apt-get -y install apache2

# php5
echo "**************************"
echo "Install php.."
echo "**************************"
sudo apt-get -y install php5-common php5 libapache2-mod-php5

# GD
echo "**************************"
echo "Install gd.."
echo "**************************"
sudo apt-get -y install php5-gd

# CURL
echo "**************************"
echo "Install curl.."
echo "**************************"
sudo apt-get -y install php5-curl

# Redis
echo "**************************"
echo "Install redis.."
echo "**************************"
sudo add-apt-repository -y ppa:rwky/redis # OR sudo apt-get install python-software-properties
sudo apt-get -y update
sudo apt-get -y install redis-server
sudo apt-get -y install php5-redis

# PHP5 Mcrypt
sudo apt-get -y install php5-mcrypt
sudo php5enmod mcrypt

# php config setting
echo "**************************"
echo "php config setting.."
echo "**************************"
short_open_tag = On
sed "s/short\_open\_tag\ \=\ Off/short\_open\_tag\ \=\ On/g" /etc/php5/apache2/php.ini > php.ini
yes | mv php.ini /etc/php5/apache2/php.ini

date.timezone = Asia/Seoul
sed "s/\;date\.timezone\ \=/date\.timezone\ \=\ Asia\/Seoul/g" /etc/php5/apache2/php.ini > php.ini
yes | mv php.ini /etc/php5/apache2/php.ini
