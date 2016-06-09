
# Local Repo Contains the following Packages
# - apache
# - mysql server/client
# - nginx
# - haproxy
# - ntp
# - java:  openjdk 7
# - tomcat 

#mkdir -p /usr/local/repo/
#wget -O /usr/local/repo/nginx-1.8.0-1.el6.ngx.x86_64.rpm http://nginx.org/packages/centos/6/x86_64/RPMS/nginx-1.8.0-1.el6.ngx.x86_64.rpm
#wget  -O /usr/local/repo/haproxy-1.5.4-2.el6.x86_64.rpm   ftp://rpmfind.net/linux/centos/6.7/os/x86_64/Packages/haproxy-1.5.4-2.el6.x86_64.rpm 
#wget -O /usr/local/repo/httpd-2.2.15-47.el6.centos.x86_64.rpm  ftp://rpmfind.net/linux/centos/6.7/updates/x86_64/Packages/httpd-2.2.15-47.el6.centos.x86_64.rpm
#wget -O /usr/local/repo/httpd-tools-2.2.15-47.el6.centos.x86_64.rpm  ftp://rpmfind.net/linux/centos/6.7/updates/x86_64/Packages/httpd-tools-2.2.15-47.el6.centos.x86_64.rpm
#wget -O /usr/local/repo/apr-1.3.9-5.el6_2.x86_64.rpm  http://mirror.centos.org/centos/6/os/x86_64/Packages/apr-1.3.9-5.el6_2.x86_64.rpm
#wget -O  /usr/local/repo/apr-util-1.3.9-3.el6_0.1.x86_64.rpm  http://mirror.centos.org/centos/6/os/x86_64/Packages/apr-util-1.3.9-3.el6_0.1.x86_64.rpm
#wget -O /usr/local/repo/apr-util-ldap-1.3.9-3.el6_0.1.x86_64.rpm  http://mirror.centos.org/centos/6/os/x86_64/Packages/apr-util-ldap-1.3.9-3.el6_0.1.x86_64.rpm
#wget -O /usr/local/repo/mailcap-2.1.31-2.el6.noarch.rpm  http://mirror.centos.org/centos/6/os/i386/Packages/mailcap-2.1.31-2.el6.noarch.rpm
#wget -O /usr/local/repo/numactl-2.0.9-2.el6.x86_64.rpm  http://mirror.centos.org/centos/6/os/x86_64/Packages/numactl-2.0.9-2.el6.x86_64.rpm
#wget -O /usr/local/repo/ntpdate-4.2.6p5-5.el6.centos.x86_64.rpmftp://195.220.108.108/linux/centos/6.7/os/x86_64/Packages/ntpdate-4.2.6p5-5.el6.centos.x86_64.rpm
#wget -O  /usr/local/repo/ntp-4.2.6p5-5.el6.centos.x86_64.rpm ftp://195.220.108.108/linux/centos/6.7/os/x86_64/Packages/ntp-4.2.6p5-5.el6.centos.x86_64.rpm
#wget http://cdn.mysql.com//Downloads/MySQL-5.7/mysql-5.7.10-1.el6.x86_64.rpm-bundle.tar
#tar -xvf  mysql-5.7.10-1.el6.x86_64.rpm-bundle.tar -C /usr/local/repo/
#rm -rf  mysql-5.7.10-1.el6.x86_64.rpm-bundle.tar

cd /usr/local && tar -xzf /tmp/repo.tar.gz

REPO="puppet docker java lamp chef"
for repo in $(echo $REPO)
 do  
createrepo /usr/local/repo/$repo/
cat > /etc/yum.repos.d/local_$repo.repo << EOF
[local_$repo]
name=local_$repo
baseurl=file:///usr/local/repo/$repo/
enabled=1
priority=1
gpgcheck=0
EOF
done


