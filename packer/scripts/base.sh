RELEASE=`rpm -q --qf "%{VERSION}" $(rpm -q --whatprovides redhat-release)`
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-${RELEASE}.noarch.rpm
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` perl wget bzip2
yum -y update
yum install vim vi screen tee emacs-nox tree nano createrepo wget  yum-plugin-priorities sysstat libcgroup yum-utils  xz -y
reboot
sleep 60
