#
# Cookbook Name:: timezone
# Recipe:: default
#
# Copyright 2010, Camel Punch Limited
#
# All rights reserved - Do Not Redistribute
#

file "/etc/timezone" do
  content node.timezone.value
end

execute "Configure timezone" do
  command "dpkg-reconfigure -f noninteractive tzdata"
end
