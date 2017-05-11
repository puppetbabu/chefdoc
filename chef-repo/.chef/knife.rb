# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "cloudbabunew"
client_key               "#{current_dir}/cloudbabunew.pem"
chef_server_url          "https://api.chef.io/organizations/cloudbabu"
cookbook_path            ["#{current_dir}/../cookbooks"]
#https_proxy "https://proxyuser:proxypwd@proxy.server.com:80"