#
# Cookbook Name:: webserver-dev-chef
# Recipe:: xdebug
#
# Copyright 2013, National Theatre
#
# All rights reserved - Do Not Redistribute
# 

php_pear "xdebug" do
    version         "2.2.1"
    action          :install
    preferred_state "stable"
    zend_extensions ['xdebug.so']
end 
