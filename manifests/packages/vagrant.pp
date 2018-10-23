# Install provisionner Vagrant.

class ubuntu_laptop::packages::vagrant {

  # Install Vagrant
  package {'vagrant':
    ensure => installed,
    source => 'https://releases.hashicorp.com/vagrant/2.1.5/vagrant_2.1.5_x86_64.deb',
  }
}
