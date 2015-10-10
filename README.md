# PuppetConf 2015 Puppet + DSC Talk

PuppetConf 2015 DSC Demo Samples

### Assumptions

You have a Windows 2008R2+ machine with the following installed:

* [Puppet Agent x64 latest](https://downloads.puppetlabs.com/windows/puppet-x64-latest.msi)
* [WMF 5.0 Production Preview](http://www.microsoft.com/en-us/download/details.aspx?id=48729)
  - Note: Windows 10 ships with an older version of WMF 5 than the production preview.  That version cannot currently be upgraded, and requires the LCM `RefreshMode` to be set with Puppet prior to using these manifests.  See [these details](https://github.com/puppetlabs/puppetlabs-dsc#optionally-configure-the-dsc-lcm-refreshmode) for info on setting the `RefreshMode`
* The `puppetlabs-dsc` module should be installed
  - These examples were written against the current latest (not released yet to Forge as of 10-9-2015) code for the module.  That can be installed by doing a `git clone https://github.com/puppetlabs/puppetlabs-dsc C:\programdata\puppetlabs\code\environments\production\modules\dsc`
  - Once a newer version of the module is released, alternatively use `puppet module install puppetlabs-dsc` from the command prompt started by the start menu icon `Start Command Prompt with Puppet` (this simply ensures Puppet is in the `PATH`)

### Running Samples

* Launch a Puppet command prompt with `Start Command Prompt with Puppet`
* Launch / run each sample in order to demonstrate a different concept with `puppet apply .\00-service.pp` for instance.
* Each sample has some notes about how to modify the manifest to demonstrate different ideas.

### In The Future

* Keep an eye in two places for additional demos in the future:
  * [Puppet Blog](https://puppetlabs.com/blog) - expect future DSC content / examples published here
  * [Puppet Webinars](https://puppetlabs.com/resources/webinars) - expect another webinar here with some more advanced DSC usage coming soon!

### Additional Resources

* [WMF 5.0 Production Preview](http://www.microsoft.com/en-us/download/details.aspx?id=48729)
* [puppetlabs-dsc module source code](https://github.com/puppetlabs/puppetlabs-dsc)
* [DSC Resources on GitHub](https://github.com/PowerShell/DscResources) - this is what we vendor
* [Technet DSC Docs](https://technet.microsoft.com/en-us/library/dn249912.aspx)
* James Pograns [Learning PowerShell DSC book](http://bit.ly/learndsc) - James is a member of the team here at Puppet working on this integration
