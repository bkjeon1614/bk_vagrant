# bk_vagrant Ubuntu22.04
vagrant development environment construct

## Setting Info
Type | VM Spec | Data Shared | modules | php.ini setting
------------ | ------------- | ------------- | ------------- | -------------
ubuntu22.04, apache2, php8.3 | memory:4096, cpus:2 | curl, mcrypt, intl, xml, mbstring, mysql, redis, composer | short_open_tag=on, timezone=Asia/Seoul | 


> Update Logs
> - 2024-12-28 1.0.1 bugfix (vagrant 공유 폴더 설정 값 변경)
> - 2024-12-15 1.0.0 release


## WINDOWS

### File Download
   * virtualBox install( https://www.virtualbox.org/ )
   * vagrant install( https://www.vagrantup.com/ )
   
### bk_vagrant git clone or download
   
### "vagrant up --provision" command input [ workspace root ]  // Use --provision option only at first setting

Vagrant Account
* key path: C:\bk_vagrant\php\ubuntu20.04_php8_apache\.vagrant\machines\default\virtualbox\private_key
* user : vagrant / {key file}
* port : 2222(SSH), 8081(HTTP - http://127.0.0.1:8081/)
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

### 프로젝트 웹 루트 세팅 방법
1. vm 의 /vagrant 폴더와 현재 Vagrantfile 이 있는 폴더가 share 되어있다. Vagrantfile 이 위치한 경로에 원하는 웹서비스 폴더를 이동

### Issue
- vagrant init bento/ubuntu-22.04 --box-version 202407.23.0 (기존 Vagrantfile -> Vagrantfile.bak 로 변경 후 명령실행 -> Vagrantfile 의 내용 복사하여 붙여넣기)
  - 만약 그래도 box 가 변경되지 않으면 vagrant remove 명령으로 박스 삭제 후 다시 init 후 실행
    - vagrant box list
    - vagrant box remove {리스트에 표시된 삭제할 박스이름}
    - vagrant up
