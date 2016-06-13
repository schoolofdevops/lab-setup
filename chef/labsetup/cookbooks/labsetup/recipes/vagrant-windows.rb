#
# Cookbook Name:: labsetup
# Recipe:: vagrant-windows
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
windows_package node['labsetup']['vagrant_display_name'] do
  not_if do
  	File.exist?("#{node['labsetup']['path']}#{node['labsetup']['vagrant_display_name']}.msi")
  end
  action :install
  source node['labsetup']['vagrant_url']
  checksum node['labsetup']['vagrant_checksum']
   remote_file_attributes ({
    :path => "#{node['labsetup']['path']}#{node['labsetup']['vagrant_display_name']}.msi"
    })
  installer_type :msi
end
  