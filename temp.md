singainnn6931@c4r5s1 ~ % ssh -i ~/aws-keys/Codyssey-Web-Key.pem ec2-user@54.206.205.127
Warning: Identity file /Users/singainnn6931/aws-keys/Codyssey-Web-Key.pem not accessible: No such file or directory.
The authenticity of host '54.206.205.127 (54.206.205.127)' can't be established.
ED25519 key fingerprint is SHA256:GR/o5M8sIYfe/jcGXgBPIHyTT+6GnGBMVqhNu5NAHPI.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '54.206.205.127' (ED25519) to the list of known hosts.
ec2-user@54.206.205.127: Permission denied (publickey,gssapi-keyex,gssapi-with-mic).
singainnn6931@c4r5s1 ~ % ls -l ~/aws-keys/
ls: /Users/singainnn6931/aws-keys/: No such file or directory
singainnn6931@c4r5s1 ~ % ssh -i ~/Downloads/Codyssey-Web-Key.pem ec2-user@54.206.205.127
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@         WARNING: UNPROTECTED PRIVATE KEY FILE!          @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Permissions 0644 for '/Users/singainnn6931/Downloads/Codyssey-Web-Key.pem' are too open.
It is required that your private key files are NOT accessible by others.
This private key will be ignored.
Load key "/Users/singainnn6931/Downloads/Codyssey-Web-Key.pem": bad permissions
ec2-user@54.206.205.127: Permission denied (publickey,gssapi-keyex,gssapi-with-mic).
singainnn6931@c4r5s1 ~ % chmod 400 ~/Downloads/Codyssey-Web-Key.pem
singainnn6931@c4r5s1 ~ % ls -l ~/Downloads/Codyssey-Web-Key.pem
-r--------@ 1 singainnn6931  singainnn6931  1674 10  2 03:25 /Users/singainnn6931/Downloads/Codyssey-Web-Key.pem
singainnn6931@c4r5s1 ~ % ssh -i ~/Downloads/Codyssey-Web-Key.pem ec2-user@54.206.205.127
   ,     #_
   ~\_  ####_        Amazon Linux 2023
  ~~  \_#####\
  ~~     \###|
  ~~       \#/ ___   https://aws.amazon.com/linux/amazon-linux-2023
   ~~       V~' '->
    ~~~         /
      ~~._.   _/
         _/ _/
       _/m/'
[ec2-user@ip-10-0-1-163 ~]$ cat /etc/os-release
NAME="Amazon Linux"
VERSION="2023"
ID="amzn"
ID_LIKE="fedora"
VERSION_ID="2023"
PLATFORM_ID="platform:al2023"
PRETTY_NAME="Amazon Linux 2023.12.20260930"
ANSI_COLOR="0;33"
CPE_NAME="cpe:2.3:o:amazon:amazon_linux:2023"
HOME_URL="https://aws.amazon.com/linux/amazon-linux-2023/"
DOCUMENTATION_URL="https://docs.aws.amazon.com/linux/"
SUPPORT_URL="https://aws.amazon.com/premiumsupport/"
BUG_REPORT_URL="https://github.com/amazonlinux/amazon-linux-2023"
VENDOR_NAME="AWS"
VENDOR_URL="https://aws.amazon.com/"
SUPPORT_END="2029-06-30"
[ec2-user@ip-10-0-1-163 ~]$ sudo dnf install nginx -y
Amazon Linux 2023 Kernel Livepatch repository                                       853 kB/s |  89 kB     00:00    
Dependencies resolved.
====================================================================================================================
 Package                        Architecture      Version                              Repository              Size
====================================================================================================================
Installing:
 nginx                          x86_64            1:1.30.5-1.amzn2023.0.1              amazonlinux             34 k
Installing dependencies:
 generic-logos-httpd            noarch            18.0.0-12.amzn2023.0.3               amazonlinux             19 k
 gperftools-libs                x86_64            2.9.1-1.amzn2023.0.3                 amazonlinux            308 k
 libunwind                      x86_64            1.4.0-5.amzn2023.0.3                 amazonlinux             66 k
 nginx-core                     x86_64            1:1.30.5-1.amzn2023.0.1              amazonlinux            711 k
 nginx-filesystem               noarch            1:1.30.5-1.amzn2023.0.1              amazonlinux             10 k
 nginx-mimetypes                noarch            2.1.49-3.amzn2023.0.3                amazonlinux             21 k

Transaction Summary
====================================================================================================================
Install  7 Packages

