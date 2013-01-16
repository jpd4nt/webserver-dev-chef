#
# Cookbook Name:: webserver-dev-chef
# Recipe:: pear_tools
#
# Copyright 2013, National Theatre
#
# All rights reserved - Do Not Redistribute
#
 
php_pear_channel "pear.phpunit.de" do
  action :discover
end

php_pear "phpunit/phpcpd" do
  action :install
  preferred_state "stable"
end

php_pear_channel "pear.phpqatools.org" do
  action :discover
end

php_pear "phpqatools/PHP_CodeBrowser" do
  action :install
  preferred_state "stable"
  options "--alldeps"
end 
