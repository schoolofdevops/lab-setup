#
# Cookbook Name:: labsetup
# Recipe:: git-windows
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
windows_package node['labsetup']['git_display_name'] do
  not_if do
  	File.exist?("#{node['labsetup']['path']}#{node['labsetup']['git_display_name']}.exe")
  end
  action :install
  source node['labsetup']['git_url']
  checksum node['labsetup']['git_checksum']
   remote_file_attributes ({
    :path => "#{node['labsetup']['path']}#{node['labsetup']['git_display_name']}.exe"
    })
   installer_type :inno
   options "/VERYSILENT"
end
