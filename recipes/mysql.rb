#
# Cookbook Name:: webserver-dev-chef
# Recipe:: mysql
#
# Copyright 2013, National Theatre
#
# All rights reserved - Do Not Redistribute
#
include_recipe "mysql::ruby"

mysql_connection_info = {:host => "localhost", :username => 'root', :password => node['mysql']['server_root_password']}

mysql_database 'drupal_test' do
  connection mysql_connection_info
  action :create
end

mysql_database_user 'drupal' do
  connection mysql_connection_info
  password node['webserver-dev-chef']['drupal_pw']
  action :create
  database_name 'drupal_test'
end