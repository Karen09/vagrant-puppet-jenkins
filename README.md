# Puppet-Jenkins-CentOS7

[![Jexia](http://v1.jexia.com/wp-content/uploads/2016/01/logofooter2_dark.png)](http://jexia.com)

To get started, perform a git clone on. Make sure you have [Vagrant installed](https://docs.vagrantup.com/v2/installation/).

```
git clone https://github.com/Karen09/vagrant-puppet-jenkins.git
cd vagrant-puppet-jenkins/
vagrant up --provider virtualbox
```

Once vagrant is done provisioning the VMs run `vagrant status` to confirm all instances are running:

```
Visit the web UI by browsing to http://10.7.0.44:8080
```

When you're done, you can shut down the cluster using
```
vagrant destroy -f

# If you want to change any of the configuration/scripts run
vagrant provision
```