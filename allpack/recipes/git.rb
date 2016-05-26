#
# Cookbook Name:: allpack
# Recipe:: git
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
windows_package node['allpack']['git_display_name'] do
  not_if do
  	File.exist?("E:\\package\\#{node['allpack']['git_display_name']}.exe")
  end
  action :install
  source node['allpack']['git_url']
  checksum node['allpack']['git_checksum']
   remote_file_attributes ({
    :path => "E:\\package\\#{node['allpack']['git_display_name']}.exe"
    })
   installer_type :inno
end
