#
# Cookbook Name:: labsetup
# Recipe:: atom-mac
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
execute 'atom install' do
  command 'brew cask install atom'
  not_if 'pkgutil --packages | grep atom || brew cask list | grep atom || brew list | grep atom'
end   