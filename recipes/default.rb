#
# Cookbook Name:: chef_handler_orchestrate_io
# Recipe:: default
#
# Copyright 2014, HiganWorks LLC.
#
#

include_recipe "#{cookbook_name}::chef_gem"

if node[:chef_handler_orchestrate_io][:enable_report]
  Chef::Config[:report_handlers] << Chef::Handler::OrchestrateIO.new(:apikey => node[:chef_handler_orchestrate_io][:apikey], :collection => node[:chef_handler_orchestrate_io][:collection])
end

if node[:chef_handler_orchestrate_io][:enable_exception]
  Chef::Config[:exception_handlers] << Chef::Handler::OrchestrateIO.new(:apikey => node[:chef_handler_orchestrate_io], :collection => node[:chef_handler_orchestrate_io][:collection])
end
