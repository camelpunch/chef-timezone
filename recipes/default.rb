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
