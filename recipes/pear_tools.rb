#
# Cookbook Name:: webserver-dev-chef
# Recipe:: pear_tools
#
# Copyright 2013, National Theatre
#
# All rights reserved - Do Not Redistribute
#

execute 'autodiscover' do
  command 'pear config-set auto_discover 1'
  action :run
end

# update the main pear channel
php_pear_channel 'pear.php.net' do
  action :update
end

# update the main pecl channel
php_pear_channel 'pecl.php.net' do
  action :update
end
 
phpunit = php_pear_channel "pear.phpunit.de" do
  action :discover
end

php_pear_channel 'pear.phpunit.de' do
  action :update
end

php_pear "phpcpd" do
  action :install
  preferred_state "stable"
  channel phpunit.channel_name
end

qatools = php_pear_channel "pear.phpqatools.org" do
  action :discover
end

php_pear_channel 'pear.phpqatools.org' do
  action :update
end

php_pear "PHP_CodeBrowser" do
  action :install
  preferred_state "stable"
  options "--alldeps"
  channel qatools.channel_name
end 
