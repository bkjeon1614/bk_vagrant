# bk_vagrant PHP5
vagrant development environment construct

## Setting Info
Type | VM Spec | Data Shared | spec | php.ini setting
------------ | ------------- | ------------- | ------------- | -------------
php5 | memory:1024, cpus:1 | /var/www/html/data | ubuntu14.04, apache2, php5, php gd, curl, redis, php mcrypt, php mysql module, pecl_http | short_open_tag=on, timezone=Asia/Seoul, extension=http.so


> Update Logs
> - 2017-02-14 1.0 Version PHP5
> - 2017-02-23 1.1 realese
> - 2017-02-24 1.2 description add
> - 2017-03-14 1.3 php mysql module / pecl_http add


## WINDOWS

### File Download
   * virtualBox install( https://www.virtualbox.org/ )
   * vagrant install( https://www.vagrantup.com/ )
   
   
### bk_vagrant git clone or download
   
   
### "vagrant up --provision" command input [ workspace root ]   // Use --provision option only at first setting


### Vagrant Add Setting
VagrantFile => port / ip change


### Vagrant Account / Connection Info
* ip : 127.0.0.1 : 2222 ( port automatic setting => vagrant after startup log check )
* user : vagrant / vagrant
* root : root / vagrant


Vagrant Instruction
* workspace root move
* vagrant instruction action
  - vagrant up ( vagrant start ) or config.vm.provision add -> vagrant up --provision
  - vagrant halt ( vagrant halt )
  - vagrant reload ( vagrant reload )
  - vagrant box list ( vagrant box list )
  - vagrant box remove {vagrant name} ( vagrant box remove )
* vagrant up check -> vm
