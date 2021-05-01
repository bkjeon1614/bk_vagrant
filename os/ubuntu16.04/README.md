# bk_vagrant Ubuntu16.04
vagrant development environment construct

## Setting Info
Type | VM Spec | Data Shared | spec | php.ini setting
------------ | ------------- | ------------- | ------------- | -------------
ubuntu16.04 | memory:1024, cpus:1 | |  | 


> Update Logs
> - 2017-07-20 1.0.0 Version Ubuntu16.04
> - 2017-07-24 1.0.1 menual modify


## WINDOWS

### File Download
   * virtualBox install( https://www.virtualbox.org/ )
   * vagrant install( https://www.vagrantup.com/ )
   
### bk_vagrant git clone or download
   
### "vagrant up --provision" command input [ workspace root ]  // Use --provision option only at first setting

Vagrant Account
* user : ubuntu / {key file}
* root : excute cmd -> sudo -i

Vagrant SSH Config
1. public key 필요 // key empty ... not login
2. vagrant ssh-config or vagrant ssh   // ssh config info
   ```
   ex)  D:\data\elk>vagrant ssh-config
        Host default
          HostName 127.0.0.1
          User ubuntu
          Port 2222
          UserKnownHostsFile /dev/null
          StrictHostKeyChecking no
          PasswordAuthentication no
          IdentityFile D:/data/elk/.vagrant/machines/default/virtualbox/private_key
          IdentitiesOnly yes
          LogLevel FATAL


        D:\data\elk>vagrant ssh
        `ssh` executable not found in any directories in the %PATH% variable. Is an
        SSH client installed? Try installing Cygwin, MinGW or Git, all of which
        contain an SSH client. Or use your favorite SSH client with the following
        authentication information shown below:
        Host: 127.0.0.1
        Port: 2222
        Username: ubuntu
        Private key: D:/data/elk/.vagrant/machines/default/virtualbox/private_key
     ```
3. Private key 경로에 key파일이 있다. 그걸 이용해서 연결  // key file root

Vagrant Instruction
* workspace root move
* vagrant instruction action
  - vagrant up ( vagrant start ) or config.vm.provision add -> vagrant up --provision
  - vagrant halt ( vagrant halt )
  - vagrant reload ( vagrant reload )
  - vagrant box list ( vagrant box list )
  - vagrant box remove {vagrant name} ( vagrant box remove )
* vagrant up check -> vm

![Image of Yaktocat](http://bkjeon1614.vps.phps.kr/bkjeon/uploads/cache/post/2017/02/thumb-994f09ae65ffed35f3690f4c33b080d0_600x0.png)
