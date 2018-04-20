require 'beaker-rspec'
require 'beaker/puppet_install_helper'
require 'beaker/module_install_helper'

run_puppet_install_helper

$proj_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))
