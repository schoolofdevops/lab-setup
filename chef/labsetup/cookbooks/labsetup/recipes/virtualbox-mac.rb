#
# Cookbook Name:: labsetup
# Recipe:: virtualbox-mac
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

##download vagrant dmg file
execute 'virtualbox-mac download' do
  cwd '/tmp'
  command  '/usr/local/bin/wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1.dmg'
  creates '/tmp/vagrant_1.8.1.dmg'
#  #not_if 'pkgutil --packages | grep virtualbox || brew cask list | grep virtualbox || brew list virtualbox'
end

##create volume to convert dmg to pkg package
execute 'create virtualbox-mac volume' do
  cwd '/tmp'
  command 'hdiutil attach vagrant_1.8.1.dmg'
  creates '/Volumes/Vagrant/Vagrant.pkg'
  #not_if 'pkgutil --packages | grep virtualbox || brew cask list | grep virtualbox || brew list | grep virtualbox'
end

##install vagrant pkg package
execute 'install virtualbox-mac' do
  cwd '/Volumes/Vagrant'
  command "sudo installer -pkg Vagrant.pkg -target '/'" 
  creates '/Volumes/Vagrant/Vagrant.txt'
  not_if 'pkgutil --packages |  grep virtualbox'
end  

##installvagrant with brew cask , only latest package install by default
#execute 'virtualbox install' do
#  command 'brew install cask virtualbox'
#  not_if 'pkgutil --packages | grep virtualbox || brew cask list | grep virtualbox || brew list | grep virtualbox'
#end 