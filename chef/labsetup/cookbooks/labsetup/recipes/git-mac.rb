#
# Cookbook Name:: labsetup
# Recipe:: git-mac
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

##git recipe

execute 'git install' do
  command 'brew cask install git'
  not_if 'pkgutil --packages | grep git || brew cask list | grep git || brew list | grep git'
end