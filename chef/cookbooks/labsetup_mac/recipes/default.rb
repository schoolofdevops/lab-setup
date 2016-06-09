#
# Cookbook Name:: labsetup_mac
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

##install brew
execute 'brew install' do
  command '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
  not_if { File.exist?("/usr/local/bin/brew") }
end

##install wget
execute 'wget install' do
  command 'brew install wget'
  not_if 'pkgutil --packages | grep wget || brew cask list | grep wget || brew list | grep wget'
end  
  
include_recipe "pack::atom"
include_recipe "pack::git"
include_recipe "pack::vagrant"
include_recipe "pack::virtualbox"












#package 'vagrant' do
#  provider Chef::Provider::Package::Homebrew
#  action :install
#  source '/tmp/vagrant_1.8.1.dmg'
#end  


  