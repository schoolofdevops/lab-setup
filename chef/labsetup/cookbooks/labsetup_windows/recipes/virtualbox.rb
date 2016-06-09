#
# Cookbook Name:: allpack
# Recipe:: virtualbox
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
windows_package node['labsetup_windows']['virtualbox_display_name'] do
   not_if do
  	File.exist?("#{node['labsetup_windows']['path']}#{node['labsetup_windows']['virtualbox_display_name']}.exe")
  end
  action :install
  source node['labsetup_windows']['virtualbox_url']
  checksum node['labsetup_windows']['virtualbox_checksum']
  remote_file_attributes ({
    :path => "#{node['labsetup_windows']['path']}#{node['labsetup_windows']['virtualbox_display_name']}.exe"
    })
  installer_type :custom
  options "-s"
end