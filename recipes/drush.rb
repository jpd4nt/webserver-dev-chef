#
# Cookbook Name:: webserver-dev-chef
# Recipe:: drush
#
# Copyright 2013, National Theatre
#
# All rights reserved - Do Not Redistribute
#
 
php_pear_channel "pear.drush.org" do
  action :discover
end

php_pear "Console_Table" do
  action :install
  preferred_state "stable"
end

php_pear "drush/drush" do
  action :install
  preferred_state "stable"
end