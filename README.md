# bk_vagrant
vagrant development environment construct


## 2017-02-14
- [X] php5.5.9 update
- [ ] php7.x.x update


Type | VM Spec | Data Shared
------------ | ------------- | -------------
php | default | /var/www/html/data
php | default | /var/www/html/data



> Update Logs
> - 2017-02-14 1.0.0 Version PHP 5.X.X


### WINDOWS 환경 [ windows7 ]

1. file download
   - virtualBox install( https://www.virtualbox.org/ )
   - vagrant install( https://www.vagrantup.com/ )

2. vagrant setting
   - 원하는 box를 는다( ex-우분투 14.04 패키지 사용 trusty-server-cloudimg-amd64-vagrant-disk1.box )
   - https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box
   - 로컬 개발환경을 구축할 경로에 저장한다
   - vagrant box add my-box D:\data\workphp5\trusty-server-cloudimg-amd64-vagrant-disk1.box // 원하는 box를 다운받아 윈도우 커맨드에 입력한다. 
   - cd 개발환경을 구축할 경로
   - vagrant init my-box
   - vagrant up


3. vagrantfile config
   - vagrantfile 수정 config.vm.box에 box파일이름으로 수정
```
Exmaple
   # box name
   config.vm.box = "trusty-server-cloudimg-amd64-vagrant-disk1.box"
   # port forward
   config.vm.network "forwarded_port", guest: 80, host: 8080
   # network adapter
   config.vm.network "private_network", ip: "192.168.33.10" 
```
   - vagrantfile 수정 config.vm.box에 box파일이름으로 수정  

4. vagrant reload // vagrant start

5. individual setting


```
Install Modules (PHP 5.X.X)

# apt-get
apt-get update
apt-get upgrade

# APACHE2
apt-get install apache2

# GD
sudo apt-get install php5-gd

# CURL
sudo apt-get install php5-curl

# Redis
sudo add-apt-repository -y ppa:rwky/redis
sudo apt-get update
sudo add-apt-repository -y ppa:rwky/redis // OR sudo apt-get install python-software-properties
sudo apt-get install redis-server
apt-get install php5-redis

# PHP5 Mcrypt
sudo apt-get install php5-mcrypt
sudo php5enmod mcrypt

```
