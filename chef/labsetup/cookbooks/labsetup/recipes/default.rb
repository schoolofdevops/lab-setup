#
# Cookbook Name:: labsetup
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
case node['platform_family']
when 'mac_os_x'
  ##install wget
execute 'wget install' do
  command 'brew install wget'
  not_if 'pkgutil --packages | grep wget || brew cask list | grep wget || brew list | grep wget'
end    
include_recipe "labsetup::atom-mac"
include_recipe "labsetup::git-mac"
include_recipe "labsetup::vagrant-mac"
include_recipe "labsetup::virtualbox-mac"

when 'windows'
include_recipe "labsetup::atom-windows"
include_recipe "labsetup::git-windows"
include_recipe "labsetup::vagrant-windows"
include_recipe "labsetup::virtualbox-windows"	
  
end