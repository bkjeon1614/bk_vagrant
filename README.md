# bk_vagrant [ img, script 폴더 생성 예정 ]
vagrant development environment construct


## LIST
- [X] php5 update
- [ ] php7 update

## Setting Info
Type | VM Spec | Data Shared | spec | php.ini setting
------------ | ------------- | ------------- | ------------- | -------------
php5 | memory:1024, cpus:1 | /var/www/html/data | apache2, php5, php gd, curl, redis, php mcrypt | short_open_tag=on, timezone=Asia/Seoul
php7 | memory:1024, cpus:1 | /var/www/html/data | - | 



> Update Logs
> - 2017-02-14 1.0.0 Version PHP5


## WINDOWS

### File Download
   * virtualBox install( https://www.virtualbox.org/ )
   * vagrant install( https://www.vagrantup.com/ )
   
### bk_vagrant git clone or download
   
### vagrant up --provision command input [ workspace root ]

Vagrant Instruction
* workspace root move
* vagrant instruction action
  - vagrant up ( vagrant start ) or config.vm.provision add -> vagrant up --provision
  - vagrant halt ( vagrant halt )
  - vagrant reload ( vagrant reload )
  - vagrant box list ( vagrant box list )
  - vagrant box remove {vagrant name}
* vagrant up check -> vm

![Image of Yaktocat](http://bkjeon1614.vps.phps.kr/bkjeon/uploads/cache/post/2017/02/thumb-994f09ae65ffed35f3690f4c33b080d0_600x0.png)
