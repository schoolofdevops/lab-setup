#
# Cookbook Name:: labsetup
# Recipe:: vagrant-mac
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

##download vagrant dmg file
execute 'vagrant download' do
  cwd '/tmp'
  command  '/usr/local/bin/wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1.dmg'
  creates '/tmp/vagrant_1.8.1.dmg'
#  #not_if 'pkgutil --packages | grep vagrant || brew cask list | grep vagrant'
end

##create volume to convert dmg to pkg package
execute 'create vagrant volume' do
  cwd '/tmp'
  command 'hdiutil attach vagrant_1.8.1.dmg'
  creates '/Volumes/Vagrant/Vagrant.pkg'
#  #not_if { File.exist?("/tmp/vagrant_1.8.1.dmg") }
end

##install vagrant pkg package
execute 'install vagrant' do
  cwd '/Volumes/Vagrant'
  command "sudo installer -pkg Vagrant.pkg -target '/'" 
  creates '/Volumes/Vagrant/Vagrant.txt'
  not_if 'pkgutil --packages | grep vagrant'
end  

##installvagrant with brew cask , only latest package install by default
#execute 'vagrant install' do
# command 'brew install cask vagrant'
#  not_if 'pkgutil --packages | grep vagrant || brew cask list | grep vagrant || brew list | grep vagrant'
#end 