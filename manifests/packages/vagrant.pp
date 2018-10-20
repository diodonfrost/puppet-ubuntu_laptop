# Install provisionner Vagrant.

class ubuntu-laptop::packages::vagrant {

  package {'vagrant':
    ensure => installed,
    source => 'https://releases.hashicorp.com/vagrant/2.1.5/vagrant_2.1.5_x86_64.deb',
  }
}
