#
# Cookbook Name:: allpack
# Recipe:: vagrant
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
windows_package node['labsetup_windows']['vagrant_display_name'] do
  not_if do
  	File.exist?("#{node['labsetup_windows']['path']}#{node['labsetup_windows']['vagrant_display_name']}.msi")
  end
  action :install
  source node['labsetup_windows']['vagrant_url']
  checksum node['labsetup_windows']['vagrant_checksum']
   remote_file_attributes ({
    :path => "#{node['labsetup_windows']['path']}#{node['labsetup_windows']['vagrant_display_name']}.msi"
    })
  installer_type :msi
end
  