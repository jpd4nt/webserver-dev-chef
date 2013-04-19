#
# Cookbook Name:: webserver-dev-chef
# Recipe:: drush
#
# Copyright 2013, National Theatre
#
# All rights reserved - Do Not Redistribute
#
 
drush = php_pear_channel "pear.drush.org" do
  action :discover
end

php_pear_channel 'pear.drush.org' do
  action :update
end

php_pear "Console_Table" do
  action :install
  preferred_state "stable"
end

php_pear "drush" do
  version "5.9.0"
  action :install
  preferred_state "stable"
  channel drush.channel_name
end