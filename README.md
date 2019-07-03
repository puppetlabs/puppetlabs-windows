# Puppet on Windows

[commercial support]: http://puppet.com/services/customer-support

[searching for windows]: https://forge.puppet.com/modules?utf-8=✓&sort=rank&q=windows

[puppetlabs-acl]: https://forge.puppet.com/puppetlabs/acl
[puppetlabs-chocolatey]: https://forge.puppet.com/puppetlabs/chocolatey
[puppetlabs-dsc]: https://forge.puppet.com/puppetlabs/dsc
[puppetlabs-powershell]: https://forge.puppet.com/puppetlabs/powershell
[puppetlabs-reboot]: https://forge.puppet.com/puppetlabs/reboot
[puppetlabs-registry]: https://forge.puppet.com/puppetlabs/registry
[puppetlabs-wsus_client]: https://forge.puppet.com/puppetlabs/wsus_client

[puppet-download_file]: https://forge.puppet.com/puppet/download_file
[puppet-iis]: https://forge.puppet.com/puppet/iis
[puppet-windows_env]: https://forge.puppet.com/puppet/windows_env
[puppet-windowsfeature]: https://forge.puppet.com/puppet/windowsfeature

[puppetlabs-sqlserver]: https://forge.puppet.com/puppetlabs/sqlserver
[puppet-windows_eventlog]: https://forge.puppet.com/puppet/windows_eventlog
[puppet-sslcertificate]: https://forge.puppet.com/puppet/sslcertificate
[counsyl-windows]: https://forge.puppet.com/counsyl/windows
[jriviere-windows_ad]: https://forge.puppet.com/jriviere/windows_ad
[trlinkin-domain_membership]: https://forge.puppet.com/trlinkin/domain_membership

## Overview

This module acts as a pack of the Puppet Forge's best Windows content. Installing puppetlabs-windows will install a variety of great modules from a diverse group of module authors, including Puppet. Many are contributed by our community, reviewed and recommended by Puppet as [Puppet Approved](https://forge.puppet.com/approved) modules. Several core modules are provided through our [Puppet Supported](https://forge.puppet.com/supported) program.

## Setup

This guide assumes that you have downloaded and installed Puppet Enterprise on your Windows server and that you've connected its Puppet agent to a Puppet Enterprise master.
- [Learn more](https://docs.puppet.com/pe/latest/install_windows.html) on installing the Puppet Enterprise agent onto a Windows server.
- Don't have a PE master? Try the [Learning Puppet VM](https://docs.puppet.com/learning/introduction.html#get-the-free-vm) for evaluation purposes.

Once installed, start by installing the windows module pack onto your PE master (like the Learning VM) by running `puppet module install puppetlabs-windows` from the command-line. You should see the Puppet module tool installing multiple modules from the Puppet Forge. [Learn more](https://docs.puppet.com/puppet/latest/reference/modules_installing.html#installing-from-the-puppet-forge) about installing modules.

Now, you can start using individual modules from this pack to solve a problem. To do this, you'll want to browse the documentation for an individual module listed below. Equipped with details on interacting with individual module capabilities, you may want to [write your own module](https://docs.puppet.com/pe/latest/quick_writing_windows.html) or [directly assign work](https://docs.puppet.com/pe/latest/console_classes_groups.html) to your Windows machine from the Puppet Enterprise console.

## The Puppet on Windows Pack

These are the modules available in the puppetlabs-windows pack. Full documentation for each module can be found by following links to individual module pages. By installing puppetlabs-windows, you will install recommended versions of the entire set of Puppet modules.

Take note that only the modules by Puppet are supported with Puppet Enterprise. The rest have been reviewed and recommended by Puppet but are not eligible for [commercial support].

Use Puppet on Windows to:

- Enforce fine-grained **access control** permissions using [puppetlabs-acl].
- Manage the installation of **software/packages** with [puppetlabs-chocolatey].
- Manage **Windows PowerShell DSC** (Desired State Configuration) resources using [puppetlabs-dsc].
- Interact with **PowerShell** through the Puppet DSL with [puppetlabs-powershell].
- **Reboot** Windows as part of management as necessary through [puppetlabs-reboot].
- Manage **registry keys and values** with [puppetlabs-registry].
- Specify **WSUS client configuration** (Windows Server Update Service) with [puppetlabs-wsus_client].
- **Download files** via [puppet-download_file].
- Build **IIS sites** and **virtual applications** with [puppet-iis].
- Create, edit, and remove **environment variables** with ease with [puppet-windows_env].
- Add/remove **Windows features** with [puppet-windowsfeature].


You can also create and manage Microsoft SQL including databases, users and grants with the [puppetlabs-sqlserver] module (for Puppet Enterprise customers, installed separately).

## More from the Puppet Forge

You can find even more great modules by [searching for windows]. Here are a few examples from the Puppet community.

- [puppet-windows_eventlog]
- [puppet-sslcertificate]
- [counsyl-windows]
- [jriviere-windows_ad]
- [trlinkin-domain_membership]

These modules are not part of this pack nor are they Puppet Approved or Puppet Supported.
But, every Forge module now offers [quality and community ratings](http://puppet.com/blog/new-ratings-puppet-forge-modules) to help you choose the best module for your need.

## Contributing

If you would like to contribute to this module, please follow the rules in the [CONTRIBUTING.md](https://github.com/puppetlabs/puppetlabs-windows/blob/master/CONTRIBUTING.md). For more information, see our [module contribution guide.](https://puppet.com/docs/puppet/latest/contributing.html)