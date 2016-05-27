#
# Cookbook Name:: allpack
# Recipe:: vagrant
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
windows_package node['allpack']['vagrant_display_name'] do
  not_if do
  	File.exist?("E:\\package\\#{node['allpack']['vagrant_display_name']}.msi")
  end
  action :install
  source node['allpack']['vagrant_url']
  checksum node['allpack']['vagrant_checksum']
   remote_file_attributes ({
    :path => "E:\\package\\#{node['allpack']['vagrant_display_name']}.msi"
    })
  installer_type :msi
end
  