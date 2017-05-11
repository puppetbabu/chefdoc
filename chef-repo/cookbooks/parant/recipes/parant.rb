Chef::Log.info("i am in prarant")
cookbook_file node['child']['file'] do
  source 'file'
  owner 'root'
  group 'root'
  mode '0755f	'
  action :create
end