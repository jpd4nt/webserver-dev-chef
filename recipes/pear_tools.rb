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
#php_pear_channel 'pear.php.net' do
#  action :update
#end

# update the main pecl channel
#php_pear_channel 'pecl.php.net' do
#  action :update
#end


