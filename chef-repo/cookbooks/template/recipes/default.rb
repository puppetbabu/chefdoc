#
# Cookbook Name:: template
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template '/root/sudors' do
  source 'sudors.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['template']['sudo']['groups'],
    sudoers_users: node['template']['sudo']['users'],
    passwordless: node['template']['passwordless']
  })
end