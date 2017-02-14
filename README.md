# bk_vagrant
vagrant development environment construct


## 2017-02-14
- [] php5.5.9 update
- [] php7.x.x update


Type | VM Spec | Data Shared
------------ | ------------- 
php | default | /var/www/html/data
php | default | /var/www/html/data



> Update Logs
> - 2017-02-14 1.0.0 Version PHP 5.X.X



```
Install Modules (PHP 5.X.X)

# GD Install
sudo apt-get install php5-gd

# CURL Install
sudo apt-get install php5-curl

# Redis Install
sudo add-apt-repository -y ppa:rwky/redis
sudo apt-get update
sudo add-apt-repository -y ppa:rwky/redis // OR sudo apt-get install python-software-properties

```
