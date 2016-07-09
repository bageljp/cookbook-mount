#
# Cookbook Name:: mount
# Recipe:: default
#
# Copyright 2014, bageljp
#
# All rights reserved - Do Not Redistribute
#

node['mount']['lists'].each do |m|
  directory m['point'] do
    owner "root"
    group "root"
    mode 00755
  end

  mount m['point'] do
    device m['dev']
    fstype m['fs']
    pass 0
    action [ :mount, :enable ]
  end
end

