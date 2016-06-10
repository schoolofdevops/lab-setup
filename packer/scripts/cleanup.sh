yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts
rm -rf VBoxGuestAdditions_*.iso
rm -rf /tmp/rubygems-*
yum makecache

# Remove traces of mac address from network configuration
sed -i /HWADDR/d /etc/sysconfig/network-scripts/ifcfg-eth0
rm /etc/udev/rules.d/70-persistent-net.rules

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY	

