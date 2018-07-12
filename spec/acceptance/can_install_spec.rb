require 'spec_helper_acceptance'
require 'fileutils'

# rubocop:disable RSpec/InstanceVariable

def project_root
  File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
end

describe 'Windows module can be installed' do
  before(:all) do
    pkg_dir = File.join(project_root, 'pkg')
    # Clear the module packaging directory
    FileUtils.rm_rf(pkg_dir)

    # Build the Windows module tarball
    Dir.chdir(project_root) do
      `puppet module build`
    end

    # Get the name of the new tarball
    @module_tarball = Dir.glob(File.join(pkg_dir, '*.tar.gz')).first
    raise 'Failed to build the Windows module locally' if @module_tarball.nil?
  end

  it 'can install with dependencies satisfied' do
    hosts.each do |host|
      tmp_path = host['platform'].include?('windows') ? 'C:/module.tar.gz' : '/tmp/module.tar.gz'

      # Copy the source module for building
      scp_to host, @module_tarball, tmp_path

      # Install the module
      on(host, puppet("module install #{tmp_path}"))

      # Make sure it's installed
      on(host, puppet('module list')) do |result|
        expect(result.stdout).to match(%r{puppetlabs-windows})
      end

      # Make sure there were no dependency issues
      on(host, puppet('module list')) do |result|
        expect(result.stderr).not_to match(%r{Missing dependency})
      end
    end
  end
end
