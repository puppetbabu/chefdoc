#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template '/root/server.xml' do
  source 'server.xml.erb'
  owner 'root'
  group 'root'
  mode '0755' 
  variables({
    port: node['apache']['port'],
    connectionTimeout: node['apache']['connectionTimeout'],
    redirectPort: node['apache']['redirectPort']
  })
end