Total download size: 1.1 M
Installed size: 3.8 M
Downloading Packages:
(1/7): generic-logos-httpd-18.0.0-12.amzn2023.0.3.noarch.rpm                        703 kB/s |  19 kB     00:00    
(2/7): libunwind-1.4.0-5.amzn2023.0.3.x86_64.rpm                                    2.2 MB/s |  66 kB     00:00    
(3/7): gperftools-libs-2.9.1-1.amzn2023.0.3.x86_64.rpm                              8.6 MB/s | 308 kB     00:00    
(4/7): nginx-1.30.5-1.amzn2023.0.1.x86_64.rpm                                       1.2 MB/s |  34 kB     00:00    
(5/7): nginx-core-1.30.5-1.amzn2023.0.1.x86_64.rpm                                   21 MB/s | 711 kB     00:00    
(6/7): nginx-filesystem-1.30.5-1.amzn2023.0.1.noarch.rpm                            339 kB/s |  10 kB     00:00    
(7/7): nginx-mimetypes-2.1.49-3.amzn2023.0.3.noarch.rpm                             785 kB/s |  21 kB     00:00    
--------------------------------------------------------------------------------------------------------------------
Total                                                                               8.5 MB/s | 1.1 MB     00:00     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                            1/1 
  Running scriptlet: nginx-filesystem-1:1.30.5-1.amzn2023.0.1.noarch                                            1/7 
  Installing       : nginx-filesystem-1:1.30.5-1.amzn2023.0.1.noarch                                            1/7 
  Installing       : nginx-mimetypes-2.1.49-3.amzn2023.0.3.noarch                                               2/7 
  Installing       : libunwind-1.4.0-5.amzn2023.0.3.x86_64                                                      3/7 
  Installing       : gperftools-libs-2.9.1-1.amzn2023.0.3.x86_64                                                4/7 
  Installing       : nginx-core-1:1.30.5-1.amzn2023.0.1.x86_64                                                  5/7 
  Installing       : generic-logos-httpd-18.0.0-12.amzn2023.0.3.noarch                                          6/7 
  Installing       : nginx-1:1.30.5-1.amzn2023.0.1.x86_64                                                       7/7 
  Running scriptlet: nginx-1:1.30.5-1.amzn2023.0.1.x86_64                                                       7/7 
  Verifying        : generic-logos-httpd-18.0.0-12.amzn2023.0.3.noarch                                          1/7 
  Verifying        : gperftools-libs-2.9.1-1.amzn2023.0.3.x86_64                                                2/7 
  Verifying        : libunwind-1.4.0-5.amzn2023.0.3.x86_64                                                      3/7 
  Verifying        : nginx-1:1.30.5-1.amzn2023.0.1.x86_64                                                       4/7 
  Verifying        : nginx-core-1:1.30.5-1.amzn2023.0.1.x86_64                                                  5/7 
  Verifying        : nginx-filesystem-1:1.30.5-1.amzn2023.0.1.noarch                                            6/7 
  Verifying        : nginx-mimetypes-2.1.49-3.amzn2023.0.3.noarch                                               7/7 

Installed:
  generic-logos-httpd-18.0.0-12.amzn2023.0.3.noarch         gperftools-libs-2.9.1-1.amzn2023.0.3.x86_64            
  libunwind-1.4.0-5.amzn2023.0.3.x86_64                     nginx-1:1.30.5-1.amzn2023.0.1.x86_64                   
  nginx-core-1:1.30.5-1.amzn2023.0.1.x86_64                 nginx-filesystem-1:1.30.5-1.amzn2023.0.1.noarch        
  nginx-mimetypes-2.1.49-3.amzn2023.0.3.noarch             

Complete!
[ec2-user@ip-10-0-1-163 ~]$ sudo systemctl start nginx
[ec2-user@ip-10-0-1-163 ~]$ sudo systemctl enable nginx
Created symlink /etc/systemd/system/multi-user.target.wants/nginx.service → /usr/lib/systemd/system/nginx.service.
[ec2-user@ip-10-0-1-163 ~]$ sudo systemctl status nginx
● nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: disabled)
     Active: active (running) since Thu 2026-10-01 18:38:43 UTC; 15s ago
   Main PID: 26160 (nginx)
      Tasks: 3 (limit: 1059)
     Memory: 3.4M
        CPU: 57ms
     CGroup: /system.slice/nginx.service
             ├─26160 "nginx: master process /usr/sbin/nginx"
             ├─26161 "nginx: worker process"
             └─26162 "nginx: worker process"

Oct 01 18:38:43 ip-10-0-1-163.ap-southeast-2.compute.internal systemd[1]: Starting nginx.service - The nginx HTTP a>
Oct 01 18:38:43 ip-10-0-1-163.ap-southeast-2.compute.internal nginx[26158]: nginx: the configuration file /etc/ngin>
Oct 01 18:38:43 ip-10-0-1-163.ap-southeast-2.compute.internal nginx[26158]: nginx: configuration file /etc/nginx/ng>
Oct 01 18:38:43 ip-10-0-1-163.ap-southeast-2.compute.internal systemd[1]: Started nginx.service - The nginx HTTP an>
[ec2-user@ip-10-0-1-163 ~]$ 
