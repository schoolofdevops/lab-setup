 
echo  "I: installing base packages..." 

cd /opt 
tar -xzf /tmp/install.tar.gz

# Install essential packages
cd /opt/install/base 
rpm -Uvh *.rpm 

REPO="chef docker java lamp puppet"
for repo in $REPO
do 
	tar -xzf /tmp/${repo}.tar.gz -C /usr/local/repo/${repo}/
done

# add puppet path to bashrc
sudo echo "export PATH=$PATH:/opt/puppetlabs/bin" >> ~/.bashrc

# executable permission to enable/disable scripts
sudo chmod +x /tmp/public_repo_enable.sh
sudo chmod +x /tmp/public_repo_disable.sh


# Install Chef, Puppet etc. 
#cd /opt/install/cm
#rpm -Uvh *.rpm  

# Install Network Utilities
#cd /opt/install/net
#rpm -Uvh *  

# Install additional Network Utilities 
#cd /opt/install/tcptr 
#rpm -Uvh libnet-1.1.6-7.el6.x86_64.rpm  
#rpm -Uvh tcptraceroute-1.5-0.8.beta7.el6.x86_64.rpm 
#rpm -Uvh tcping-1.3.5-13.el6.x86_64.rpm 

rm -rf /tmp/install.tar.gz
rm -rf /opt/install

