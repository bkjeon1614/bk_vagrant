#!/bin/sh
echo "**************************"
echo "Installing Build-Essential"
echo "**************************"

# Install Modules (PHP 8.1.X)

# apt-get
echo "**************************"
echo "Install apt-get update.."
echo "**************************"
sudo apt update && apt upgrade -y

# APACHE2
echo "**************************"
echo "Install apache2.."
echo "**************************"
sudo apt-get -y install apache2

# php8.1
# sudo apt-cache search php8 -> php8 modules search
echo "**************************"
echo "Install php8.3"
echo "**************************"
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install php8.3 -y
php -v

# php lib
echo "**************************"
echo "Install php-lib"
echo "**************************"
sudo apt-get -y install php-cli php-fpm php-mbstring php-xml php-intl php-sodium php-mysql

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
sed "s/short\_open\_tag\ \=\ Off/short\_open\_tag\ \=\ On/g" /etc/php/8.3/apache2/php.ini > php.ini
yes | mv php.ini /etc/php/8.3/apache2/php.ini

# date.timezone = Asia/Seoul
sed "s/\;date\.timezone\ \=/date\.timezone\ \=\ Asia\/Seoul/g" /etc/php/8.3/apache2/php.ini > php.ini
yes | mv php.ini /etc/php/8.3/apache2/php.ini

sudo a2enmod rewrite

# apache setting
echo "**************************"
echo "apache config setting.."
echo "**************************"
sed -i 's|DocumentRoot /var/www/html|DocumentRoot /vagrant/ec2|' /etc/apache2/sites-available/000-default.conf
bash -c 'cat <<EOT >> /etc/apache2/apache2.conf
<Directory /vagrant/ec2>
    Options Indexes FollowSymLinks
    AllowOverride All
    Allow from all
    Require all granted
</Directory>
EOT'
sudo service apache2 restart