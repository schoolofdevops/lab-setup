#
# Cookbook Name:: allpack
# Recipe:: virtualbox
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
windows_package node['allpack']['virtualbox_display_name'] do
   not_if do
  	File.exist?("E:\\package\\#{node['allpack']['virtualbox_display_name']}.exe")
  end
  action :install
  source node['allpack']['virtualbox_url']
  checksum node['allpack']['virtualbox_checksum']
  remote_file_attributes ({
    :path => "E:\\package\\#{node['allpack']['virtualbox_display_name']}.exe"
    })
  installer_type :custom
  options "-s"
end