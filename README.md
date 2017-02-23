# bk_vagrant
vagrant development environment construct


## LIST
- [X] php5 update
- [ ] php7 update

## Setting Info
Type | VM Spec | Data Shared
------------ | ------------- | -------------
php5 | memory:1024, cpus:1 | /var/www/html/data
php7 | memory:1024, cpus:1 | /var/www/html/data



> Update Logs
> - 2017-02-14 1.0.0 Version PHP5


## WINDOWS

### file download
   * virtualBox install( https://www.virtualbox.org/ )
   * vagrant install( https://www.vagrantup.com/ )

### vagrant setting 
```
   1. 원하는 box를 설치할 경우 
      - vagrant box add my-box {box root}\{box name}.box // 원하는 box를 개발환경을 구축할 경로에 다운받아 윈도우 커맨드에 입력한다. 
      - 개발환경을 구축할 경로로 이동
      - vagrant init my-box
      - vagrant up --provision
   2. bk_vagrant에 설정된 박스로 실행할 경우
      - vagrant box add bk_vagrant https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box
      - vagrant up --provision
```
   
### vagrant up --provision

### vagrant instruction
    (1) workspace root move
    (2) vagrant instruction action
        - vagrant up ( vagrant start ) or config.vm.provision add -> vagrant up --provision
        - vagrant halt ( vagrant halt )
        - vagrant reload ( vagrant reload )
        - vagrant box list ( vagrant box list )
    (3) vagrant up check -> vm
       ![Image of Yaktocat](http://bkjeon1614.vps.phps.kr/bkjeon/uploads/cache/post/2017/02/thumb-994f09ae65ffed35f3690f4c33b080d0_600x0.png)
