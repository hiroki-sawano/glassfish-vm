#
# Cookbook Name:: vm
# Recipe:: default
#
# Copyright (C) 2017 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "java"

group 'glassfish' do
  group_name 'glassfish'
  action :create
end

user 'glassfish' do
   group 'glassfish'
   home '/home/glassfish'
   password "password"
   action :create
end

ark "glassfish" do 
  url "http://download.java.net/glassfish/4.0/release/glassfish-4.0-ml.zip"
  path "/opt"
  owner "glassfish"
  group "glassfish"
  version "4.0"

  action :install
end
