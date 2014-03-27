#
# Cookbook Name:: git-config
# Recipe:: git_to_http_protocol
#
# Copyright 2014, NREL
#
# All rights reserved - Do Not Redistribute
#

execute 'git config --system url."https://github".insteadOf git://github' do
  not_if do
    `git config --system --get url."https://".insteadOf`.strip == 'git://'
  end
end
