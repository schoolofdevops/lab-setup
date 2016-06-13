#
# Cookbook Name:: labsetup
# Recipe:: virtualbox-windows
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
windows_package node['labsetup']['virtualbox_display_name'] do
   not_if do
  	File.exist?("#{node['labsetup']['path']}#{node['labsetup']['virtualbox_display_name']}.exe")
  end
  action :install
  source node['labsetup']['virtualbox_url']
  checksum node['labsetup']['virtualbox_checksum']
  remote_file_attributes ({
    :path => "#{node['labsetup']['path']}#{node['labsetup']['virtualbox_display_name']}.exe"
    })
  installer_type :custom
  options "-s"
end