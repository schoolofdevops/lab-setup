#
# Cookbook Name:: labsetup_mac
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved

##install wget
execute 'wget install' do
  command 'brew install wget'
  not_if 'pkgutil --packages | grep wget || brew cask list | grep wget || brew list | grep wget'
end  
  
include_recipe "pack::atom"
include_recipe "pack::git"
include_recipe "pack::vagrant"
include_recipe "pack::virtualbox"



  
