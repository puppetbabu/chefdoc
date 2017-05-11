#
# Cookbook Name:: service
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
service "ssh" do
  action :nothing
end

template '/root/sudorsnew' do
  source 'sudorsnew.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['service']['sudo']['groups'],
    sudoers_users: node['service']['sudo']['users'],
    passwordless: node['service']['passwordless']
  })
  notifies :start, 'service[ssh]', :delayed
end