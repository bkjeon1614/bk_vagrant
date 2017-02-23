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


### WINDOWS 환경 [ windows ]

1. file download
   * virtualBox install( https://www.virtualbox.org/ )
   * vagrant install( https://www.vagrantup.com/ )

2. vagrant setting 
   * 원하는 box를 설치할 경우 
      - vagrant box add my-box {box root}\{box name}.box // 원하는 box를 개발환경을 구축할 경로에 다운받아 윈도우 커맨드에 입력한다. 
      - 개발환경을 구축할 경로로 이동
      - vagrant init my-box
      - vagrant up --provision
   * bk_vagrant에 설정된 박스로 실행할 경우
      - vagrant box add bk_vagrant https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box
      - vagrant up --provision

3. vagrantfile config
```
Exmaple
   # box name
   config.vm.box = "trusty-server-cloudimg-amd64-vagrant-disk1.box"  // 2-(1)일 경우에만 박스경로로 변경해주면 된다.
   
   # box provision ( add option -> vagrant start(=> vagrant up --provision) ) 
   config.vm.provision "shell", path: "./bin/init.sh" 
   
   # port forward
   config.vm.network "forwarded_port", guest: 80, host: 8080
   
   # network adapter
   config.vm.network "private_network", ip: "192.168.33.10" 
   
   # VM configure
   config.vm.provider "virtualbox" do |vb|
       vb.name = "bk_vagrant"
       vb.customize ["modifyvm", :id, "--memory", 1024]
       vb.customize ["modifyvm", :id, "--cpus", 1]
   end   
   
   # shared folder
   config.vm.synced_folder "..", "/var/www/html/data"
```

4. vagrant reload 

5. vagrant instruction
   (1) workspace root move
   (2) vagrant instruction action
       - vagrant up ( vagrant start ) or config.vm.provision add -> vagrant up --provision
       - vagrant halt ( vagrant halt )
       - vagrant reload ( vagrant reload )
   (3) vagrant up check -> vm
       ![Image of Yaktocat](http://bkjeon1614.vps.phps.kr/bkjeon/uploads/cache/post/2017/02/thumb-994f09ae65ffed35f3690f4c33b080d0_600x0.png)
