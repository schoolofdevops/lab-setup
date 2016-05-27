#
# Cookbook Name:: allpack
# Recipe:: atom
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
windows_package node['allpack']['atom_display_name'] do
not_if do
  	File.exist?("E:\\package\\#{node['allpack']['atom_display_name']}.exe")
  end
action :install
source node['allpack']['atom_url']
remote_file_attributes ({
    :path => "E:\\package\\#{node['allpack']['atom_display_name']}.exe"
    })
installer_type :inno
end

