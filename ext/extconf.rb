#!/usr/bin/env ruby
require 'mkmf'
dir_config('lpsolve')
have_library("dl")
have_library("m")
have_library("lpsolve55_pic") || have_library("lpsolve55") ||  missing("lpsolve55")

config_file = File.join(File.dirname(__FILE__), 'config_options.rb')
load config_file if File.exist?(config_file)

create_makefile('lpsolve')
